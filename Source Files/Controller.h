#ifndef Controller_H
#define Controller_H

#ifdef PC_SIDE
extern volatile int g_intr_masked;
#define INTR_ON()  (g_intr_masked = 0)
#define INTR_OFF() (g_intr_masked = 1)
#elif !defined(INTR_ON)
#define INTR_ON()	asm("cli")
#define INTR_OFF()	asm("sei")
#endif


//#define CommPull 0x20
//#define CommOut 0x08


#endif
