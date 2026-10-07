#ifndef PC_SIDE_H
#define PC_SIDE_H

extern volatile int g_intr_masked;

#ifndef INTR_ON
#define INTR_ON()  (g_intr_masked = 0)
#define INTR_OFF() (g_intr_masked = 1)
#endif

int  pc_side_can_init(unsigned short receive_port, unsigned short send_port);
void pc_side_can_shutdown(void);
void rti_thread_start_realtime(unsigned int period_ms);
void rti_thread_stop(void);
void pc_side_reset(void);               /* relaunch on a COP reset spin */
unsigned int pc_side_rti_ticks(void);
unsigned int pc_side_rti_skipped(void);

#endif
