#include <signal.h>
#include <stdio.h>
#include <stdlib.h>

/* Win32 macros LoadMenu -> LoadMenuA, colliding with Subroutines.h's LoadMenu.
 * NOUSER/NOGDI drop those declarations; we only need threads and the title bar. */
#define WIN32_LEAN_AND_MEAN     /* NOUSER leaves ole2.h without LPMSG */
#define NOGDI
#define NOUSER
#define NOMINMAX
#include <windows.h>

#undef TRUE
#undef FALSE

#include "Controller.h"
#include "EEProm.h"
#include "Flash.h"
#include "Interrupts.h"
#include "mc9s12a128.h"
#include "Subroutines.h"
#include "pc_side.h"
#include "pc_log.h"

extern char State;
extern unsigned cam_add;
extern struct menu_var NullVar;

static volatile sig_atomic_t running = 1;
static volatile unsigned long g_loop_count = 0;   /* completed doevents() passes */

static void stop_host(int sig)
{
    (void)sig;
    running = 0;
}

static const char *state_name(int state);         /* defined below */

/* Host heartbeat, reported through the CONSOLE TITLE BAR (a kernel32 call, not
 * stdout) so it keeps updating when the terminal has blocked our output. That
 * separates the two freeze modes: 'loop=' climbing while the log is frozen means
 * the firmware is alive and only the terminal is stuck; 'loop=' stopping too
 * means doevents() is genuinely hung, and the State in the title says where.
 * RTI rate < 1.0 means every timed operation runs long by 1/rate. */
static DWORD WINAPI loop_watchdog_fn(void *arg)
{
    unsigned long last = 0;
    int    stalled_secs = 0;
    char   title[220];
    unsigned int last_ticks = 0, last_skips = 0;
    DWORD  last_ms = GetTickCount();
    (void)arg;

    while (running) {
        unsigned int ticks, skips;
        DWORD  now;
        double rate, real_hz;

        Sleep(1000);
        stalled_secs = (g_loop_count == last) ? stalled_secs + 1 : 0;

        ticks   = pc_side_rti_ticks();
        skips   = pc_side_rti_skipped();
        now     = GetTickCount();
        real_hz = (now > last_ms)
                ? (double)(ticks - last_ticks) * 1000.0 / (double)(now - last_ms)
                : 0.0;
        rate    = real_hz / (double)RTI_One_Sec;

        snprintf(title, sizeof title,
                 "INT-032 C48 Cleaner host | loop=%lu | State=%d %s | RTI %.0fHz (%.2fx) skip=%u%s",
                 g_loop_count, (int)State, state_name((int)State),
                 real_hz, rate, skips - last_skips,
                 stalled_secs ? " | *** STALLED ***" : "");
        SetConsoleTitleA(title);

        /* Say it once, loudly. The trace lines just before it identify where. */
        if (stalled_secs == 1)
            LOG_PRINTF(("[STALL] doevents() has not returned for 1s (State=%d %s)\n",
                        (int)State, state_name((int)State)));

        /* One stall with the fastest COP rate armed is a deliberate reset, not a
         * hang: ResetProc() spins waiting for a watchdog the host does not have.
         * CR==1 is unique to that call, so a genuine hang still just logs above. */
        if (stalled_secs >= 1 && (COPCTL & 0x07) == 1) {
            LOG_PRINTF(("[host] ResetProc spin detected -> resetting unit\n"));
            pc_side_reset();                  /* relaunches us; does not return */
        }
        LOG_PRINTF(("[rti ] %.0f tick/s (need %.0f, %.2fx real-time), %u skipped while masked\n",
                    real_hz, (double)RTI_One_Sec, rate, skips - last_skips));

        last       = g_loop_count;
        last_ticks = ticks;
        last_skips = skips;
        last_ms    = now;
    }
    return 0;
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
    pc_log_init();              /* async log writer; must precede any LOG_PRINTF */

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
    rti_thread_start_realtime(1 /* ms per wakeup */);
    printf("[host] RTI simulation started (%d ticks/second)\n", (int)RTI_One_Sec);
    CreateThread(NULL, 0, loop_watchdog_fn, NULL, 0, NULL);   /* stall detector */
    InitCANopen();
    printf("[host] CANopen initialized\n");

    // kick us out of a menu if we're restarting
    Send_Menu_Status (0x00);

#ifndef SKIP_EEPROM_LOAD
    Load_Camera_Add();
    Load_TrigCamera_Add();
    Load_Serial_Num();
    Load_Variables();
#endif

    /* HDSDSetting does not exist in the Cleaner yet - restore this when the HD
     * trig handshake is ported over from the coater.
     * HDSDSetting.value = 2.0f; */

    /* Load_Camera_Add() is intentionally skipped on the PC because it reads
     * absolute EEPROM addresses. A zero-initialized camera address can make
     * the cleaner's address comparisons match an equally empty process image,
     * creating false camera traffic. Require a real 0x3333 response instead. */
    cam_add = 0x2731;
    printf("[host] EEPROM skipped: camera address seeded to 0x%04X\n", cam_add);

    InitXmit();
    printf("[host] running firmware main loop\n");

    while (running) {
        doevents();
        loops++;
        g_loop_count = loops;   /* proof-of-life for loop_watchdog_fn */
        log_state_transition();
    }

    printf("\n[host] shutting down after %lu loops\n", loops);
    rti_thread_stop();
    pc_side_can_shutdown();
    pc_log_shutdown();          /* drain the log tail, then stop the writer thread */
    return 0;
}
