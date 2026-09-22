	.module Controller.c
	.area text
	.dbfile ..\..\REV3~1.25\SOURCE~1\Controller.c
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Controller.c
	.dbfunc e main _main fV
_main::
	.dbline -1
	.dbline 12
; #include <stdio.h>
; 
; #include "Controller.h"
; #include "mc9s12a128.h"
; #include "Flash.h"
; #include "EEProm.h"
; #include "Subroutines.h"
; 
; 
; 
; void main (void)
; {
	.dbline 13
;     InitPorts ();
	xcall $_InitPorts
	.dbline 14
; 	InitInterrupts ();
	xcall $_InitInterrupts
	.dbline 15
; 	InitPLL ();
	xcall $_InitPLL
	.dbline 16
; 	InitSCI ();
	xcall $_InitSCI
	.dbline 17
;   	PWMInit ();
	xcall $_PWMInit
	.dbline 18
; 	AtoDInit ();
	xcall $_AtoDInit
	.dbline 20
; 	
;     EEInit ();
	xcall $_EEInit
	.dbline 21
; 	FlashInit ();
	xcall $_FlashInit
	.dbline 24
; 
;   	// end of initialization, enable all interrupts
;   	INTR_ON();
	cli
	.dbline 25
; 	InitCANopen ();
	xcall $_InitCANopen
	.dbline 28
; 
; 	
;     Load_Camera_Add();     //get camera address from memory, do NOT use default value
	xcall $_Load_Camera_Add
	.dbline 32
;     //important to load_camera_add() before Load_Variables(), EEProm is not available for
;     //brief period after save_variables at end of load_variables()
; 
; 	Load_TrigCamera_Add();
	xcall $_Load_TrigCamera_Add
	.dbline 34
; 	//Skip over this function call to change the serial number
; 	Load_Serial_Num ();
	xcall $_Load_Serial_Num
	.dbline 36
; 
; 	Load_Variables ();
	xcall $_Load_Variables
	.dbline 38
; 	
; 	InitXmit ();
	xcall $_InitXmit
	.dbline 42
; 	
; 	
; 
; 	COPCTL = 0x47;				//enable COP
	movb #71,0x3c
	bra L3
L2:
	.dbline 45
; 
; 	while (1)
; 	{
	.dbline 46
; 	    ARMCOP = 0x55;
	movb #85,0x3f
	.dbline 47
; 		ARMCOP = 0xAA;
	movb #170,0x3f
	.dbline 48
; 	    doevents ();
	xcall $_doevents
	.dbline 49
; 	}
L3:
	.dbline 44
	bra L2
X0:
	.dbline -2
L1:
	.dbline 0 ; func end
	rts
	.dbend
