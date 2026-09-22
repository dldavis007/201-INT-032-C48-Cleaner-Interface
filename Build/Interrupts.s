	.module Interrupts.c
	.area text
	.dbfile ..\..\REV3~1.25\SOURCE~1\Interrupts.c
	.area data
	.dbfile ..\..\REV3~1.25\SOURCE~1\Interrupts.c
_Seconds::
	.blkb 1
	.area idata
	.byte 60
	.area data
	.dbfile ..\..\REV3~1.25\SOURCE~1\Interrupts.c
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Interrupts.c
	.dbsym e Seconds _Seconds c
_Tick::
	.blkb 2
	.area idata
	.word 976
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Interrupts.c
	.dbsym e Tick _Tick I
_SIN0Buf::
	.blkb 2
	.area idata
	.byte 0,0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Interrupts.c
	.blkb 148
	.area idata
	.word 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.word 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.word 0,0,0,0,0
	.word 0,0,0,0,0
	.byte 0,0,0,0,0,0,0,0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Interrupts.c
	.dbsym e SIN0Buf _SIN0Buf A[150:150]c
_SIN0Bufptr::
	.blkb 2
	.area idata
	.word 0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Interrupts.c
	.dbsym e SIN0Bufptr _SIN0Bufptr I
_SOUT0Buf::
	.blkb 2
	.area idata
	.byte 0,0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Interrupts.c
	.blkb 78
	.area idata
	.word 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.word 0,0,0,0,0
	.byte 0,0,0,0,0,0,0,0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Interrupts.c
	.dbsym e SOUT0Buf _SOUT0Buf A[80:80]c
_SOUT0Bufptr::
	.blkb 2
	.area idata
	.word 0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Interrupts.c
	.dbsym e SOUT0Bufptr _SOUT0Bufptr I
_RampTimer::
	.blkb 2
	.area idata
	.word 19
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Interrupts.c
	.dbsym e RampTimer _RampTimer I
_fast_inc::
	.blkb 1
	.area idata
	.byte 0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Interrupts.c
	.dbsym e fast_inc _fast_inc c
	.area text
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Interrupts.c
	.dbfunc e DUMMY_ENTRY _DUMMY_ENTRY fV
_DUMMY_ENTRY::
	.dbline -1
	.dbline 70
; #include "Interrupts.h"
; #include "mc9s12a128.h"
; #include "Controller.h"
; #include "mco.h"
; #include "mcohw.h"
; #include "nodecfg.h"
; #include "procimg.h"
; #include "Subroutines.h"
; #include <math.h>
; #include <stdlib.h>
; 
; char Seconds = 60;
; 
; int Tick = RTI_One_Sec;
; 
; unsigned int TC0_RCVD_Data;
; 
; char Gen_Flags;
; 
; unsigned int Timer1;
; unsigned int Timer2;
; unsigned int LA_Wait_Timer;
; unsigned long LineupTimer;
; unsigned long LineupTimeCapture;
; 
; extern char LA_Moving;
; unsigned int MenuTimer;
; unsigned int FocusZoomTimer;
; unsigned int AdvanceTimer;
; int Update_Menu_Timer;
; unsigned int SequenceTimer;
; 
; char SIN0Buf[SIN0BufLen] = "\0";
; int SIN0Bufptr = 0;
; char SOUT0Buf[SOUT0BufLen] = "\0";
; int SOUT0Bufptr = 0;
; 
; unsigned int MenuTimer;
; unsigned int CompressorTimer;
; int updatePressureTimer;	 //limit frequency of updates to menu
; 
; 
; extern signed char HeadRampCW;
; extern signed char HeadRampCCW;
; extern int HeadSpeed;
; int RampTimer = RampTime;
; 
; unsigned long  StateTime;
; extern char State;
; 
; char fast_inc=0;
; unsigned int IncSpeedUpTimer;
; char IncSpeedUpCntr;
; 
; char LA_PWM_Bit, LAspd, LA_PWM_Out;
; extern char PB1_PWM, PB3_PWM;
; 
; char HD_PWM_Bit, HD_PWM_Out;
; 
; unsigned int PID_Timer;
; unsigned int HdOffTimer;
; 
; unsigned int LA_speed_timer;
; unsigned int TC2_prev,TC2_cap;
; long LA_speed;
; 
; 
; 
; void DUMMY_ENTRY ( void )
; {
	.dbline -2
L5:
	.dbline 0 ; func end
	rti
	.dbend
	.dbfunc e CANRxISR _CANRxISR fV
	.dbstruct 0 12 .1
	.dbfield 0 ID i
	.dbfield 2 LEN c
	.dbfield 3 dummy32bit c
	.dbfield 4 BUF A[8:8]c
	.dbend
;         rxdata -> 2,SP
;     ReceiveBuf -> 10,SP
;     Identifier -> 22,SP
;         length -> 26,SP
;    pReceiveBuf -> 27,SP
;          index -> 29,SP
_CANRxISR::
	leas -30,S
	.dbline -1
	.dbline 75
; 
; }
; 
; void CANRxISR ( void )
; {
	.dbline 80
;   	unsigned char length, index;
; 	unsigned char rxdata[8];
;     UNSIGNED32 Identifier;
; 	CAN_MSG ReceiveBuf;
; 	CAN_MSG *pReceiveBuf = &ReceiveBuf;
	leay 10,S
	sty 27,S
	.dbline 82
; 	
;     Identifier   = (UNSIGNED32)CANRXIDR0;
	ldab 0x160
	clra
	jsr int2long
	puld
	std 24,S
	puld
	std 24,S
	.dbline 83
;     Identifier <<= 8;
	ldd 24,S
	pshd
	ldd 24,S
	pshd
	ldd #8
	jsr lsl4
	puld
	std 24,S
	puld
	std 24,S
	.dbline 84
;     Identifier  |= (UNSIGNED32) CANRXIDR1;
	ldd 24,S
	pshd
	ldd 24,S
	pshd
	ldab 0x161
	clra
	jsr int2long
	jsr or4
	puld
	std 24,S
	puld
	std 24,S
	.dbline 85
;     Identifier >>= 5;
	ldd 24,S
	pshd
	ldd 24,S
	pshd
	ldd #5
	jsr lsr4
	puld
	std 24,S
	puld
	std 24,S
	.dbline 87
; 	
; 	length = (CANRXDLR & 0x0f);
	ldab 0x16c
	andb #15
	stab 26,S
	.dbline 88
; 	for ( index = 0; index < length; index++ )
	clr 29,S
	bra L10
L7:
	.dbline 89
; 		*(UNSIGNED8 *)(pReceiveBuf->BUF+index) = *(&CANRXDSR0 + index);   	/* Get received data */
	ldd 27,S
	addd #4
	tfr D,Y
	ldab 29,S
	clra
	sty 0,S
	addd 0,S
	tfr D,Y
	ldab 29,S
	clra
	addd #356
	tfr D,X
	ldab 0,X
	stab 0,Y
L8:
	.dbline 88
	inc 29,S
L10:
	.dbline 88
	ldab 29,S
	cmpb 26,S
	blo L7
	.dbline 90
; 	CANRFLG = 0x01;	  				   						  				/* Clear RXF */
	movb #1,0x144
	.dbline 92
; 
;     pReceiveBuf->ID = Identifier;
	ldd 24,S
	pshd
	ldd 24,S
	pshd
	leas 2,S
	puly
	ldx 27,S
	sty 0,X
	.dbline 93
;     pReceiveBuf->LEN = length;
	ldab 26,S
	tfr B,Y
	ldd 27,S
	addd #2
	tfr D,X
	tfr Y,B
	stab 0,X
	.dbline -2
L6:
	.dbline 0 ; func end
	leas 30,S
	rti
	.dbsym l rxdata 2 A[8:8]c
	.dbsym l ReceiveBuf 10 S[.1]
	.dbsym l Identifier 22 l
	.dbsym l length 26 c
	.dbsym l pReceiveBuf 27 pS[.1]
	.dbsym l index 29 c
	.dbend
	.dbfunc e IRQ_Int_Handler _IRQ_Int_Handler fV
_IRQ_Int_Handler::
	.dbline -1
	.dbline 98
; 
; }	
; 
; void IRQ_Int_Handler ( void )
; {
	.dbline -2
L11:
	.dbline 0 ; func end
	rti
	.dbend
	.dbfunc e TC0_Int_Handler _TC0_Int_Handler fV
_TC0_Int_Handler::
	.dbline -1
	.dbline 103
; 
; }
; 
; void TC0_Int_Handler ( void )
; {
	.dbline 104
;  	 TFLG1 = 0x01;	   		//clear interrupt
	movb #1,0x4e
	.dbline -2
L12:
	.dbline 0 ; func end
	rti
	.dbend
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Interrupts.c
_resolver::
	.blkb 1
	.area idata
	.byte 0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Interrupts.c
	.dbsym e resolver _resolver c
_phase::
	.blkb 1
	.area idata
	.byte 0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Interrupts.c
	.dbsym e phase _phase c
_prev_phase::
	.blkb 1
	.area idata
	.byte 0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Interrupts.c
	.dbsym e prev_phase _prev_phase c
_count::
	.blkb 1
	.area idata
	.byte 0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Interrupts.c
	.dbsym e count _count c
_LA_position::
	.blkb 2
	.area idata
	.word 2500
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Interrupts.c
	.dbsym e LA_position _LA_position I
_prevLA_position::
	.blkb 2
	.area idata
	.word 2500
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Interrupts.c
	.dbsym e prevLA_position _prevLA_position I
_direction::
	.blkb 1
	.area idata
	.byte 0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Interrupts.c
	.dbsym e direction _direction C
	.area text
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Interrupts.c
	.dbfunc e TC1_Int_Handler _TC1_Int_Handler fV
_TC1_Int_Handler::
	.dbline -1
	.dbline 118
; //	 StoreFlag = 1;
; }
; 
; char resolver=0;
; char phase=0;
; char prev_phase=0;
; char count=0;
; int LA_position=2500;
; int prevLA_position=2500;
; signed char direction=0;
; 
; 
; void TC1_Int_Handler ( void ) 	 		//encoder direction, both edges
; {
	.dbline 119
;     TFLG1 = 0x02;	   		//clear interrupt flag
	movb #2,0x4e
	.dbline -2
L13:
	.dbline 0 ; func end
	rti
	.dbend
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Interrupts.c
L17:
	.blkb 1
	.area idata
	.byte 0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Interrupts.c
	.area bss
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Interrupts.c
L18:
	.blkb 16
	.area text
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Interrupts.c
	.dbfunc e TC2_Int_Handler _TC2_Int_Handler fV
	.dbsym s LA_speed_array L18 A[16:8]i
	.dbsym s LA_speed_array_ptr L17 c
;              i -> 4,SP
_TC2_Int_Handler::
	leas -5,S
	.dbline -1
	.dbline 129
; 	
; //	if(PTT & 0x02) direction=1;
; //	else direction=-1;
; }
; 
; 
; 
; 
; void TC2_Int_Handler ( void )			//tach, falling edges, changed to both because actuator encoder was too slow
; {
	.dbline 130
;  	TFLG1 = 0x04;
	movb #4,0x4e
	.dbline 131
; 	LA_position+=direction;
	ldab _direction
	tfr B,Y
	ldd _LA_position
	sty 0,S
	addd 0,S
	std _LA_position
	.dbline 136
; 	//remove next line if changing edge triggers
; 	//LA_position+=direction;
; 	
; 
; 	TC2_cap=TC2-TC2_prev;		 
	ldd 0x54
	subd _TC2_prev
	std _TC2_cap
	.dbline 137
; 	TC2_prev=TC2;
	movw 0x54,_TC2_prev
	.dbline 139
; 	
; 	if (TC2_cap < 6700)			 //Max LA speed should not exceed 6700, this also prevents divide by zero
	ldy _TC2_cap
	cpy #6700
	bhs L15
	.dbline 140
; 	    TC2_cap = 6700;
	movw #6700,_TC2_cap
L15:
	.dbline 142
; 			
; 	LA_speed = 800000/TC2_cap;
	movw #13568,2,-S
	movw #12,2,-S
	ldy _TC2_cap
	pshy
	movw #0,2,-S
	jsr div4s
	puly
	sty _LA_speed
	puly
	sty _LA_speed+2
	.dbline 148
; 	//LA_speed = LA_speed<<5; //LA_speed = LA_speed * ???,  This is to compensate for the Timer prescaler
; //	if (LA_speed > 120)
; //	    LA_speed = 120;
; 	
; 	
; 	{
	.dbline 152
; 	    char i;
; 		static char LA_speed_array_ptr=0;
; 		static unsigned int LA_speed_array[8];
; 		LA_speed_array[LA_speed_array_ptr++] = LA_speed;
	ldab L17
	clra
	std 2,S
	tfr D,Y
	iny
	tfr Y,B
	ldx 2,S
	stab L17
	ldy #L18
	tfr X,D
	lsld
	sty 0,S
	addd 0,S
	tfr D,Y
	movw _LA_speed+2,2,-S
	movw _LA_speed,2,-S
	leas 2,S
	pulx
	stx 0,Y
	.dbline 153
; 		LA_speed = 0;
	movw #0,_LA_speed
	movw #0,_LA_speed+2
	.dbline 154
; 		if (LA_speed_array_ptr>=sizeof(LA_speed_array)/sizeof(int)) LA_speed_array_ptr=0;
	ldab L17
	cmpb #8
	blo L19
	.dbline 154
	clr L17
L19:
	.dbline 155
; 		for (i=0;i<sizeof(LA_speed_array)/sizeof(int);i++)
	clr 4,S
	bra L24
L21:
	.dbline 156
; 	        LA_speed = LA_speed + LA_speed_array[i];
	movw _LA_speed+2,2,-S
	movw _LA_speed,2,-S
	ldy #L18
	ldab 8,S
	clra
	lsld
	sty 4,S
	addd 4,S
	tfr D,Y
	ldy 0,Y
	pshy
	movw #0,2,-S
	jsr add4
	pulx
	stx _LA_speed
	pulx
	stx _LA_speed+2
L22:
	.dbline 155
	inc 4,S
L24:
	.dbline 155
	ldab 4,S
	cmpb #8
	blo L21
	.dbline 157
; 		LA_speed = LA_speed>>3;
	movw _LA_speed+2,2,-S
	movw _LA_speed,2,-S
	ldd #3
	jsr asr4
	puly
	sty _LA_speed
	puly
	sty _LA_speed+2
	.dbline 158
; 	}
	.dbline 160
; 	
; 	LA_speed_timer = RTI_One_Sec * .5;
	movw #488,_LA_speed_timer
	.dbline 163
; 
; 	
; 	if (LA_position<0) 
	ldy _LA_position
	cpy #0
	bge L25
	.dbline 164
; 	    LA_position=0;
	movw #0,_LA_position
L25:
	.dbline -2
L14:
	.dbline 0 ; func end
	leas 5,S
	rti
	.dbsym l i 4 c
	.dbend
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Interrupts.c
_TC_6410_PWM::
	.blkb 2
	.area idata
	.word 480
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Interrupts.c
	.blkb 2
	.area idata
	.word 528
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Interrupts.c
	.blkb 2
	.area idata
	.word 576
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Interrupts.c
	.blkb 2
	.area idata
	.word 624
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Interrupts.c
	.blkb 2
	.area idata
	.word 672
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Interrupts.c
	.blkb 2
	.area idata
	.word 720
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Interrupts.c
	.blkb 2
	.area idata
	.word 768
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Interrupts.c
	.blkb 2
	.area idata
	.word 816
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Interrupts.c
	.blkb 2
	.area idata
	.word 864
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Interrupts.c
	.blkb 2
	.area idata
	.word 912
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Interrupts.c
	.blkb 2
	.area idata
	.word 960
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Interrupts.c
	.blkb 2
	.area idata
	.word 1008
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Interrupts.c
	.blkb 2
	.area idata
	.word 1056
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Interrupts.c
	.blkb 2
	.area idata
	.word 1104
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Interrupts.c
	.blkb 2
	.area idata
	.word 1152
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Interrupts.c
	.blkb 2
	.area idata
	.word 1201
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Interrupts.c
	.blkb 2
	.area idata
	.word 1249
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Interrupts.c
	.blkb 2
	.area idata
	.word 1297
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Interrupts.c
	.blkb 2
	.area idata
	.word 1345
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Interrupts.c
	.blkb 2
	.area idata
	.word 1393
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Interrupts.c
	.blkb 2
	.area idata
	.word 1441
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Interrupts.c
	.blkb 2
	.area idata
	.word 1489
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Interrupts.c
	.blkb 2
	.area idata
	.word 1537
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Interrupts.c
	.blkb 2
	.area idata
	.word 1585
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Interrupts.c
	.blkb 2
	.area idata
	.word 1633
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Interrupts.c
	.blkb 2
	.area idata
	.word 1681
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Interrupts.c
	.blkb 2
	.area idata
	.word 1729
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Interrupts.c
	.blkb 2
	.area idata
	.word 1777
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Interrupts.c
	.blkb 2
	.area idata
	.word 1825
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Interrupts.c
	.blkb 2
	.area idata
	.word 1873
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Interrupts.c
	.blkb 2
	.area idata
	.word 1921
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Interrupts.c
	.blkb 2
	.area idata
	.word 1969
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Interrupts.c
	.blkb 2
	.area idata
	.word 2017
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Interrupts.c
	.blkb 2
	.area idata
	.word 2065
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Interrupts.c
	.blkb 2
	.area idata
	.word 2113
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Interrupts.c
	.blkb 2
	.area idata
	.word 2161
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Interrupts.c
	.blkb 2
	.area idata
	.word 2209
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Interrupts.c
	.blkb 2
	.area idata
	.word 2257
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Interrupts.c
	.blkb 2
	.area idata
	.word 2305
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Interrupts.c
	.blkb 2
	.area idata
	.word 2353
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Interrupts.c
	.blkb 2
	.area idata
	.word 2402
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Interrupts.c
	.blkb 2
	.area idata
	.word 2450
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Interrupts.c
	.blkb 2
	.area idata
	.word 2498
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Interrupts.c
	.blkb 2
	.area idata
	.word 2546
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Interrupts.c
	.blkb 2
	.area idata
	.word 2594
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Interrupts.c
	.blkb 2
	.area idata
	.word 2642
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Interrupts.c
	.blkb 2
	.area idata
	.word 2690
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Interrupts.c
	.blkb 2
	.area idata
	.word 2738
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Interrupts.c
	.blkb 2
	.area idata
	.word 2786
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Interrupts.c
	.blkb 2
	.area idata
	.word 2834
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Interrupts.c
	.blkb 2
	.area idata
	.word 2882
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Interrupts.c
	.blkb 2
	.area idata
	.word 2930
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Interrupts.c
	.blkb 2
	.area idata
	.word 2978
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Interrupts.c
	.blkb 2
	.area idata
	.word 3026
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Interrupts.c
	.blkb 2
	.area idata
	.word 3074
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Interrupts.c
	.blkb 2
	.area idata
	.word 3122
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Interrupts.c
	.blkb 2
	.area idata
	.word 3170
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Interrupts.c
	.blkb 2
	.area idata
	.word 3218
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Interrupts.c
	.blkb 2
	.area idata
	.word 3266
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Interrupts.c
	.blkb 2
	.area idata
	.word 3314
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Interrupts.c
	.blkb 2
	.area idata
	.word 3362
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Interrupts.c
	.blkb 2
	.area idata
	.word 3410
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Interrupts.c
	.blkb 2
	.area idata
	.word 3458
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Interrupts.c
	.blkb 2
	.area idata
	.word 3506
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Interrupts.c
	.blkb 2
	.area idata
	.word 3554
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Interrupts.c
	.blkb 2
	.area idata
	.word 3603
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Interrupts.c
	.blkb 2
	.area idata
	.word 3651
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Interrupts.c
	.blkb 2
	.area idata
	.word 3699
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Interrupts.c
	.blkb 2
	.area idata
	.word 3747
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Interrupts.c
	.blkb 2
	.area idata
	.word 3795
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Interrupts.c
	.blkb 2
	.area idata
	.word 3843
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Interrupts.c
	.blkb 2
	.area idata
	.word 3891
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Interrupts.c
	.blkb 2
	.area idata
	.word 3939
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Interrupts.c
	.blkb 2
	.area idata
	.word 3987
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Interrupts.c
	.blkb 2
	.area idata
	.word 4035
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Interrupts.c
	.blkb 2
	.area idata
	.word 4083
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Interrupts.c
	.blkb 2
	.area idata
	.word 4131
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Interrupts.c
	.blkb 2
	.area idata
	.word 4179
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Interrupts.c
	.blkb 2
	.area idata
	.word 4227
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Interrupts.c
	.blkb 2
	.area idata
	.word 4275
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Interrupts.c
	.blkb 2
	.area idata
	.word 4323
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Interrupts.c
	.blkb 2
	.area idata
	.word 4371
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Interrupts.c
	.blkb 2
	.area idata
	.word 4419
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Interrupts.c
	.blkb 2
	.area idata
	.word 4467
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Interrupts.c
	.blkb 2
	.area idata
	.word 4515
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Interrupts.c
	.blkb 2
	.area idata
	.word 4563
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Interrupts.c
	.dbsym e TC_6410_PWM _TC_6410_PWM A[172:86]I
L28:
	.blkb 2
	.area idata
	.word 0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Interrupts.c
	.area text
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Interrupts.c
	.dbfunc e TC3_Int_Handler _TC3_Int_Handler fV
	.dbsym s abs_hdspd L28 I
_TC3_Int_Handler::
	leas -4,S
	.dbline -1
	.dbline 178
; }
; 
; int TC_6410_PWM[86]={TC_6410us * .10,TC_6410us * .11,TC_6410us * .12,TC_6410us * .13,TC_6410us * .14,TC_6410us * .15,TC_6410us * .16,TC_6410us * .17,TC_6410us * .18,TC_6410us * .19,
; 				 TC_6410us * .20,TC_6410us * .21,TC_6410us * .22,TC_6410us * .23,TC_6410us * .24,TC_6410us * .25,TC_6410us * .26,TC_6410us * .27,TC_6410us * .28,TC_6410us * .29,
; 				 TC_6410us * .30,TC_6410us * .31,TC_6410us * .32,TC_6410us * .33,TC_6410us * .34,TC_6410us * .35,TC_6410us * .36,TC_6410us * .37,TC_6410us * .38,TC_6410us * .39,
; 				 TC_6410us * .40,TC_6410us * .41,TC_6410us * .42,TC_6410us * .43,TC_6410us * .44,TC_6410us * .45,TC_6410us * .46,TC_6410us * .47,TC_6410us * .48,TC_6410us * .49,
; 				 TC_6410us * .50,TC_6410us * .51,TC_6410us * .52,TC_6410us * .53,TC_6410us * .54,TC_6410us * .55,TC_6410us * .56,TC_6410us * .57,TC_6410us * .58,TC_6410us * .59,
; 				 TC_6410us * .60,TC_6410us * .61,TC_6410us * .62,TC_6410us * .63,TC_6410us * .64,TC_6410us * .65,TC_6410us * .66,TC_6410us * .67,TC_6410us * .68,TC_6410us * .69,
; 				 TC_6410us * .70,TC_6410us * .71,TC_6410us * .72,TC_6410us * .73,TC_6410us * .74,TC_6410us * .75,TC_6410us * .76,TC_6410us * .77,TC_6410us * .78,TC_6410us * .79,
; 				 TC_6410us * .80,TC_6410us * .81,TC_6410us * .82,TC_6410us * .83,TC_6410us * .84,TC_6410us * .85,TC_6410us * .86,TC_6410us * .87,TC_6410us * .88,TC_6410us * .89,
; 				 TC_6410us * .90,TC_6410us * .91,TC_6410us * .92,TC_6410us * .93,TC_6410us * .94,TC_6410us * .95};
; 
; void TC3_Int_Handler ( void )
; {
	.dbline 181
;  	 static int abs_hdspd = 0;
; 	 
;  	 TFLG1 = 0x08;	   		//clear interrupt
	movb #8,0x4e
	.dbline 183
; 	 
; 	 if ( !(PORTB & HD_PWM_Bit) )
	ldab 0x1
	bitb _HD_PWM_Bit
	bne L29
	.dbline 184
; 	     abs_hdspd = abs ( HeadSpeed );		 			// Only allow speed to change (go to zero) at the end of a Low PWM cycle
	ldd _HeadSpeed
	xcall $_abs
	std L28
L29:
	.dbline 202
; 
; // >>>>>>>>>>>>>>>>>>   PortB & PTP (below) are used for the Internal Head Ramp (FET H-Bridge, smaller machines) <<<<<<<<<<<<<<<<<<<<<	 
; 
; 	 
; 	 
; 	 //                    PTB 76543210
; 	 //                             | | 
; 	 //  (Reverse) H-Bridge IN  ----' '----  H-Bridge IN (Forward)
; 	 //                             
; 
; 	 //                    PTP 76543210
; 	 //                            | |
; 	 // (Reverse) H-Bridge /SD ----' '---- H-Bridge /SD (Forward)
; 	 //         
; 	 
; 	 // PTP is set (high, not shut down) in doevents
; 	 
; 	 if ( HeadSpeed >= 10 )
	ldy _HeadSpeed
	cpy #10
	blt L31
	.dbline 203
; 	 {	     
	.dbline 204
; 	     HD_PWM_Bit = 0x01;
	movb #1,_HD_PWM_Bit
	.dbline 205
; 	 }
	bra L32
L31:
	.dbline 206
; 	 else if ( HeadSpeed <= -10 )
	ldy _HeadSpeed
	cpy #65526
	bgt L33
	.dbline 207
; 	 {
	.dbline 208
; 	     HD_PWM_Bit = 0x04;
	movb #4,_HD_PWM_Bit
	.dbline 209
; 	 }
	bra L34
L33:
	.dbline 210
; 	 else if ( HD_PWM_Out )   	   		 	   			//if stopping and high side is going high 
	ldab _HD_PWM_Out
	cmpb #0
	beq L35
	.dbline 211
; 	 {
	.dbline 212
; 	  	 PTP &= ~(HD_PWM_Bit<<1);	   		   			//disable high side driver to prevent braking	
	ldab _HD_PWM_Bit
	clra
	lsld
	coma
	comb
	tfr D,Y
	ldab 0x258
	clra
	sty 0,S
	anda 0,S
	andb 1,S
	stab 0x258
	.dbline 213
; 		 HD_PWM_Out = 0;					   			//don't go high     
	clr _HD_PWM_Out
	.dbline 214
; 		 abs_hdspd = 0;
	movw #0,L28
	.dbline 215
; 		 PORTB = PORTB & ~0x05;				   			//clear both PWM outputs
	bclr 0x1,#5
	.dbline 216
; 		 HD_PWM_Bit = 0;
	clr _HD_PWM_Bit
	.dbline 218
; 		 
; 		 TCTL2 = ( TCTL2 & ~0xC0 ) | 0x80;	   	   		// 0x80 == clear TC output
	ldab 0x49
	andb #65343
	orab #128
	stab 0x49
	.dbline 219
; 		 CFORC = 0x08;	   		   	 			   	  	// External PWM low
	movb #8,0x41
	.dbline 220
; 	 }
L35:
L34:
L32:
	.dbline 223
; 	 
; 	 
;  	 PORTB = ( PORTB & ~HD_PWM_Bit ) | HD_PWM_Out;   	//Internal PWM outputs
	ldab _HD_PWM_Bit
	comb
	tfr B,Y
	ldab 0x1
	sty 0,S
	andb 1,S
	orab _HD_PWM_Out
	stab 0x1
	.dbline 228
; 	 
; // >>>>>>>>>>>>>>>>>>   PTT bit 3, TC3 (below) is used for the external Head Ramp (Low side FET driver and relays) <<<<<<<<<<<<<<<<<<<<<	 
; //PWM output on PT3 for external 
; 
; 	 if ( abs_hdspd > 95 )
	ldy L28
	cpy #95
	ble L37
	.dbline 229
; 	 {
	.dbline 230
; 		 abs_hdspd = 95;   	   		   	 	   	  	   //Internal stays at 95, external switch to always on at 95 percent
	movw #95,L28
	.dbline 231
; 	 }
L37:
	.dbline 233
; 	 
; 	 if ( PORTB & HD_PWM_Bit )  	  	  	   		   //PWM output is high (just went high), set time to PWM percent
	ldab 0x1
	bitb _HD_PWM_Bit
	beq L39
	.dbline 234
; 	 {
	.dbline 235
; 	     if ( abs_hdspd < 95 )
	ldy L28
	cpy #95
	bge L41
	.dbline 236
; 		 {
	.dbline 237
; 		 	 TCTL2 = ( TCTL2 & ~0xC0 ) | 0x80;	   	   // 0x80 == clear TC output, on next interrupt
	ldab 0x49
	andb #65343
	orab #128
	stab 0x49
	.dbline 238
; 		 }
	bra L42
L41:
	.dbline 240
; 		 else	
; 		 {		   	   		   		   	 		   	   // Head speed is equal to 95
	.dbline 241
; 		 	 TCTL2 = ( TCTL2 & ~0xC0 ) | 0xC0;	   	   // 0xC0 == Set TC output, on force (next line) (force External PWM to 100%)
	ldab 0x49
	andb #65343
	orab #192
	stab 0x49
	.dbline 242
; 			 CFORC = 0x08;	   		   	 		   	   // External PWM High
	movb #8,0x41
	.dbline 243
; 		 }
L42:
	.dbline 244
; 		 HD_PWM_Out = 0;			   		 		   //Internal PWM will go low on next interrupt
	clr _HD_PWM_Out
	.dbline 245
;          TC3 = TC3 + TC_6410_PWM[abs_hdspd-10 < 0?0:abs_hdspd-10];		   // Get high time of PWM
	ldd L28
	subd #10
	cpd #0
	bge L44
	movw #0,2,S
	bra L45
L44:
	ldd L28
	subd #10
	std 2,S
L45:
	ldy #_TC_6410_PWM
	ldd 2,S
	lsld
	sty 0,S
	addd 0,S
	tfr D,Y
	ldd 0x56
	addd 0,Y
	std 0x56
	.dbline 246
; 	 }
	lbra L40
L39:
	.dbline 248
; 	 else  			  				   		   	   	   //PWM output is low (just went low), set time to (100% - PWM percent)
; 	 {
	.dbline 249
; 		 TC3 = TC3 + ( TC_6410us - TC_6410_PWM[abs_hdspd-10 < 0?0:abs_hdspd-10]);  // Calculate low time of PWM (entire PWM time is 6.41ms)
	ldd L28
	subd #10
	cpd #0
	bge L47
	movw #0,2,S
	bra L48
L47:
	ldd L28
	subd #10
	std 2,S
L48:
	ldy 0x56
	pshy
	movw #0,2,-S
	movw #4804,2,-S
	movw #0,2,-S
	ldd 10,S
	ldy #_TC_6410_PWM
	lsld
	sty 8,S
	addd 8,S
	tfr D,Y
	ldd 0,Y
	jsr int2long
	jsr sub4
	jsr add4
	leas 2,S
	puly
	sty 0x56
	.dbline 250
; 		 if ( abs_hdspd >= 10 && abs_hdspd < 95 )
	ldy L28
	cpy #10
	blt L49
	ldy L28
	cpy #95
	bge L49
	.dbline 251
; 		 {
	.dbline 252
;     		 TCTL2 = ( TCTL2 & ~0xC0 ) | 0xC0;		   // 0xC0 == Set TC output, External PWM High, on next interrupt
	ldab 0x49
	andb #65343
	orab #192
	stab 0x49
	.dbline 253
; 		 }
	bra L50
L49:
	.dbline 254
; 		 else if ( abs_hdspd >= 95 )	
	ldy L28
	cpy #95
	blt L51
	.dbline 255
; 		 {		   	   		   		   	 		   	   // Head speed is equal or greater than 95
	.dbline 256
; 		 	 TCTL2 = ( TCTL2 & ~0xC0 ) | 0xC0;	   	   // 0xC0 == Set TC output, on force (next line) (force External PWM to 100%)
	ldab 0x49
	andb #65343
	orab #192
	stab 0x49
	.dbline 257
; 			 CFORC = 0x08;	   		   	 		   	   // External PWM High
	movb #8,0x41
	.dbline 258
; 		 }
	bra L52
L51:
	.dbline 260
; 		 else
; 		 {
	.dbline 261
; 		     TC3 = TC3 + TC_6410_PWM[85];			   //set PWM to longest time when stopping (hdspd = 0)
	ldd 0x56
	addd _TC_6410_PWM+170
	std 0x56
	.dbline 262
; 		 }
L52:
L50:
	.dbline 263
;     	 HD_PWM_Out = HD_PWM_Bit;		   		   	   //Internal PWM will go high on next interrupt
	movb _HD_PWM_Bit,_HD_PWM_Out
	.dbline 264
; 	 }
L40:
	.dbline -2
L27:
	.dbline 0 ; func end
	leas 4,S
	rti
	.dbend
	.dbfunc e TC5_Int_Handler _TC5_Int_Handler fV
_TC5_Int_Handler::
	.dbline -1
	.dbline 271
; }
; 
; 
; 				 
; 				 
; void TC5_Int_Handler ( void )
; {
	.dbline 272
;  	 TFLG1 = 0x20;	   		//clear interrupt
	movb #32,0x4e
	.dbline 273
;  	 TC5 = TCNT + TC_1ms;
	ldd 0x44
	addd #749
	std 0x5a
	.dbline 274
; 	 MCOHW_TimerISR();
	xcall $_MCOHW_TimerISR
	.dbline -2
L54:
	.dbline 0 ; func end
	rti
	.dbend
	.dbfunc e TC6_Int_Handler _TC6_Int_Handler fV
_TC6_Int_Handler::
	leas -4,S
	.dbline -1
	.dbline 278
; }
; 
; void TC6_Int_Handler ( void )
; {
	.dbline 279
;  	 TFLG1 = 0x40;	   		//clear interrupt
	movb #64,0x4e
	.dbline 281
; 	 
; 	 if ( PB1_PWM )
	ldab _PB1_PWM
	cmpb #0
	beq L56
	.dbline 282
; 	 {	     
	.dbline 283
; 	     LA_PWM_Bit = 0x02;
	movb #2,_LA_PWM_Bit
	.dbline 284
; 		 LAspd = PB1_PWM;
	movb _PB1_PWM,_LAspd
	.dbline 285
; 	 }
	bra L57
L56:
	.dbline 286
; 	 else if ( PB3_PWM )
	ldab _PB3_PWM
	cmpb #0
	beq L58
	.dbline 287
; 	 {
	.dbline 288
; 	     LA_PWM_Bit = 0x08;
	movb #8,_LA_PWM_Bit
	.dbline 289
; 		 LAspd = PB3_PWM;
	movb _PB3_PWM,_LAspd
	.dbline 290
; 	 }
	bra L59
L58:
	.dbline 292
; 	 else
; 	 {
	.dbline 293
; 		 LAspd = 0;
	clr _LAspd
	.dbline 296
; 		 //PORTB = ( PORTB & ~0x0a );
; 	  	 //PTP &= ~(LA_PWM_Bit>>1);	   		   //disable driver to prevent braking	     
; 	 }
L59:
L57:
	.dbline 298
; 	 
; 	 PORTB = ( PORTB & ~LA_PWM_Bit ) | LA_PWM_Out;
	ldab _LA_PWM_Bit
	comb
	tfr B,Y
	ldab 0x1
	sty 0,S
	andb 1,S
	orab _LA_PWM_Out
	stab 0x1
	.dbline 300
; 	 
; 	 if ( LAspd > 95 )  //Limit output to 95%
	ldab _LAspd
	cmpb #95
	bls L60
	.dbline 301
; 	 {
	.dbline 302
; 		 LAspd = 95;
	movb #95,_LAspd
	.dbline 303
; 	 }
L60:
	.dbline 305
; 	 
; 	 if ( LAspd < 10 )  //Always off if < 10, Clear output on next interrupt
	ldab _LAspd
	cmpb #10
	bhs L62
	.dbline 306
; 	 {
	.dbline 308
; 	     //TC6 = TC6 + TC_1200us;
; 	     TC6 = TC6 + TC_6410us;
	ldy 0x5c
	pshy
	movw #0,2,-S
	movw #4804,2,-S
	movw #0,2,-S
	jsr add4
	leas 2,S
	puly
	sty 0x5c
	.dbline 309
; 		 LA_PWM_Out = 0;
	clr _LA_PWM_Out
	.dbline 310
; 	 }
	lbra L63
L62:
	.dbline 311
; 	 else if ( PORTB & LA_PWM_Bit ) //if output is high, Clear output on next interrupt (LA_PWM_In is equal to active output)
	ldab 0x1
	bitb _LA_PWM_Bit
	beq L64
	.dbline 312
; 	 {
	.dbline 315
; 	     //TC6 = TC6 + ( TC_1200us/10 * LAspd/10 );
; 	     //TC6 = TC6 + ( TC_6410us/10 * LAspd/10 );
; 	     TC6 = TC6 + TC_6410_PWM[LAspd-10<0?0:LAspd-10];
	ldab _LAspd
	subb #10
	cmpb #0
	bhs L67
	movw #0,2,S
	bra L68
L67:
	ldab _LAspd
	clra
	subd #10
	std 2,S
L68:
	ldy #_TC_6410_PWM
	ldd 2,S
	lsld
	sty 0,S
	addd 0,S
	tfr D,Y
	ldd 0x5c
	addd 0,Y
	std 0x5c
	.dbline 316
; 		 LA_PWM_Out = 0;
	clr _LA_PWM_Out
	.dbline 317
; 	 }
	bra L65
L64:
	.dbline 319
; 	 else  //if output is low, Set output on next interrupt
; 	 {
	.dbline 322
;          //TC6 = TC6 + ( TC_1200us - ( TC_1200us/10 * LAspd/10 ) );
;          //TC6 = TC6 + ( TC_6410us - ( TC_6410us/10 * LAspd/10 ) );
;          TC6 = TC6 + ( TC_6410us - TC_6410_PWM[LAspd-10<0?0:LAspd-10]);
	ldab _LAspd
	subb #10
	cmpb #0
	bhs L70
	movw #0,2,S
	bra L71
L70:
	ldab _LAspd
	clra
	subd #10
	std 2,S
L71:
	ldy 0x5c
	pshy
	movw #0,2,-S
	movw #4804,2,-S
	movw #0,2,-S
	ldd 10,S
	ldy #_TC_6410_PWM
	lsld
	sty 8,S
	addd 8,S
	tfr D,Y
	ldd 0,Y
	jsr int2long
	jsr sub4
	jsr add4
	leas 2,S
	puly
	sty 0x5c
	.dbline 323
; 		 LA_PWM_Out = LA_PWM_Bit;
	movb _LA_PWM_Bit,_LA_PWM_Out
	.dbline 324
; 	 }
L65:
L63:
	.dbline -2
L55:
	.dbline 0 ; func end
	leas 4,S
	rti
	.dbend
	.dbfunc e RTI_Int_Handler _RTI_Int_Handler fV
_RTI_Int_Handler::
	leas -14,S
	.dbline -1
	.dbline 328
; }
; 
; void RTI_Int_Handler ( void )
; {
	.dbline 329
;  	 CRGFLG = 0x80;	   	//clear interrupt
	movb #128,0x37
	.dbline 331
; 
; 	StateTime++;
	movw _StateTime+2,2,-S
	movw _StateTime,2,-S
	movw #1,2,-S
	movw #0,2,-S
	jsr add4
	puly
	sty _StateTime
	puly
	sty _StateTime+2
	.dbline 332
;     LineupTimer++;
	movw _LineupTimer+2,2,-S
	movw _LineupTimer,2,-S
	movw #1,2,-S
	movw #0,2,-S
	jsr add4
	puly
	sty _LineupTimer
	puly
	sty _LineupTimer+2
	.dbline 334
; 	
; 	if ( HdOffTimer )
	ldy _HdOffTimer
	cpy #0
	beq L73
	.dbline 335
; 	{
	.dbline 336
; 	   	 HdOffTimer--;		
	ldy _HdOffTimer
	dey
	sty _HdOffTimer
	.dbline 337
; 	}
L73:
	.dbline 338
; 	if ( PID_Timer )
	ldy _PID_Timer
	cpy #0
	beq L75
	.dbline 339
; 	{
	.dbline 340
; 	    PID_Timer--;
	ldy _PID_Timer
	dey
	sty _PID_Timer
	.dbline 341
; 	}
L75:
	.dbline 342
; 	if ( LA_speed_timer )
	ldy _LA_speed_timer
	cpy #0
	beq L77
	.dbline 343
; 	{
	.dbline 344
; 	    LA_speed_timer--;
	ldy _LA_speed_timer
	dey
	sty _LA_speed_timer
	.dbline 346
; 		
; 	}
	bra L78
L77:
	.dbline 347
; 	else{
	.dbline 348
; 		 LA_speed=0;
	movw #0,_LA_speed
	movw #0,_LA_speed+2
	.dbline 349
; 	} 
L78:
	.dbline 350
;     if ( Timer1 )
	ldy _Timer1
	cpy #0
	beq L79
	.dbline 351
;     {
	.dbline 352
;         if ( !--Timer1 )
	ldy _Timer1
	dey
	sty 12,S
	movw 12,S,_Timer1
	ldy 12,S
	cpy #0
	bne L81
	.dbline 353
;             Gen_Flags &= ~Gen_Flags_Timer1;
	bclr _Gen_Flags,#8
L81:
	.dbline 354
;     }
L79:
	.dbline 356
;     
;     if ( Timer2 )
	ldy _Timer2
	cpy #0
	beq L83
	.dbline 357
;     {
	.dbline 358
;         if ( !--Timer2 )
	ldy _Timer2
	dey
	sty 10,S
	movw 10,S,_Timer2
	ldy 10,S
	cpy #0
	bne L85
	.dbline 359
;             Gen_Flags &= ~Gen_Flags_Timer2;
	bclr _Gen_Flags,#16
L85:
	.dbline 360
;     }
L83:
	.dbline 362
;     
;     if ( LA_Wait_Timer )
	ldy _LA_Wait_Timer
	cpy #0
	beq L87
	.dbline 363
;     {
	.dbline 364
; 	    --LA_Wait_Timer;
	ldy _LA_Wait_Timer
	dey
	sty _LA_Wait_Timer
	.dbline 365
; 		if ( !LA_Wait_Timer )
	ldy _LA_Wait_Timer
	cpy #0
	bne L89
	.dbline 366
; 		    LA_Moving = 0;  //clear moving flag after delay
	clr _LA_Moving
L89:
	.dbline 367
;     }
L87:
	.dbline 369
;     
; 	if ( IncSpeedUpTimer )
	ldy _IncSpeedUpTimer
	cpy #0
	beq L91
	.dbline 370
;     {
	.dbline 371
;         IncSpeedUpTimer--;
	ldy _IncSpeedUpTimer
	dey
	sty _IncSpeedUpTimer
	.dbline 372
;     }
L91:
	.dbline 374
;     
;     if ( MenuTimer )
	ldy _MenuTimer
	cpy #0
	beq L93
	.dbline 375
; 	{
	.dbline 376
; 	    MenuTimer--;
	ldy _MenuTimer
	dey
	sty _MenuTimer
	.dbline 378
;         
;         if ( !MenuTimer )
	ldy _MenuTimer
	cpy #0
	bne L95
	.dbline 379
;         {
	.dbline 380
;             if ( IncSpeedUpTimer )
	ldy _IncSpeedUpTimer
	cpy #0
	beq L97
	.dbline 381
;             {
	.dbline 382
;                 IncSpeedUpCntr++;
	inc _IncSpeedUpCntr
	.dbline 383
;             }
	bra L98
L97:
	.dbline 385
;             else
;             {
	.dbline 386
;                 IncSpeedUpCntr=0;
	clr _IncSpeedUpCntr
	.dbline 387
;                 fast_inc=0;
	clr _fast_inc
	.dbline 388
;             }
L98:
	.dbline 390
;                 
;             if ( IncSpeedUpCntr > IncSpeedUpCnt )
	ldab _IncSpeedUpCntr
	cmpb #9
	bls L99
	.dbline 391
;             {
	.dbline 392
;                 IncSpeedUpCntr--;
	dec _IncSpeedUpCntr
	.dbline 393
;                 fast_inc=1;
	movb #1,_fast_inc
	.dbline 394
;             }
L99:
	.dbline 395
;         }      
L95:
	.dbline 396
; 	}
L93:
	.dbline 398
; 	
; 	if ( Update_Menu_Timer > 0 )
	ldy _Update_Menu_Timer
	cpy #0
	ble L101
	.dbline 399
; 	{
	.dbline 400
; 	    Update_Menu_Timer--;
	ldy _Update_Menu_Timer
	dey
	sty _Update_Menu_Timer
	.dbline 401
; 	}
L101:
	.dbline 403
; 	
;     if ( FocusZoomTimer )
	ldy _FocusZoomTimer
	cpy #0
	beq L103
	.dbline 404
;     {
	.dbline 405
;         if ( !--FocusZoomTimer )       
	ldy _FocusZoomTimer
	dey
	sty 8,S
	movw 8,S,_FocusZoomTimer
	ldy 8,S
	cpy #0
	bne L105
	.dbline 406
;         {   //stop focus and zoom
	.dbline 407
;             PWMDTY4 = 0;
	clr 0xc0
	.dbline 408
;             PWMDTY5 = 0;
	clr 0xc1
	.dbline 409
; 			PORTA &= ~0x60;
	bclr 0,#96
	.dbline 410
;         }
L105:
	.dbline 411
;     }
L103:
	.dbline 413
; 
;     if ( AdvanceTimer )     //film advance timer
	ldy _AdvanceTimer
	cpy #0
	beq L107
	.dbline 414
;     {
	.dbline 415
;         if ( !--AdvanceTimer )       
	ldy _AdvanceTimer
	dey
	sty 6,S
	movw 6,S,_AdvanceTimer
	ldy 6,S
	cpy #0
	bne L109
	.dbline 416
;         {   //stop Advance
	.dbline 417
;             PORTA &= ~0x80;
	bclr 0,#128
	.dbline 418
;         }
L109:
	.dbline 419
;     }
L107:
	.dbline 422
; 
;     //Ramp for internal H-Bridge and external Head Ramp
; 	if ( !(--RampTimer) )
	ldy _RampTimer
	dey
	sty 4,S
	movw 4,S,_RampTimer
	ldy 4,S
	cpy #0
	bne L111
	.dbline 423
; 	{
	.dbline 424
; 	    RampTimer = RampTime;
	movw #19,_RampTimer
	.dbline 425
;     	if ( HeadRampCW == 1 )
	ldab _HeadRampCW
	cmpb #1
	bne L113
	.dbline 426
;     	{
	.dbline 427
;     	    if ( HeadSpeed < 97 )
	ldy _HeadSpeed
	cpy #97
	bge L114
	.dbline 428
;     	    {
	.dbline 429
; 			    HeadSpeed++;
	ldy _HeadSpeed
	iny
	sty _HeadSpeed
	.dbline 430
; 			}
	.dbline 431
;     	}
	bra L114
L113:
	.dbline 432
;     	else if ( HeadRampCW == -1 )
	ldab _HeadRampCW
	cmpb #65535
	bne L117
	.dbline 433
;     	{			
	.dbline 434
;     	    if ( HeadSpeed > 0 )
	ldy _HeadSpeed
	cpy #0
	ble L118
	.dbline 436
;     		    //HeadSpeed--;  //Ramp down
; 				HeadSpeed = 0;  //Stop immediately instead of ramping down
	movw #0,_HeadSpeed
	.dbline 437
;     	}
	bra L118
L117:
	.dbline 438
;     	else if ( HeadRampCCW == 1 )
	ldab _HeadRampCCW
	cmpb #1
	bne L121
	.dbline 439
;     	{
	.dbline 440
;     	    if ( HeadSpeed > -97 )
	ldy _HeadSpeed
	cpy #65439
	ble L122
	.dbline 441
; 			{
	.dbline 442
;     		    HeadSpeed--;
	ldy _HeadSpeed
	dey
	sty _HeadSpeed
	.dbline 443
; 			}
	.dbline 444
;     	}
	bra L122
L121:
	.dbline 445
;     	else if ( HeadRampCCW == -1 )
	ldab _HeadRampCCW
	cmpb #65535
	bne L125
	.dbline 446
;     	{			
	.dbline 447
;     	    if ( HeadSpeed < 0 )
	ldy _HeadSpeed
	cpy #0
	bge L127
	.dbline 449
;     		    //HeadSpeed++;  //Ramp up
; 				HeadSpeed = 0;  //Stop immediately instead of ramping down				
	movw #0,_HeadSpeed
L127:
	.dbline 450
;     	}
L125:
L122:
L118:
L114:
	.dbline 452
; 
; 	}
L111:
	.dbline 454
; 		
;     if ( !(Tick--) )
	movw _Tick,2,S
	ldy 2,S
	dey
	sty _Tick
	ldy 2,S
	cpy #0
	bne L129
	.dbline 455
;     {
	.dbline 456
;         Tick = RTI_One_Sec;
	movw #976,_Tick
	.dbline 457
;         if ( !(Seconds--) )
	ldab _Seconds
	clra
	std 0,S
	tfr D,Y
	dey
	tfr Y,B
	stab _Seconds
	ldy 0,S
	cpy #0
	bne L131
	.dbline 458
;         {
	.dbline 459
;             Seconds = 60;
	movb #60,_Seconds
	.dbline 461
;         
;         }
L131:
	.dbline 462
;     	if ( CompressorTimer )
	ldy _CompressorTimer
	cpy #0
	beq L133
	.dbline 463
;     	{
	.dbline 464
;     	    CompressorTimer--;
	ldy _CompressorTimer
	dey
	sty _CompressorTimer
	.dbline 465
;     	}
L133:
	.dbline 466
; 		if ( updatePressureTimer )
	ldy _updatePressureTimer
	cpy #0
	beq L135
	.dbline 467
; 		{
	.dbline 468
; 		   updatePressureTimer--;
	ldy _updatePressureTimer
	dey
	sty _updatePressureTimer
	.dbline 469
; 		}
L135:
	.dbline 470
; 		if ( SequenceTimer )
	ldy _SequenceTimer
	cpy #0
	beq L137
	.dbline 471
; 		{
	.dbline 472
; 		    SequenceTimer--;
	ldy _SequenceTimer
	dey
	sty _SequenceTimer
	.dbline 473
; 			if ( !SequenceTimer )
	ldy _SequenceTimer
	cpy #0
	bne L139
	.dbline 474
; 			    State = ErrorState;
	movb #99,_State
L139:
	.dbline 475
; 		}
L137:
	.dbline 476
;     }
L129:
	.dbline -2
L72:
	.dbline 0 ; func end
	leas 14,S
	rti
	.dbend
	.dbfunc e SCI0_Int_Handler _SCI0_Int_Handler fV
;        tmpchar -> 4,SP
_SCI0_Int_Handler::
	leas -5,S
	.dbline -1
	.dbline 480
; }
; 
; void SCI0_Int_Handler ( void ) 
; {
	.dbline 483
;  	 char tmpchar;
; 	 
;  	 if ( SCI0SR1 & SCI0SR1_RDRF )
	brclr 0xcc,#32,X0
	bra X1
X0: lbra L142
X1:
	.dbline 484
; 	 {
	.dbline 485
;     	 tmpchar = SCI0DRL;
	movb 0xcf,4,S
	.dbline 486
; 	     if ( !(Gen_Flags & Gen_Flags_SIN0Rcvd) )
	ldab _Gen_Flags
	bitb #2
	lbne L144
	.dbline 487
; 		 {
	.dbline 488
; 			if ( tmpchar != '\n' )
	ldab 4,S
	cmpb #10
	beq L146
	.dbline 489
; 			{
	.dbline 490
; 			    SIN0Buf [SIN0Bufptr++] = tmpchar;
	movw _SIN0Bufptr,2,S
	ldd 2,S
	ldy 2,S
	iny
	sty _SIN0Bufptr
	ldy #_SIN0Buf
	sty 0,S
	addd 0,S
	tfr D,Y
	ldab 4,S
	stab 0,Y
	.dbline 491
;     			if ( SIN0Bufptr == SIN0BufLen-1 )
	ldy _SIN0Bufptr
	cpy #149
	bne L148
	.dbline 492
;     			{
	.dbline 493
;     		        Gen_Flags |= Gen_Flags_SIN0Rcvd;
	bset _Gen_Flags,#2
	.dbline 494
;     		   		SIN0Buf [SIN0Bufptr] = '\0';
	ldd _SIN0Bufptr
	ldy #_SIN0Buf
	sty 0,S
	addd 0,S
	tfr D,Y
	ldd #0
	stab 0,Y
	.dbline 495
;     			}
L148:
	.dbline 496
;     			if ( tmpchar == '\r' )
	ldab 4,S
	cmpb #13
	bne L150
	.dbline 497
;     			{
	.dbline 498
;     		        Gen_Flags |= Gen_Flags_SIN0Rcvd;
	bset _Gen_Flags,#2
	.dbline 499
;     		   		SIN0Buf [SIN0Bufptr] = '\0';
	ldd _SIN0Bufptr
	ldy #_SIN0Buf
	sty 0,S
	addd 0,S
	tfr D,Y
	ldd #0
	stab 0,Y
	.dbline 500
;    			   		SIN0Bufptr = 0;
	movw #0,_SIN0Bufptr
	.dbline 501
;     			}
L150:
	.dbline 502
; 			}
L146:
	.dbline 503
; 		  } 
L144:
	.dbline 504
; 	 }
L142:
	.dbline 505
; 	 if ( SCI0SR1 & SCI0SR1_TDRE )
	brclr 0xcc,#128,L152
	.dbline 506
; 	 {
	.dbline 508
; 		   
; 	 }
L152:
	.dbline -2
L141:
	.dbline 0 ; func end
	leas 5,S
	rti
	.dbsym l tmpchar 4 c
	.dbend
	.dbfunc e SCI1_Int_Handler _SCI1_Int_Handler fV
_SCI1_Int_Handler::
	.dbline -1
	.dbline 513
; }
; 
; 
; void SCI1_Int_Handler ( void ) 
; {
	.dbline -2
L154:
	.dbline 0 ; func end
	rti
	.dbend
	.area memory(abs)
	.org 0xff80
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Interrupts.c
_interrupt_vectors::
	.word _DUMMY_ENTRY
	.word _DUMMY_ENTRY
	.word _DUMMY_ENTRY
	.word _DUMMY_ENTRY
	.word _DUMMY_ENTRY
	.word _DUMMY_ENTRY
	.word _DUMMY_ENTRY
	.word _DUMMY_ENTRY
	.word _DUMMY_ENTRY
	.word _DUMMY_ENTRY
	.word _DUMMY_ENTRY
	.word _DUMMY_ENTRY
	.word _DUMMY_ENTRY
	.word _DUMMY_ENTRY
	.word _DUMMY_ENTRY
	.word _DUMMY_ENTRY
	.word _DUMMY_ENTRY
	.word _DUMMY_ENTRY
	.word _DUMMY_ENTRY
	.word _DUMMY_ENTRY
	.word _DUMMY_ENTRY
	.word _DUMMY_ENTRY
	.word _DUMMY_ENTRY
	.word _DUMMY_ENTRY
	.word _DUMMY_ENTRY
	.word _CANRxISR
	.word _DUMMY_ENTRY
	.word _DUMMY_ENTRY
	.word _DUMMY_ENTRY
	.word _DUMMY_ENTRY
	.word _DUMMY_ENTRY
	.word _DUMMY_ENTRY
	.word _DUMMY_ENTRY
	.word _DUMMY_ENTRY
	.word _DUMMY_ENTRY
	.word _DUMMY_ENTRY
	.word _DUMMY_ENTRY
	.word _DUMMY_ENTRY
	.word _DUMMY_ENTRY
	.word _DUMMY_ENTRY
	.word _DUMMY_ENTRY
	.word _DUMMY_ENTRY
	.word _SCI1_Int_Handler
	.word _SCI0_Int_Handler
	.word _DUMMY_ENTRY
	.word _DUMMY_ENTRY
	.word _DUMMY_ENTRY
	.word _DUMMY_ENTRY
	.word _DUMMY_ENTRY
	.word _TC6_Int_Handler
	.word _TC5_Int_Handler
	.word _DUMMY_ENTRY
	.word _TC3_Int_Handler
	.word _TC2_Int_Handler
	.word _TC1_Int_Handler
	.word _TC0_Int_Handler
	.word _RTI_Int_Handler
	.word _IRQ_Int_Handler
	.word _DUMMY_ENTRY
	.word _DUMMY_ENTRY
	.word _DUMMY_ENTRY
	.word __start
	.word _DUMMY_ENTRY
	.word __start
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\vectors.h
	.dbsym e interrupt_vectors _interrupt_vectors A[128:64]pfV
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\vectors.h
	.area bss
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\vectors.h
_LA_speed::
	.blkb 4
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Interrupts.c
	.dbsym e LA_speed _LA_speed L
_TC2_cap::
	.blkb 2
	.dbsym e TC2_cap _TC2_cap i
_TC2_prev::
	.blkb 2
	.dbsym e TC2_prev _TC2_prev i
_LA_speed_timer::
	.blkb 2
	.dbsym e LA_speed_timer _LA_speed_timer i
_HdOffTimer::
	.blkb 2
	.dbsym e HdOffTimer _HdOffTimer i
_PID_Timer::
	.blkb 2
	.dbsym e PID_Timer _PID_Timer i
_HD_PWM_Out::
	.blkb 1
	.dbsym e HD_PWM_Out _HD_PWM_Out c
_HD_PWM_Bit::
	.blkb 1
	.dbsym e HD_PWM_Bit _HD_PWM_Bit c
_LA_PWM_Out::
	.blkb 1
	.dbsym e LA_PWM_Out _LA_PWM_Out c
_LAspd::
	.blkb 1
	.dbsym e LAspd _LAspd c
_LA_PWM_Bit::
	.blkb 1
	.dbsym e LA_PWM_Bit _LA_PWM_Bit c
_IncSpeedUpCntr::
	.blkb 1
	.dbsym e IncSpeedUpCntr _IncSpeedUpCntr c
_IncSpeedUpTimer::
	.blkb 2
	.dbsym e IncSpeedUpTimer _IncSpeedUpTimer i
_StateTime::
	.blkb 4
	.dbsym e StateTime _StateTime l
_updatePressureTimer::
	.blkb 2
	.dbsym e updatePressureTimer _updatePressureTimer I
_CompressorTimer::
	.blkb 2
	.dbsym e CompressorTimer _CompressorTimer i
_SequenceTimer::
	.blkb 2
	.dbsym e SequenceTimer _SequenceTimer i
_Update_Menu_Timer::
	.blkb 2
	.dbsym e Update_Menu_Timer _Update_Menu_Timer I
_AdvanceTimer::
	.blkb 2
	.dbsym e AdvanceTimer _AdvanceTimer i
_FocusZoomTimer::
	.blkb 2
	.dbsym e FocusZoomTimer _FocusZoomTimer i
_MenuTimer::
	.blkb 2
	.dbsym e MenuTimer _MenuTimer i
_LineupTimeCapture::
	.blkb 4
	.dbsym e LineupTimeCapture _LineupTimeCapture l
_LineupTimer::
	.blkb 4
	.dbsym e LineupTimer _LineupTimer l
_LA_Wait_Timer::
	.blkb 2
	.dbsym e LA_Wait_Timer _LA_Wait_Timer i
_Timer2::
	.blkb 2
	.dbsym e Timer2 _Timer2 i
_Timer1::
	.blkb 2
	.dbsym e Timer1 _Timer1 i
_Gen_Flags::
	.blkb 1
	.dbsym e Gen_Flags _Gen_Flags c
_TC0_RCVD_Data::
	.blkb 2
	.dbsym e TC0_RCVD_Data _TC0_RCVD_Data i
