#include <signal.h>
#include <stdio.h>
#include <stdlib.h>

#include "Controller.h"
#include "EEProm.h"
#include "Flash.h"
#include "mc9s12a128.h"
#include "Subroutines.h"
#include "pc_side.h"

extern char State;

static volatile sig_atomic_t running = 1;

static void stop_host(int sig)
{
    (void)sig;
    running = 0;
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
    if (pc_side_rti_start() != 0) {
        fprintf(stderr, "Unable to start RTI simulation\n");
        pc_side_can_shutdown();
        return 1;
    }
    InitCANopen();

#ifndef SKIP_EEPROM_LOAD
    Load_Camera_Add();
    Load_TrigCamera_Add();
    Load_Serial_Num();
    Load_Variables();
#endif
    InitXmit();

    while (running) {
        doevents();
        loops++;
        if (loops == 1 || (loops % 1000000UL) == 0)
            printf("[host] loops=%lu state=%d\n", loops, (int)State);
    }

    pc_side_rti_stop();
    pc_side_can_shutdown();
    return 0;
}
