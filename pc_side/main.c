#include <signal.h>
#include <stdio.h>
#include <stdlib.h>

#include "Controller.h"
#include "EEProm.h"
#include "Flash.h"
#include "Interrupts.h"
#include "mc9s12a128.h"
#include "Subroutines.h"
#include "pc_side.h"

extern char State;
extern unsigned cam_add;
extern struct menu_var NullVar;

static volatile sig_atomic_t running = 1;

static void stop_host(int sig)
{
    (void)sig;
    running = 0;
}

static const char *state_name(int state)
{
    switch (state) {
    case TrigState:             return "TrigState";
    case TrigRetractLA:         return "TrigRetractLA";
    case TrigState2:            return "TrigState2";
    case WaitingForMoving:      return "WaitingForMoving";
    case LineUpInProgress:      return "LineUpInProgress";
    case LineUpComplete:        return "LineUpComplete";
    case StartSealState:        return "StartSealState";
    case SealWaitState:         return "SealWaitState";
    case StartExtendState:      return "StartExtendState";
    case StartCleanState:       return "StartCleanState";
    case RampUpState:           return "RampUpState";
    case StartCenterCleanState: return "StartCenterCleanState";
    case CenterCleanState:      return "CenterCleanState";
    case StartFullCleanState:   return "StartFullCleanState";
    case FullCleanState:        return "FullCleanState";
    case ReverseHdState:        return "ReverseHdState";
    case StopCleanState:        return "StopCleanState";
    case CleanComplete:         return "CleanComplete";
    case StartFirstVac:         return "StartFirstVac";
    case FirstVacMoving:        return "FirstVacMoving";
    case FirstVacInProgress:    return "FirstVacInProgress";
    case StartSecondVac:        return "StartSecondVac";
    case SecondVacMoving:       return "SecondVacMoving";
    case SecondVacInProgress:   return "SecondVacInProgress";
    case StartThirdVac:         return "StartThirdVac";
    case ThirdVacMoving:        return "ThirdVacMoving";
    case ThirdVacInProgress:    return "ThirdVacInProgress";
    case StartFourthVac:        return "StartFourthVac";
    case FourthVacMoving:       return "FourthVacMoving";
    case FourthVacInProgress:   return "FourthVacInProgress";
    case StartFifthVac:         return "StartFifthVac";
    case FifthVacMoving:        return "FifthVacMoving";
    case FifthVacInProgress:    return "FifthVacInProgress";
    case StopState:             return "StopState";
    case FinishState:           return "FinishState";
    case ErrorState:            return "ErrorState";
    default:                    return "(unnamed)";
    }
}

static void log_state_transition(void)
{
    static int previous = -1;
    int current = (int)State;
    if (current != previous) {
        if (previous < 0)
            printf("[seq ] State = %d %s\n", current, state_name(current));
        else
            printf("[seq ] State %d %s -> %d %s\n",
                   previous, state_name(previous), current, state_name(current));
        previous = current;
    }
}

int main(int argc, char **argv)
{
    unsigned short receive_port = 20020;
    unsigned short send_port = 20100;
    unsigned long loops = 0;

    if (argc > 1) receive_port = (unsigned short)atoi(argv[1]);
    if (argc > 2) send_port = (unsigned short)atoi(argv[2]);

    signal(SIGINT, stop_host);
    setvbuf(stdout, NULL, _IONBF, 0);

    /* NullVar is the placeholder for menu rows that have no value. Its
     * zero-initialized str_enum pointer is readable on the HCS12 (address 0 is
     * register space) but faults when getstrval() calls strlen(NULL) on a PC.
     * An empty string preserves the intended blank-row behavior. */
    NullVar.str_enum = "";

    printf("INT-032 C48 Cleaner Interface - PC host\n");
    printf("UDP CAN receive :%u, send :%u (Ctrl+C to quit)\n",
           (unsigned)receive_port, (unsigned)send_port);

    InitPorts();
    InitInterrupts();
    InitSCI();
    EEInit();
    FlashInit();
    INTR_ON();

    /* Reset_Max33011(), called by InitCANopen(), waits on Timer1. Start the
     * simulated RTI before CANopen initialization so that target-style wait
     * completes on the host. */
    if (pc_side_can_init(receive_port, send_port) != 0) {
        fprintf(stderr, "Unable to start UDP CAN transport\n");
        return 1;
    }
    printf("[host] UDP CAN transport started\n");
    if (pc_side_rti_start() != 0) {
        fprintf(stderr, "Unable to start RTI simulation\n");
        pc_side_can_shutdown();
        return 1;
    }
    printf("[host] RTI simulation started (%d ticks/second)\n", (int)RTI_One_Sec);
    if (pc_side_reset_watch_start() != 0)
        fprintf(stderr, "[host] reset watch not started: an NMT reset will hang the unit\n");
    InitCANopen();
    printf("[host] CANopen initialized\n");

#ifndef SKIP_EEPROM_LOAD
    Load_Camera_Add();
    Load_TrigCamera_Add();
    Load_Serial_Num();
    Load_Variables();
#endif

    /* Load_Camera_Add() is intentionally skipped on the PC because it reads
     * absolute EEPROM addresses. A zero-initialized camera address can make
     * the cleaner's address comparisons match an equally empty process image,
     * creating false camera traffic. Require a real 0x3333 response instead. */
    cam_add = 0x3333;
    printf("[host] EEPROM skipped: camera address seeded to 0x%04X\n", cam_add);

    InitXmit();
    printf("[host] running firmware main loop\n");

    while (running) {
        doevents();
        loops++;
        log_state_transition();
    }

    printf("\n[host] shutting down after %lu loops\n", loops);
    pc_side_rti_stop();
    pc_side_can_shutdown();
    return 0;
}
