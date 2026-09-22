	.module user.c
	.area text
	.dbfile ..\..\REV3~1.25\SOURCE~1\user.c
	.area data
	.dbfile ..\..\REV3~1.25\SOURCE~1\user.c
_clearProc::
	.blkb 1
	.area idata
	.byte 1
	.area data
	.dbfile ..\..\REV3~1.25\SOURCE~1\user.c
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\user.c
	.dbsym e clearProc _clearProc c
	.area text
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\user.c
_SDOResponseTable::
	.byte 'C,0
	.byte 16,0
	.byte 145,1
	.byte 15,0
	.byte 'O,24
	.byte 16,0
	.byte 4,0
	.byte 0,0
	.byte 'C,24
	.byte 16,1
	.byte 'S,'T
	.byte 'R,'C
	.byte 'C,24
	.byte 16,2
	.byte 2,0
	.byte 1,0
	.byte 'C,24
	.byte 16,3
	.byte 0,0
	.byte 1,0
	.byte 'C,24
	.byte 16,4
	.byte 255,255
	.byte 255,255
	.byte 'O,24
	.byte 32,0
	.byte 3,0
	.byte 0,0
	.byte 'C,24
	.byte 32,1
	.byte 'A,'S
	.byte 'E,1
	.byte 'C,24
	.byte 32,2
	.byte 'P,'O
	.byte 'C,'M
	.byte 'C,24
	.byte 32,3
	.byte 32,0
	.byte 1,0
	.byte 'O,0
	.byte 33,0
	.byte 4,0
	.byte 0,0
	.byte 'C,0
	.byte 33,1
	.byte 'C,'L
	.byte 'E,'A
	.byte 'C,0
	.byte 33,2
	.byte 'N,'E
	.byte 'R,45
	.byte 'C,0
	.byte 33,3
	.byte 'V,'A
	.byte 'C,'U
	.byte 'C,0
	.byte 33,4
	.byte 'U,'M
	.byte 32,50
	.byte 'W,255
	.byte 255,255
	.byte 255,255
	.byte 255,255
	.dbsym e SDOResponseTable _SDOResponseTable A[128:128]c
	.area extcode(paged)
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\user.c
	.dbfunc e MCOUSER_FatalError _MCOUSER_FatalError fV
;        ErrCode -> 0,SP
$_MCOUSER_FatalError::
	pshd
	.dbline -1
	.dbline 141
; /**************************************************************************
; MODULE:    USER
; CONTAINS:  MicroCANopen Object Dictionary and Process Image implementation
; COPYRIGHT: Embedded Systems Academy, Inc. 2002-2005.
;            All rights reserved. www.microcanopen.com
;            This software was written in accordance to the guidelines at
;            www.esacademy.com/software/softwarestyleguide.pdf
; DISCLAIM:  Read and understand our disclaimer before using this code!
;            www.esacademy.com/disclaim.htm
; LICENSE:   THIS IS THE EDUCATIONAL VERSION OF MICROCANOPEN
;            See file license_educational.txt or
;            www.microcanopen.com/license_educational.txt
;            A commercial MicroCANopen license is available at
;            www.CANopenStore.com
; VERSION:   2.10, ESA 12-JAN-05
;            $LastChangedDate: 2005-01-12 13:53:59 -0700 (Wed, 12 Jan 2005) $
;            $LastChangedRevision: 48 $
; ***************************************************************************/ 
; 
; #include <string.h>
; 
; #include "Controller.h"
; #include "mco.h"
; #include "mcohw.h"
; #include "mc9s12a128.h"
; #include "subroutines.h"
; 
; // ensure the number of tpdos and rpdos is correct
; #if (NR_OF_RPDOS != 8)
;   #if (NR_OF_TPDOS != 8)
; #error This example is for 8 TPDOs and 8 RPDOs only
;   #endif
; #endif
; 
; // global variables
; 
; // This structure holds all node specific configuration
; UNSIGNED8 gProcImg[PROCIMG_SIZE];
; extern UNSIGNED8 setFilters[];
; char clearProc = 1;
; // Table with SDO Responses for read requests to OD
; // Each Row has 8 Bytes:
; // Command Specifier for SDO Response (1 byte)
; //   bits 2+3 contain: '4' � {number of data bytes}
; // Object Dictionary Index (2 bytes, low first)
; // Object Dictionary Subindex (1 byte)
; // Data (4 bytes, lowest bytes first)
; UNSIGNED8 MEM_CONST SDOResponseTable[] = {
; 
;   // [1000h,00]: Device Type
;   SDOREPLY(0x1000, 0x00, 4, OD_DEVICE_TYPE),
; 
; #ifdef OD_SERIAL
;   // [1018h,00]: Identity Object, Number of Entries = 4
;   SDOREPLY(0x1018, 0x00, 1, 0x00000004L),
; #else
;   // [1018h,00]: Identity Object, Number of Entries = 3
;   SDOREPLY(0x1018, 0x00, 1, 0x00000003L),
; #endif
; 
;   // [1018h,01]: Identity Object, Vendor ID
;   SDOREPLY(0x1018, 0x01, 4, OD_VENDOR_ID),
; 
;   // [1018h,02]: Identity Object, Product Code
;   SDOREPLY(0x1018, 0x02, 4, OD_PRODUCT_CODE),
; 
;   // [1018h,03]: Identity Object, Revision
;   SDOREPLY(0x1018, 0x03, 4, OD_REVISION),
; 
; #ifdef OD_SERIAL
;   // [1018h,04]: Identity Object, Serial
;   SDOREPLY(0x1018, 0x04, 4, OD_SERIAL),
; #endif
; 
;   // [2018h,00]: MicroCANopen Identity Object, Number of Entries = 3
;   SDOREPLY(0x2018, 0x00, 1, 0x00000003L),
; 
;   // [2018h,01]: MicroCANopen Identity Object, Vendor ID = 01455341, ESA Inc.
;   SDOREPLY(0x2018, 0x01, 4, 0x01455341L),
; 
;   // [2018h,02]: MicroCANopen Identity Object, Product Code = "MCOP"
;   SDOREPLY4(0x2018, 0x02, 4, 'P', 'O', 'C', 'M'),
; 
;   // [2018h,03]: MicroCANopen Identity Object, Revision = 1.20
;   SDOREPLY(0x2018, 0x03, 4, 0x00010020L),
; 
;   // [2100h,00]: MicroCANopen Identity Object, Number of Entries = 3
;   SDOREPLY(0x2100, 0x00, 1, 0x00000004L),
; 
;   // [2100h,01]: MicroCANopen Identity Object, Vendor ID = 01455341, ESA Inc.
;   SDOREPLY4(0x2100, 0x01, 4, 'C', 'L', 'E', 'A'),
; 
;   // [2100h,02]: MicroCANopen Identity Object, Product Code = "MCOP"
;   SDOREPLY4(0x2100, 0x02, 4, 'N', 'E', 'R', '-'),
; 
;   // [2100h,03]: MicroCANopen Identity Object, Revision = 1.20
;   SDOREPLY4(0x2100, 0x03, 4, 'V', 'A', 'C', 'U'),
; 
;   // [2100h,04]: MicroCANopen Identity Object, Revision = 1.20
;   SDOREPLY4(0x2100, 0x04, 4, 'U', 'M', ' ', 0x32),
; 
; #ifdef PDO_IN_OD
;   // NOTE: These entries must be added manually. The parameters must match
;   // the parameters used to call the functions MCO_InitRPDO and MCO_InitTPDO.
; 
;   // These entries are necessary to be fully CANopen compliant.
;   // Suppported in commercial version of MicroCANopen available from
;   // www.CANopenStore.com
; 
;   // Warning: This version is not fully CANopen compliant - PDO_IN_OD must not be defined
;   #error Warning: This version of MicroCANopen has a limited Object Dictionary! Un-define PDO_IN_OD to confirm!
; #endif // PDO_IN_OD
; 
;   // End-of-table marker
;   SDOREPLY(0xFFFF, 0xFF, 0xFF, 0xFFFFFFFFL)
; };
; 
; #ifdef PROCIMG_IN_OD
;   // Table with Object Dictionary entries to process data.
; 
;   // These entries are necessary to be fully CANopen compliant.
;   // Suppported in commercial version of MicroCANopen available from
;   // www.CANopenStore.com
; 
;   // Warning: This version is not fully CANopen compliant - PROCIMG_IN_OD must not be defined
;   #error Warning: This version of MicroCANopen has a limited Object Dictionary! Un-define PROCIMG_IN_OD to confirm!
; #endif // PROCIMG_IN_OD
; 
; 
; /**************************************************************************
; DOES:    This function is called if a fatal error occurred. 
;          Error codes of mcohwxxx.c are in the range of 0x8000 to 0x87FF.
;          Error codes of mco.c are in the range of 0x8800 to 0x8FFF. 
;          All other error codes may be used by the application.
; RETURNS: nothing
; **************************************************************************/
; void MCOUSER_FatalError
;   (
;   UNSIGNED16 ErrCode  // the error code
;   )
; {
	.dbline 143
;   //display blinking pattern on led
;   InitCANopen();
	xcall $_InitCANopen
	.dbline -2
L5:
	.dbline 0 ; func end
	leas 2,S
	rtc
	.dbsym l ErrCode 0 i
	.dbend
	.dbfunc e MCOUSER_ResetApplication _MCOUSER_ResetApplication fV
$_MCOUSER_ResetApplication::
	.dbline -1
	.dbline 155
; }
; 
; /**************************************************************************
; DOES:    Call-back function for reset application.
;          Starts the watchdog and waits until watchdog causes a reset.
; RETURNS: nothing
; **************************************************************************/
; void MCOUSER_ResetApplication
;   (
;   void
;   )
; {
	.dbline 156
;     COPCTL = 0x01;				//enable COP 
	movb #1,0x3c
L7:
	.dbline 157
; 	while (1);					//wait for reset
L8:
	.dbline 157
	bra L7
X0:
	.dbline -2
L6:
	.dbline 0 ; func end
	rtc
	.dbend
	.dbfunc e MCOUSER_ResetCommunication _MCOUSER_ResetCommunication fV
;              i -> 12,SP
$_MCOUSER_ResetCommunication::
	leas -13,S
	.dbline -1
	.dbline 174
; 
;   //MCOUSER_ResetCommunication();
; }
; 
; /**************************************************************************
; DOES:    This function both resets and initializes both the CAN interface
;          and the CANopen protocol stack. It is called from within the
;          CANopen protocol stack, if a NMT master message was received that
;          demanded "Reset Communication".
;          This function should call MCO_Init and MCO_InitTPDO/MCO_InitRPDO.
; RETURNS: nothing
; **************************************************************************/
; void MCOUSER_ResetCommunication
;   (
;   void
;   )
; {
	.dbline 177
; UNSIGNED8 i;
; 
;  INTR_OFF();
	sei
	.dbline 180
; 
;   // Initialize Process Variables
;   if(clearProc == 1){ // Only clear gProcImg on startup.
	ldab _clearProc
	cmpb #1
	bne L11
	.dbline 180
	.dbline 181
;   for (i = 0; i < PROCIMG_SIZE; i++)
	clr 12,S
	bra L16
L13:
	.dbline 182
;   {
	.dbline 183
;     gProcImg[i] = 0;
	ldy #_gProcImg
	ldab 12,S
	clra
	sty 10,S
	addd 10,S
	tfr D,Y
	ldd #0
	stab 0,Y
	.dbline 184
;   }
L14:
	.dbline 181
	inc 12,S
L16:
	.dbline 181
	ldab 12,S
	cmpb #34
	blo L13
	.dbline 185
;   }
L11:
	.dbline 186
;   clearProc = 0;
	clr _clearProc
	.dbline 188
; 
;   for(i = 0; i < 8; i++){
	clr 12,S
	bra L20
L17:
	.dbline 188
	.dbline 189
;       setFilters[i] = 0x80;
	ldy #_setFilters
	ldab 12,S
	clra
	sty 10,S
	addd 10,S
	tfr D,Y
	ldd #128
	stab 0,Y
	.dbline 190
;   }
L18:
	.dbline 188
	inc 12,S
L20:
	.dbline 188
	ldab 12,S
	cmpb #8
	blo L17
	.dbline 192
; 
;   INTR_ON();
	cli
	.dbline 194
;   // 125kbit, Node 1, No heartbeat
;   MCO_Init(125,NODE_ID,0); 
	ldy #0
	sty 2,S
	ldy #72
	sty 0,S
	ldd #125
	xcall $_MCO_Init
	.dbline 199
;   
; 
;   //Initiate Menu/Trigger
;   // RPDO1, ID ($NODEID+0x200), 1 bytes
;   MCO_InitRPDO(1,0,1,OUT_digi_0); 
	ldy #14
	sty 4,S
	ldy #1
	sty 2,S
	ldy #0
	sty 0,S
	ldd #1
	xcall $_MCO_InitRPDO
	.dbline 202
; 
;   // RPDO2, ID ($NODEID+0x300), 2 bytes, Button Box data
;   MCO_InitRPDO(2,0x180,3,OUT_digi_1); 
	ldy #15
	sty 4,S
	ldy #3
	sty 2,S
	ldy #384
	sty 0,S
	ldd #2
	xcall $_MCO_InitRPDO
	.dbline 206
; 
;   //camera address is received on out_digi_3 and out_digi_4
;   // RPDO3, default ID (0x400+nodeID), 2 bytes
;   MCO_InitRPDO(3,0x421,2,OUT_digi_4); 
	ldy #18
	sty 4,S
	ldy #2
	sty 2,S
	ldy #1057
	sty 0,S
	ldd #3
	xcall $_MCO_InitRPDO
	.dbline 210
; 
;   // command from controller is received on out_digi_5, out...6,7 have data with command    
;   // RPDO4, default ID (0x500+nodeID), 5 bytes
;   MCO_InitRPDO(4,0x521,5,OUT_digi_6);       //command RPDO 
	ldy #20
	sty 4,S
	ldy #5
	sty 2,S
	ldy #1313
	sty 0,S
	ldd #4
	xcall $_MCO_InitRPDO
	.dbline 213
; 
;   // RPDO5, default ID (), 1 byte, Speed Control moving
;   MCO_InitRPDO(5,0x298,1,OUT_digi_12);       
	ldy #26
	sty 4,S
	ldy #1
	sty 2,S
	ldy #664
	sty 0,S
	ldd #5
	xcall $_MCO_InitRPDO
	.dbline 216
;     
;   // RPDO6, default ID (), 2 byte, position actuator
;   MCO_InitRPDO(6,0x46a,3,OUT_digi_13);       
	ldy #27
	sty 4,S
	ldy #3
	sty 2,S
	ldy #1130
	sty 0,S
	ldd #6
	xcall $_MCO_InitRPDO
	.dbline 223
;     
;   // TPDO1, default ID ($NODEID+0x180), 0ms event, 10ms inhibit, 1 bytes, Menu Status
; //  MCO_InitTPDO(1,0x200,0,100,1,IN_digi_0);
; // Manually send this 
; 
;   // TPDO2, default ID ($NODEID+0x280), 100ms event, 0ms inhibit, 5 bytes, Speed Control
;   MCO_InitTPDO(1,0x1ea,0,10,1,IN_digi_8);
	ldy #8
	sty 8,S
	ldy #1
	sty 6,S
	ldy #10
	sty 4,S
	ldy #0
	sty 2,S
	ldy #490
	sty 0,S
	ldd #1
	xcall $_MCO_InitTPDO
	.dbline 226
; 
;   // TPDO3, default ID ($NODEID+0x380), 0ms event, 100ms inhibit, 1 bytes, actuator moving
;   MCO_InitTPDO(2,0x1c8,0,100,1,IN_digi_15);
	ldy #9
	sty 8,S
	ldy #1
	sty 6,S
	ldy #100
	sty 4,S
	ldy #0
	sty 2,S
	ldy #456
	sty 0,S
	ldd #2
	xcall $_MCO_InitTPDO
	.dbline 232
; 
;   // TPDO4, default ID ($NODEID+), 100ms event, 0ms inhibit, 1 bytes, Cleaning process
;   // This is initialized (and modified) in the cleaning sequence
;   //MCO_InitTPDO(4,0x318,100,0,5,IN_digi_3); 
;   //MCO_InitTPDO(4,0x318,100,100,5,IN_digi_3); 
;   MCO_InitTPDO(4,0x318,0,100,5,IN_digi_3);
	ldy #3
	sty 8,S
	ldy #5
	sty 6,S
	ldy #100
	sty 4,S
	ldy #0
	sty 2,S
	ldy #792
	sty 0,S
	ldd #4
	xcall $_MCO_InitTPDO
	.dbline -2
L10:
	.dbline 0 ; func end
	leas 13,S
	rtc
	.dbsym l i 12 c
	.dbend
	.area bss
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\user.c
_gProcImg::
	.blkb 34
	.dbsym e gProcImg _gProcImg A[34:34]c
