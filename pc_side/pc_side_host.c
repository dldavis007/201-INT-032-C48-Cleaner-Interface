#include <errno.h>
#include <stdio.h>
#include <string.h>
#include <time.h>

#ifdef _WIN32
/* Keep the broad Windows API out of the firmware namespace. In particular,
 * winuser.h maps LoadMenu to LoadMenuA, colliding with the cleaner firmware's
 * own LoadMenu() function. */
#define WIN32_LEAN_AND_MEAN
#define NOGDI
#define NOUSER
#define NOMINMAX
#include <winsock2.h>
#include <windows.h>
typedef SOCKET socket_t;
typedef HANDLE thread_t;
#define CLOSESOCKET closesocket
#else
#include <arpa/inet.h>
#include <fcntl.h>
#include <pthread.h>
#include <sys/socket.h>
#include <unistd.h>
typedef int socket_t;
typedef pthread_t thread_t;
#define INVALID_SOCKET (-1)
#define CLOSESOCKET close
#endif

/* Windows defines these before the MicroCANopen headers do. The firmware
 * definitions must win so its source is compiled with target semantics. */
#ifdef TRUE
#undef TRUE
#endif
#ifdef FALSE
#undef FALSE
#endif

#include "nodecfg.h"
#include "mco.h"
#include "mcohw.h"
#include "Subroutines.h"
#include "Interrupts.h"
#include "pc_side.h"

void RTI_Int_Handler(void);

unsigned char sfr_regs[0x400];
volatile int g_intr_masked = 1;

void EEInit(void) { }
void EEWrite(int n, char data[], int *address)
{ (void)n; (void)data; (void)address; }
void FlashInit(void) { }
void FlashWrite(int n, char data[], int *address)
{ (void)n; (void)data; (void)address; }

UNSIGNED8 MCOHW_Init(UNSIGNED16 baud) { (void)baud; return 1; }
UNSIGNED8 MCOHW_SetCANFilter(UNSIGNED16 id) { (void)id; return 1; }
UNSIGNED8 setFilters[8] = {0x80,0x80,0x80,0x80,0x80,0x80,0x80,0x80};
void MCOHW_TimerISR(void) { }

static unsigned long milliseconds(void)
{
#ifdef _WIN32
    return (unsigned long)GetTickCount();
#else
    struct timespec ts;
    clock_gettime(CLOCK_MONOTONIC, &ts);
    return (unsigned long)(ts.tv_sec * 1000UL + ts.tv_nsec / 1000000UL);
#endif
}

UNSIGNED16 MCOHW_GetTime(void) { return (UNSIGNED16)(milliseconds() & 0xffff); }
UNSIGNED8 MCOHW_IsTimeExpired(UNSIGNED16 timestamp)
{
    UNSIGNED16 now = MCOHW_GetTime();
    timestamp++;
    if (now > timestamp) return (UNSIGNED8)((now - timestamp) < 0x8000);
    return (UNSIGNED8)((timestamp - now) > 0x8000);
}

#define RX_COUNT 128
static socket_t can_socket = INVALID_SOCKET;
static struct sockaddr_in can_peer;
static unsigned short can_receive_port, can_send_port;  /* for a reset relaunch */
static CAN_MSG rx_ring[RX_COUNT];
static volatile unsigned rx_head, rx_tail;
static volatile int can_running;
static volatile int rti_running;
static thread_t can_thread, rti_thread;
#ifdef _WIN32
static CRITICAL_SECTION rx_lock;
#define LOCK() EnterCriticalSection(&rx_lock)
#define UNLOCK() LeaveCriticalSection(&rx_lock)
#else
static pthread_mutex_t rx_lock = PTHREAD_MUTEX_INITIALIZER;
#define LOCK() pthread_mutex_lock(&rx_lock)
#define UNLOCK() pthread_mutex_unlock(&rx_lock)
#endif

static void sleep_ms(unsigned ms)
{
#ifdef _WIN32
    Sleep(ms);
#else
    struct timespec ts;
    ts.tv_sec = ms / 1000;
    ts.tv_nsec = (long)(ms % 1000) * 1000000L;
    nanosleep(&ts, NULL);
#endif
}

static void can_log(const char *direction, const CAN_MSG *msg)
{
    int i;

#ifdef _WIN32
    SYSTEMTIME now;

    GetLocalTime(&now);

    printf("[%02u:%02u:%02u.%03u] [CAN %s] 0x%03X [%u]",
           (unsigned)now.wHour,
           (unsigned)now.wMinute,
           (unsigned)now.wSecond,
           (unsigned)now.wMilliseconds,
           direction,
           (unsigned)msg->ID,
           (unsigned)msg->LEN);
#else
    struct timespec now;
    struct tm local;

    clock_gettime(CLOCK_REALTIME, &now);
    localtime_r(&now.tv_sec, &local);

    printf("[%02d:%02d:%02d.%03ld] [CAN %s] 0x%03X [%u]",
           local.tm_hour,
           local.tm_min,
           local.tm_sec,
           now.tv_nsec / 1000000L,
           direction,
           (unsigned)msg->ID,
           (unsigned)msg->LEN);
#endif

    for (i = 0; i < msg->LEN && i < 8; i++)
        printf(" %02X", (unsigned)msg->BUF[i]);

    printf("\n");
}

#ifdef _WIN32
static DWORD WINAPI can_receive(void *unused)
#else
static void *can_receive(void *unused)
#endif
{
    unsigned char packet[16];
    (void)unused;
    while (can_running) {
        int n = (int)recvfrom(can_socket, (char *)packet, sizeof packet, 0, NULL, NULL);
        if (n >= 3) {
            CAN_MSG msg;
            unsigned next;
            msg.ID = (UNSIGNED16)(packet[0] | ((UNSIGNED16)packet[1] << 8));
            msg.LEN = packet[2] > 8 ? 8 : packet[2];
            if (n < 3 + msg.LEN) continue;
            memcpy(msg.BUF, packet + 3, msg.LEN);
            can_log("RX", &msg);
            LOCK();
            next = (rx_head + 1) % RX_COUNT;
            if (next != rx_tail) { rx_ring[rx_head] = msg; rx_head = next; }
            UNLOCK();
        } else {
            sleep_ms(1);
        }
    }
    return 0;
}

UNSIGNED8 MCOHW_PullMessage(CAN_MSG *msg)
{
    UNSIGNED8 result = 0;
    LOCK();
    if (rx_tail != rx_head) {
        *msg = rx_ring[rx_tail];
        rx_tail = (rx_tail + 1) % RX_COUNT;
        result = 1;
    }
    UNLOCK();
    return result;
}

UNSIGNED8 MCOHW_PushMessage(CAN_MSG *msg)
{
    unsigned char packet[11];
    int length = msg->LEN > 8 ? 8 : msg->LEN;
    packet[0] = (unsigned char)(msg->ID & 0xff);
    packet[1] = (unsigned char)(msg->ID >> 8);
    packet[2] = (unsigned char)length;
    memcpy(packet + 3, msg->BUF, (size_t)length);
    can_log("TX", msg);
    return sendto(can_socket, (const char *)packet, length + 3, 0,
                  (struct sockaddr *)&can_peer, sizeof can_peer) >= 0;
}

int pc_side_can_init(unsigned short receive_port, unsigned short send_port)
{
    struct sockaddr_in local;
#ifdef _WIN32
    WSADATA wsa;
    u_long nonblocking = 1;
    if (WSAStartup(MAKEWORD(2,2), &wsa) != 0) return 1;
    InitializeCriticalSection(&rx_lock);
#endif
    can_receive_port = receive_port;
    can_send_port = send_port;
    can_socket = socket(AF_INET, SOCK_DGRAM, IPPROTO_UDP);
    if (can_socket == INVALID_SOCKET) return 2;
    memset(&local, 0, sizeof local);
    local.sin_family = AF_INET;
    local.sin_addr.s_addr = htonl(INADDR_LOOPBACK);
    local.sin_port = htons(receive_port);
    if (bind(can_socket, (struct sockaddr *)&local, sizeof local) != 0) return 3;
#ifdef _WIN32
    ioctlsocket(can_socket, FIONBIO, &nonblocking);
#else
    fcntl(can_socket, F_SETFL, fcntl(can_socket, F_GETFL, 0) | O_NONBLOCK);
#endif
    memset(&can_peer, 0, sizeof can_peer);
    can_peer.sin_family = AF_INET;
    can_peer.sin_addr.s_addr = htonl(INADDR_LOOPBACK);
    can_peer.sin_port = htons(send_port);
    can_running = 1;
#ifdef _WIN32
    can_thread = CreateThread(NULL, 0, can_receive, NULL, 0, NULL);
    return can_thread ? 0 : 4;
#else
    return pthread_create(&can_thread, NULL, can_receive, NULL) == 0 ? 0 : 4;
#endif
}

#ifdef _WIN32
static DWORD WINAPI rti_run(void *unused)
#else
static void *rti_run(void *unused)
#endif
{
    unsigned long last = milliseconds();
    unsigned long accumulated = 0;
    (void)unused;
    while (rti_running) {
        unsigned long now = milliseconds();
        accumulated += now - last;
        last = now;
        while (accumulated * RTI_One_Sec >= 1000UL) {
            accumulated -= 1000UL / RTI_One_Sec;
            if (!g_intr_masked) RTI_Int_Handler();
        }
        sleep_ms(1);
    }
    return 0;
}

int pc_side_rti_start(void)
{
    rti_running = 1;
#ifdef _WIN32
    rti_thread = CreateThread(NULL, 0, rti_run, NULL, 0, NULL);
    return rti_thread ? 0 : 1;
#else
    return pthread_create(&rti_thread, NULL, rti_run, NULL) == 0 ? 0 : 1;
#endif
}

void pc_side_rti_stop(void)
{
    rti_running = 0;
#ifdef _WIN32
    WaitForSingleObject(rti_thread, 2000); CloseHandle(rti_thread);
#else
    pthread_join(rti_thread, NULL);
#endif
}

void pc_side_can_shutdown(void)
{
    can_running = 0;
    if (can_socket != INVALID_SOCKET) CLOSESOCKET(can_socket);
#ifdef _WIN32
    WaitForSingleObject(can_thread, 2000); CloseHandle(can_thread);
    DeleteCriticalSection(&rx_lock); WSACleanup();
#else
    pthread_join(can_thread, NULL);
#endif
}

/* Processor reset.
 *
 * The firmware resets the hardware way: MCOUSER_ResetApplication (NMT 0x81,
 * e.g. the CNT-19 passing on the button box's Reset key) and ResetProc arm the
 * fastest COP rate (COPCTL = 0x01) and spin in while (1) until the watchdog
 * fires. There is no COP here, so that spin is forever: the RX thread keeps
 * logging, but the firmware thread never answers the bus again.
 *
 * The watch thread spots that write - CR == 1 is only ever set right before
 * the spin - and relaunches the host on the same ports, so the unit comes back
 * up from power-on as it does after a real COP reset. Closing the socket first
 * is required: the new process binds the same receive port. */
#define COPCTL_OFFSET 0x3C    /* COPCTL, mc9s12a128.h */

static void pc_side_reset(void)
{
    printf("[host] *** RESET: relaunching on :%u -> :%u ***\n",
           (unsigned)can_receive_port, (unsigned)can_send_port);
    pc_side_rti_stop();
    pc_side_can_shutdown();
#ifdef _WIN32
    {
        char exe[MAX_PATH];
        char cmd[MAX_PATH + 32];
        STARTUPINFOA si;
        PROCESS_INFORMATION pi;

        memset(&si, 0, sizeof si);
        si.cb = sizeof si;
        memset(&pi, 0, sizeof pi);
        if (GetModuleFileNameA(NULL, exe, sizeof exe)) {
            snprintf(cmd, sizeof cmd, "\"%s\" %u %u",
                     exe, (unsigned)can_receive_port, (unsigned)can_send_port);
            /* Inherit handles so the new process writes to the same console or
             * pipe (the bench relays this output). A literal 1: TRUE is the
             * firmware's definition here, not Windows'. */
            if (CreateProcessA(exe, cmd, NULL, NULL, 1, 0, NULL, NULL, &si, &pi)) {
                CloseHandle(pi.hThread);
                CloseHandle(pi.hProcess);
            } else {
                printf("[host] relaunch failed (%lu)\n", (unsigned long)GetLastError());
            }
        }
    }
    ExitProcess(0);
#else
    {
        char receive[8], send[8];
        snprintf(receive, sizeof receive, "%u", (unsigned)can_receive_port);
        snprintf(send, sizeof send, "%u", (unsigned)can_send_port);
        execl("/proc/self/exe", "/proc/self/exe", receive, send, (char *)NULL);
        perror("[host] relaunch failed");
        _exit(1);
    }
#endif
}

#ifdef _WIN32
static DWORD WINAPI reset_watch(void *unused)
#else
static void *reset_watch(void *unused)
#endif
{
    (void)unused;
    for (;;) {
        sleep_ms(100);
        if ((*(volatile unsigned char *)&sfr_regs[COPCTL_OFFSET] & 0x07) == 1) {
            printf("[host] COP reset spin detected -> resetting unit\n");
            pc_side_reset();          /* does not return */
        }
    }
    return 0;
}

int pc_side_reset_watch_start(void)
{
#ifdef _WIN32
    HANDLE watch = CreateThread(NULL, 0, reset_watch, NULL, 0, NULL);
    if (!watch) return 1;
    CloseHandle(watch);
    return 0;
#else
    pthread_t watch;
    if (pthread_create(&watch, NULL, reset_watch, NULL) != 0) return 1;
    pthread_detach(watch);
    return 0;
#endif
}
