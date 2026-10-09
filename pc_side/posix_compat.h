#ifndef POSIX_COMPAT_H
#define POSIX_COMPAT_H
/* POSIX implementation of the host's small Win32 thread/socket surface. */
#include <pthread.h>
#include <stdint.h>
#include <stdlib.h>
#include <unistd.h>
#include <time.h>
#include <sys/socket.h>
#include <sys/ioctl.h>
#include <netinet/in.h>
#include <arpa/inet.h>
typedef struct { int wHour, wMinute, wSecond, wMilliseconds; } SYSTEMTIME;
typedef struct { int64_t QuadPart; } LARGE_INTEGER;
static inline void GetLocalTime(SYSTEMTIME *t) {
    struct timespec now;
    struct tm local;
    clock_gettime(CLOCK_REALTIME, &now);
    localtime_r(&now.tv_sec, &local);
    t->wHour = local.tm_hour; t->wMinute = local.tm_min;
    t->wSecond = local.tm_sec; t->wMilliseconds = now.tv_nsec / 1000000;
}
static inline void QueryPerformanceFrequency(LARGE_INTEGER *t) { t->QuadPart = 1000000000; }
static inline void QueryPerformanceCounter(LARGE_INTEGER *t) {
    struct timespec now;
    clock_gettime(CLOCK_MONOTONIC, &now);
    t->QuadPart = (int64_t)now.tv_sec * 1000000000 + now.tv_nsec;
}
typedef uint32_t DWORD;
typedef void *LPVOID;
typedef pthread_mutex_t CRITICAL_SECTION;
typedef struct { pthread_t thread; DWORD (*fn)(LPVOID); LPVOID arg; } *HANDLE;
typedef int SOCKET;
#define WINAPI
#define INVALID_SOCKET (-1)
#define SOCKET_ERROR (-1)
#define closesocket close
#define ioctlsocket ioctl
static inline DWORD GetTickCount(void) {
    struct timespec t;
    clock_gettime(CLOCK_MONOTONIC, &t);
    return (DWORD)((uint64_t)t.tv_sec * 1000 + t.tv_nsec / 1000000);
}
static inline void Sleep(unsigned milliseconds) {
    struct timespec t = {milliseconds / 1000, (milliseconds % 1000) * 1000000L};
    nanosleep(&t, NULL);
}
static inline void InitializeCriticalSection(CRITICAL_SECTION *lock) { pthread_mutex_init(lock, NULL); }
static inline void EnterCriticalSection(CRITICAL_SECTION *lock) { pthread_mutex_lock(lock); }
static inline void LeaveCriticalSection(CRITICAL_SECTION *lock) { pthread_mutex_unlock(lock); }
static inline void DeleteCriticalSection(CRITICAL_SECTION *lock) { pthread_mutex_destroy(lock); }
static inline void *pc_thread_start(void *arg) {
    HANDLE h = arg;
    h->fn(h->arg);
    return NULL;
}
static inline HANDLE CreateThread(void *security, unsigned size, DWORD (*fn)(LPVOID), LPVOID arg, unsigned flags, void *id) {
    HANDLE h = malloc(sizeof *h);
    (void)security; (void)size; (void)flags; (void)id;
    if (!h) return NULL;
    h->fn = fn; h->arg = arg;
    if (pthread_create(&h->thread, NULL, pc_thread_start, h)) { free(h); return NULL; }
    return h;
}
static inline void WaitForSingleObject(HANDLE h, unsigned timeout) { (void)timeout; pthread_join(h->thread, NULL); }
static inline void CloseHandle(HANDLE h) { free(h); }
static inline void SetConsoleTitleA(const char *title) { (void)title; }
#endif
