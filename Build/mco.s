	.module mco.c
	.area text
	.dbfile ..\..\REV3~1.25\SOURCE~1\mco.c
	.area data
	.dbfile ..\..\REV3~1.25\SOURCE~1\mco.c
_No2WireCnt::
	.blkb 2
	.area idata
	.word 0
	.area data
	.dbfile ..\..\REV3~1.25\SOURCE~1\mco.c
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\mco.c
	.dbsym e No2WireCnt _No2WireCnt I
_gTPDONr::
	.blkb 1
	.area idata
	.byte 8
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\mco.c
	.dbsym e gTPDONr _gTPDONr c
	.area extcode(paged)
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\mco.c
	.dbfunc e MCO_Search_OD _MCO_Search_OD fc
;           i_hi -> 0,SP
;           i_lo -> 1,SP
;              r -> 2,SP
;              i -> 4,SP
;             hi -> 5,SP
;             lo -> 6,SP
;              p -> 7,SP
;       subindex -> 15,SP
;          index -> 9,SP
$_MCO_Search_OD::
	pshd
	leas -9,S
	.dbline -1
	.dbline 100
; /**************************************************************************
; MODULE:    MCO
; CONTAINS:  MicroCANopen implementation
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
; #include "Interrupts.h"
; #include "Subroutines.h"
; #include "mco.h"
; #include "mcohw.h"
; #include "mc9s12a128.h"
; 
; /**************************************************************************
; GLOBAL VARIABLES
; ***************************************************************************/ 
; 
; //darrell added RamAddress and RamData and RamCkSum
; void (*StartAddress)(void);
; char *RamAddress;
; char RamData;
; char RamCkSum;
; 
; int No2WireCnt = 0;
; extern char Gen_Flags;      	  	
; 
; // this structure holds all node specific configuration
; MCO_CONFIG gMCOConfig;
; 
; #if NR_OF_TPDOS > 0
; // this structure holds all the TPDO configuration data for up to 4 TPDOs
; TPDO_CONFIG gTPDOConfig[NR_OF_TPDOS];
; #endif
; 
; // this is the next TPDO to be checked in MCO_ProcessStack
; UNSIGNED8 gTPDONr = NR_OF_TPDOS;
; 
; #if NR_OF_RPDOS > 0
; // this structure holds all the RPDO configuration data for up to 4 RPDOs
; RPDO_CONFIG gRPDOConfig[NR_OF_RPDOS];
; #endif
; 
; // this structure holds the current receive message
; CAN_MSG gRxCAN;
; 
; // this structure holds the CAN message for SDO responses or aborts
; CAN_MSG gTxSDO;
; 
; // this structure holds the CAN message for Network Master messages
; CAN_MSG gTxNMT;
; 
; // this structure holds the CAN message Monitor Display messages
; CAN_MSG gTxMonitor;
; 
; // process image from user_xxxx.c
; extern UNSIGNED8 gProcImg[];
; 
; // table with SDO Responses for read requests to OD - defined in user_xxx.c
; extern UNSIGNED8 MEM_CONST SDOResponseTable[];
; 
; extern unsigned int Timer1;
; 
; /**************************************************************************
; LOCAL FUNCTIONS
; ***************************************************************************/
; 
; // SDO Abort Messages
; #define SDO_ABORT_UNSUPPORTED     0x06010000UL
; #define SDO_ABORT_NOT_EXISTS      0x06020000UL
; #define SDO_ABORT_READONLY        0x06010002UL
; #define SDO_ABORT_TYPEMISMATCH    0x06070010UL
; #define SDO_ABORT_UNKNOWN_COMMAND 0x05040001UL
; #define SDO_ABORT_UNKNOWNSUB      0x06090011UL
; 
; /**************************************************************************
; DOES:    Search the SDO Response table for a specifc index and subindex.
; RETURNS: 255 if not found, otherwise the number of the record found
;          (staring at zero)
; **************************************************************************/
; UNSIGNED8 MCO_Search_OD
;   (
;   UNSIGNED16 index,   // Index of OD entry searched
;   UNSIGNED8 subindex // Subindex of OD entry searched 
;   )
; {
	.dbline 107
;   UNSIGNED8 i;
;   UNSIGNED8 i_hi, hi;
;   UNSIGNED8 i_lo, lo;
;   UNSIGNED8 const *p;
;   UNSIGNED8 const *r;
; 
;   i = 0;
	clr 4,S
	.dbline 108
;   i_hi = (UNSIGNED8) (index >> 8);
	ldd 9,S
	tfr A,B
	clra
	stab 0,S
	.dbline 109
;   i_lo = (UNSIGNED8) index;
	ldab 10,S
	stab 1,S
	.dbline 110
;   r = &(SDOResponseTable[0]);
	ldy #_SDOResponseTable
	sty 2,S
	lbra L7
L6:
	.dbline 112
;   while (i < 255)
;   {
	.dbline 113
;     p = r;
	movw 2,S,7,S
	.dbline 115
;     // set r to next record in table
;     r += 8;
	ldd 2,S
	addd #8
	std 2,S
	.dbline 117
;     // skip command byte
;     p++;
	ldy 7,S
	iny
	sty 7,S
	.dbline 118
;     lo = *p;
	movb 0,Y,6,S
	.dbline 119
;     p++;
	ldy 7,S
	iny
	sty 7,S
	.dbline 120
;     hi = *p;
	movb 0,Y,5,S
	.dbline 122
;     // if index in table is 0xFFFF, then this is the end of the table
;     if ((lo == 0xFF) && (hi == 0xFF))
	ldab 6,S
	cmpb #255
	bne L9
	ldab 5,S
	cmpb #255
	bne L9
	.dbline 123
;     {
	.dbline 124
;       return 255;
	ldd #255
	bra L5
L9:
	.dbline 126
;     }
;     if (lo == i_lo)
	ldab 6,S
	cmpb 1,S
	bne L11
	.dbline 127
;     { 
	.dbline 128
;       if (hi == i_hi)
	ldab 5,S
	cmpb 0,S
	bne L13
	.dbline 129
;       { 
	.dbline 130
;         p++;
	ldy 7,S
	iny
	sty 7,S
	.dbline 132
;         // entry found?
;         if (*p == subindex)
	ldab [7,S]
	cmpb 15,S
	bne L15
	.dbline 133
;         {
	.dbline 134
;           return i;
	ldab 4,S
	clra
	bra L5
L15:
	.dbline 136
;         }
;       }
L13:
	.dbline 137
;     }
L11:
	.dbline 138
;     i++;
	inc 4,S
	.dbline 139
;   }
L7:
	.dbline 111
	ldab 4,S
	cmpb #255
	lblo L6
	.dbline 142
; 
;   // not found
;   return 255;
	ldd #255
	.dbline -2
L5:
	.dbline 0 ; func end
	leas 11,S
	rtc
	.dbsym l i_hi 0 c
	.dbsym l i_lo 1 c
	.dbsym l r 2 pc
	.dbsym l i 4 c
	.dbsym l hi 5 c
	.dbsym l lo 6 c
	.dbsym l p 7 pc
	.dbsym l subindex 15 c
	.dbsym l index 9 i
	.dbend
	.dbfunc e MCO_Send_SDO_Abort _MCO_Send_SDO_Abort fV
;              i -> 2,SP
;      ErrorCode -> 6,SP
$_MCO_Send_SDO_Abort::
	leas -3,S
	.dbline -1
	.dbline 154
; }
; 
; 
; /**************************************************************************
; DOES:    Generates an SDO Abort Response
; RETURNS: nothing
; **************************************************************************/
; void MCO_Send_SDO_Abort
;   (
;   UNSIGNED32 ErrorCode  // 4 byte SDO abort error code
;   )
; {
	.dbline 158
;   UNSIGNED8 i;
; 
;   // construct message data
;   gTxSDO.BUF[0] = 0x80;
	movb #128,_gTxSDO+4
	.dbline 159
;   for (i=0;i<4;i++)
	clr 2,S
	bra L22
L19:
	.dbline 160
;   {
	.dbline 161
;     gTxSDO.BUF[4+i] = ErrorCode;
	ldy #_gTxSDO+4+4
	ldab 2,S
	clra
	sty 0,S
	addd 0,S
	tfr D,Y
	ldd 8,S
	pshd
	ldd 8,S
	pshd
	leas 3,S
	pulb
	stab 0,Y
	.dbline 162
;     ErrorCode >>= 8;
	ldd 8,S
	pshd
	ldd 8,S
	pshd
	ldd #8
	jsr lsr4
	puld
	std 8,S
	puld
	std 8,S
	.dbline 163
;   }
L20:
	.dbline 159
	inc 2,S
L22:
	.dbline 159
	ldab 2,S
	cmpb #4
	blo L19
	.dbline 166
; 
;   // transmit message
;   if (!MCOHW_PushMessage(&gTxSDO))
	ldd #_gTxSDO
	xcall $_MCOHW_PushMessage
	clra
	cmpb #0
	bne L25
	.dbline 167
;   {
	.dbline 169
;     // failed to transmit
;     MCOUSER_FatalError(0x8801);
	ldd #34817
	xcall $_MCOUSER_FatalError
	.dbline 170
;   }
L25:
	.dbline -2
L17:
	.dbline 0 ; func end
	leas 3,S
	rtc
	.dbsym l i 2 c
	.dbsym l ErrorCode 6 l
	.dbend
	.dbfunc e MCO_Handle_SDO_Request _MCO_Handle_SDO_Request fc
;              x -> 6,SP
;          found -> 7,SP
;       subindex -> 8,SP
;          index -> 9,SP
;            cmd -> 11,SP
;          pData -> 12,SP
$_MCO_Handle_SDO_Request::
	pshd
	leas -12,S
	.dbline -1
	.dbline 181
; }
; 
; /**************************************************************************
; DOES:    Handle an incoimg SDO request.
; RETURNS: returns 1 if SDO access success, returns 0 if SDO abort generated
; **************************************************************************/
; UNSIGNED8 MCO_Handle_SDO_Request 
;   (
;   UNSIGNED8 *pData  // pointer to 8 data bytes with SDO data
;   )
; {
	.dbline 193
;   // command byte of SDO request
;   UNSIGNED8 cmd;
;   // index of SDO request
;   UNSIGNED16 index;
;   // subindex of SDO request
;   UNSIGNED8 subindex;
;   // search result of Search_OD
;   UNSIGNED8 found;
; 
;   // init variables
;   // upper 3 bits are the command
;   cmd = *pData & 0xE0;
	ldab [12,S]
	andb #224
	stab 11,S
	.dbline 195
;   // get high byte of index
;   index = pData[2];
	ldd 12,S
	addd #2
	tfr D,Y
	ldab 0,Y
	clra
	std 9,S
	.dbline 197
;   // add low byte of index
;   index = pData[1] + (index << 8);
	tfr B,A
	clrb
	tfr D,Y
	ldx 12,S
	inx
	ldab 0,X
	clra
	sty 4,S
	addd 4,S
	std 9,S
	.dbline 199
;   // subindex
;   subindex = pData[3];
	ldd 12,S
	addd #3
	tfr D,Y
	movb 0,Y,8,S
	.dbline 203
; 
;   // Copy Multiplexor into response
;   // index low
;   gTxSDO.BUF[1] = pData[1];
	ldy 12,S
	iny
	movb 0,Y,_gTxSDO+4+1
	.dbline 205
;   // index high
;   gTxSDO.BUF[2] = pData[2];
	ldd 12,S
	addd #2
	tfr D,Y
	movb 0,Y,_gTxSDO+4+2
	.dbline 207
;   // subindex
;   gTxSDO.BUF[3] = pData[3];
	ldd 12,S
	addd #3
	tfr D,Y
	movb 0,Y,_gTxSDO+4+3
	.dbline 210
; 
;   // is it a read or write command?
;   if ((cmd == 0x40) || (cmd == 0x20)) 
	ldab 11,S
	cmpb #64
	beq L36
	ldab 11,S
	cmpb #32
	lbne L34
L36:
	.dbline 211
;   {
	.dbline 214
; 
;     // search const table 
;     found = MCO_Search_OD(index,subindex);
	ldab 8,S
	clra
	std 0,S
	ldd 9,S
	xcall $_MCO_Search_OD
	stab 7,S
	.dbline 216
;     // entry found?
;     if (found < 255)
	cmpb #255
	lbhs L37
	.dbline 217
;     {
	.dbline 219
;       // read command?
;       if (cmd == 0x40)
	ldab 11,S
	cmpb #64
	bne L39
	.dbline 220
;       {
	.dbline 222
; //darrell added (void *) to following memcpy function
;         memcpy(&gTxSDO.BUF[0],(void *)&SDOResponseTable[(found*8)],8);
	ldy #8
	sty 2,S
	ldy #_SDOResponseTable
	ldab 7,S
	clra
	lsld
	lsld
	lsld
	sty 4,S
	addd 4,S
	std 0,S
	ldd #_gTxSDO+4
	xcall $_memcpy
	.dbline 223
;         if (!MCOHW_PushMessage(&gTxSDO))
	ldd #_gTxSDO
	xcall $_MCOHW_PushMessage
	clra
	cmpb #0
	bne L42
	.dbline 224
;         {
	.dbline 225
;           MCOUSER_FatalError(0x8802);
	ldd #34818
	xcall $_MCOUSER_FatalError
	.dbline 226
;         }
L42:
	.dbline 227
;         return 1;
	ldd #1
	lbra L27
L39:
	.dbline 233
;       }
;       // write command
; //darrell remarked the MCO_Send_SDO_Abort
;       //MCO_Send_SDO_Abort(SDO_ABORT_READONLY);
; //darrell added RamAddress, Data and CkSum 
; 	  if ( index == 0x2100 && !((gRxCAN.BUF[4]+gRxCAN.BUF[5]+gRxCAN.BUF[6]+gRxCAN.BUF[7])&0xff) )
	ldy 9,S
	cpy #8448
	lbne L44
	ldab _gRxCAN+4+4
	addb _gRxCAN+4+5
	addb _gRxCAN+4+6
	addb _gRxCAN+4+7
	andb #255
	cmpb #0
	lbne L44
	.dbline 234
; 	  {
	.dbline 235
; 	      if ( subindex == 0 )
	ldab 8,S
	cmpb #0
	lbne L54
	.dbline 236
; 	  	  {
	.dbline 237
; 	          RamAddress = (char*)(gRxCAN.BUF[4]*256 + gRxCAN.BUF[5]);
	ldab _gRxCAN+4+4
	clra
	tfr D,Y
	ldd #256
	emul
	tfr D,Y
	ldab _gRxCAN+4+5
	clra
	tfr D,X
	tfr Y,D
	stx 4,S
	addd 4,S
	tfr D,Y
	sty _RamAddress
	.dbline 238
; 	  	  	  RamData = gRxCAN.BUF[6];
	movb _gRxCAN+4+6,_RamData
	.dbline 239
; 	  	  	  RamCkSum = gRxCAN.BUF[7];
	movb _gRxCAN+4+7,_RamCkSum
	.dbline 240
; 			  *RamAddress = RamData;			  
	ldab _RamData
	tfr B,Y
	ldx _RamAddress
	tfr Y,B
	stab 0,X
	.dbline 241
;               gTxSDO.BUF[0] = 0x60;
	movb #96,_gTxSDO+4
	.dbline 242
;               gTxSDO.BUF[1] = 0x00;
	clr _gTxSDO+4+1
	.dbline 243
;               gTxSDO.BUF[2] = 0x21;
	movb #33,_gTxSDO+4+2
	.dbline 244
;               gTxSDO.BUF[3] = 0x00;
	clr _gTxSDO+4+3
	.dbline 245
;               gTxSDO.BUF[4] = gRxCAN.BUF[4];
	movb _gRxCAN+4+4,_gTxSDO+4+4
	.dbline 246
;               gTxSDO.BUF[5] = gRxCAN.BUF[5];
	movb _gRxCAN+4+5,_gTxSDO+4+5
	.dbline 247
;               gTxSDO.BUF[6] = gRxCAN.BUF[6];
	movb _gRxCAN+4+6,_gTxSDO+4+6
	.dbline 248
;               gTxSDO.BUF[7] = gRxCAN.BUF[7];
	movb _gRxCAN+4+7,_gTxSDO+4+7
	.dbline 249
; 			  if (!MCOHW_PushMessage(&gTxSDO))
	ldd #_gTxSDO
	xcall $_MCOHW_PushMessage
	clra
	cmpb #0
	bne L87
	.dbline 250
;               {
	.dbline 251
;                   MCOUSER_FatalError(0x8802);
	ldd #34818
	xcall $_MCOUSER_FatalError
	.dbline 252
;               }
L87:
	.dbline 253
;               return 1;
	ldd #1
	lbra L27
L54:
	.dbline 255
; 		  }
; 		  else if ( subindex == 1 )
	ldab 8,S
	cmpb #1
	lbne L89
	.dbline 256
; 		  {
	.dbline 258
; 		   	  char x;
; 		      StartAddress = (void*)(gRxCAN.BUF[4]*256 + gRxCAN.BUF[5]);
	ldab _gRxCAN+4+4
	clra
	tfr D,Y
	ldd #256
	emul
	tfr D,Y
	ldab _gRxCAN+4+5
	clra
	tfr D,X
	tfr Y,D
	stx 4,S
	addd 4,S
	std _StartAddress
	.dbline 259
; 			  StartAddress();
	ldy _StartAddress
	jsr 0,Y
	.dbline 260
;               gTxSDO.BUF[0] = 0x60;
	movb #96,_gTxSDO+4
	.dbline 261
;               gTxSDO.BUF[1] = 0x00;
	clr _gTxSDO+4+1
	.dbline 262
;               gTxSDO.BUF[2] = 0x21;
	movb #33,_gTxSDO+4+2
	.dbline 263
;               gTxSDO.BUF[3] = 0x01;
	movb #1,_gTxSDO+4+3
	.dbline 264
;               gTxSDO.BUF[4] = gRxCAN.BUF[4];
	movb _gRxCAN+4+4,_gTxSDO+4+4
	.dbline 265
;               gTxSDO.BUF[5] = gRxCAN.BUF[5];
	movb _gRxCAN+4+5,_gTxSDO+4+5
	.dbline 266
;               gTxSDO.BUF[6] = gRxCAN.BUF[6];
	movb _gRxCAN+4+6,_gTxSDO+4+6
	.dbline 267
;               gTxSDO.BUF[7] = gRxCAN.BUF[7];
	movb _gRxCAN+4+7,_gTxSDO+4+7
	.dbline 268
; 			  if (!MCOHW_PushMessage(&gTxSDO))
	ldd #_gTxSDO
	xcall $_MCOHW_PushMessage
	clra
	cmpb #0
	bne L118
	.dbline 269
;               {
	.dbline 270
;                   MCOUSER_FatalError(0x8802);
	ldd #34818
	xcall $_MCOUSER_FatalError
	.dbline 271
;               }
L118:
	.dbline 272
;               return 1;
	ldd #1
	lbra L27
L89:
	.dbline 274
; 		  }
; 	  }
L44:
	.dbline 280
; 
; 	  
; 	  
; 	  
; 	  
;       return 0;
	ldd #0
	lbra L27
L37:
	.dbline 282
;     }
;     if ((index == 0x1001) && (subindex == 0x00))
	ldy 9,S
	cpy #4097
	bne L120
	ldab 8,S
	cmpb #0
	bne L120
	.dbline 283
;     {
	.dbline 285
;       // read command
;       if (cmd == 0x40)
	ldab 11,S
	cmpb #64
	bne L122
	.dbline 286
;       {
	.dbline 288
;         // expedited, 1 byte of data
;         gTxSDO.BUF[0] = 0x4F;
	movb #79,_gTxSDO+4
	.dbline 289
;         gTxSDO.BUF[4] = gMCOConfig.error_register;
	movb _gMCOConfig+20,_gTxSDO+4+4
	.dbline 290
;         if (!MCOHW_PushMessage(&gTxSDO))
	ldd #_gTxSDO
	xcall $_MCOHW_PushMessage
	clra
	cmpb #0
	bne L128
	.dbline 291
;         {
	.dbline 292
;           MCOUSER_FatalError(0x8802);
	ldd #34818
	xcall $_MCOUSER_FatalError
	.dbline 293
;         }
L128:
	.dbline 294
;         return 1;
	ldd #1
	lbra L27
L122:
	.dbline 297
;       }
;       // write command
;       MCO_Send_SDO_Abort(SDO_ABORT_READONLY);
	movw #1537,0,S
	movw #2,2,S
	xcall $_MCO_Send_SDO_Abort
	.dbline 298
;       return 0;
	ldd #0
	lbra L27
L120:
	.dbline 304
;     }
; 
; #ifdef DYNAMIC_HEARTBEAT
;     // hard coding of dynamic read/write accesses
;     // access to [1017,00] - heartbeat time
;     if ((index == 0x1017) && (subindex == 0x00))
	ldy 9,S
	cpy #4119
	lbne L130
	ldab 8,S
	cmpb #0
	lbne L130
	.dbline 305
;     {
	.dbline 307
;       // read command
;       if (cmd == 0x40)
	ldab 11,S
	cmpb #64
	bne L132
	.dbline 308
;       {
	.dbline 310
;         // expedited, 2 bytes of data
;         gTxSDO.BUF[0] = 0x4B;
	movb #75,_gTxSDO+4
	.dbline 311
;         gTxSDO.BUF[4] = (UNSIGNED8) gMCOConfig.heartbeat_time;
	ldab _gMCOConfig+14+1
	stab _gTxSDO+4+4
	.dbline 312
;         gTxSDO.BUF[5] = (UNSIGNED8) (gMCOConfig.heartbeat_time >> 8);
	ldd _gMCOConfig+14
	tfr A,B
	clra
	stab _gTxSDO+4+5
	.dbline 313
;         if (!MCOHW_PushMessage(&gTxSDO))
	ldd #_gTxSDO
	xcall $_MCOHW_PushMessage
	clra
	cmpb #0
	bne L141
	.dbline 314
;         {
	.dbline 315
;           MCOUSER_FatalError(0x8802);
	ldd #34818
	xcall $_MCOUSER_FatalError
	.dbline 316
;         }
L141:
	.dbline 317
;         return 1;
	ldd #1
	lbra L27
L132:
	.dbline 320
;       }
;       // expedited write command with 2 bytes of data
;       if (*pData == 0x2B)
	ldab [12,S]
	cmpb #43
	bne L143
	.dbline 321
;       {
	.dbline 322
;         gMCOConfig.heartbeat_time = pData[5];
	ldd 12,S
	addd #5
	tfr D,Y
	ldab 0,Y
	clra
	std _gMCOConfig+14
	.dbline 323
;         gMCOConfig.heartbeat_time = (gMCOConfig.heartbeat_time << 8) + pData[4];
	ldd 12,S
	addd #4
	tfr D,Y
	ldaa _gMCOConfig+14+1
	ldab 0,Y
	std _gMCOConfig+14
	.dbline 325
;         // write response
;         gTxSDO.BUF[0] = 0x60;
	movb #96,_gTxSDO+4
	.dbline 327
;         // Needed to pass conformance test: clear unused bytes
;         gTxSDO.BUF[4] = 0;
	clr _gTxSDO+4+4
	.dbline 328
;         gTxSDO.BUF[5] = 0;
	clr _gTxSDO+4+5
	.dbline 329
;         gTxSDO.BUF[6] = 0;
	clr _gTxSDO+4+6
	.dbline 330
;         gTxSDO.BUF[7] = 0;
	clr _gTxSDO+4+7
	.dbline 331
;         if (!MCOHW_PushMessage(&gTxSDO))
	ldd #_gTxSDO
	xcall $_MCOHW_PushMessage
	clra
	cmpb #0
	bne L157
	.dbline 332
;         {
	.dbline 333
;           MCOUSER_FatalError(0x8802);
	ldd #34818
	xcall $_MCOUSER_FatalError
	.dbline 334
;         }
L157:
	.dbline 335
;         return 1;
	ldd #1
	lbra L27
L143:
	.dbline 337
;       }
;       MCO_Send_SDO_Abort(SDO_ABORT_UNSUPPORTED);
	movw #1537,0,S
	movw #0,2,S
	xcall $_MCO_Send_SDO_Abort
	.dbline 338
;       return 0;
	ldd #0
	bra L27
L130:
	.dbline 343
;     }
; #endif // DYNAMIC HEARTBEAT
; 
;     // Requested OD entry not found
;     if (subindex == 0)
	ldab 8,S
	cmpb #0
	bne L159
	.dbline 344
;     {
	.dbline 345
;       MCO_Send_SDO_Abort(SDO_ABORT_NOT_EXISTS);
	movw #1538,0,S
	movw #0,2,S
	xcall $_MCO_Send_SDO_Abort
	.dbline 346
;     }
	bra L160
L159:
	.dbline 348
;     else
;     {
	.dbline 349
;       MCO_Send_SDO_Abort(SDO_ABORT_UNKNOWNSUB);
	movw #1545,0,S
	movw #17,2,S
	xcall $_MCO_Send_SDO_Abort
	.dbline 350
;     }
L160:
	.dbline 351
;     return 0;
	ldd #0
	bra L27
L34:
	.dbline 354
;   }
;   // ignore abort received - all other produce an error
;   if (cmd != 0x80)
	ldab 11,S
	cmpb #128
	beq L161
	.dbline 355
;   {
	.dbline 356
;     MCO_Send_SDO_Abort(SDO_ABORT_UNKNOWN_COMMAND);
	movw #1284,0,S
	movw #1,2,S
	xcall $_MCO_Send_SDO_Abort
	.dbline 357
;     return 0;
	ldd #0
	bra L27
L161:
	.dbline 359
;   }
;   return 1;
	ldd #1
	.dbline -2
L27:
	.dbline 0 ; func end
	leas 14,S
	rtc
	.dbsym l x 6 c
	.dbsym l found 7 c
	.dbsym l subindex 8 c
	.dbsym l index 9 i
	.dbsym l cmd 11 c
	.dbsym l pData 12 pc
	.dbend
	.dbfunc e MCO_Prepare_TPDOs _MCO_Prepare_TPDOs fV
;              i -> 12,SP
$_MCO_Prepare_TPDOs::
	leas -13,S
	.dbline -1
	.dbline 373
; }
; 
; 
; #if NR_OF_TPDOS > 0
; /**************************************************************************
; DOES:    Called when going into the operational mode.
;          Prepares all TPDOs for operational.
; RETURNS: nothing
; **************************************************************************/
; void MCO_Prepare_TPDOs 
;   (
;     void
;   )
; {
	.dbline 376
; UNSIGNED8 i;
; 
;   i = 0;
	clr 12,S
	lbra L165
L164:
	.dbline 379
;   // prepare all TPDOs for transmission
;   while (i < NR_OF_TPDOS)
;   {
	.dbline 381
;     // this TPDO is used
;     if (gTPDOConfig[i].CAN.ID != 0)
	ldab 12,S
	clra
	tfr D,Y
	ldd #22
	emul
	tfr D,Y
	ldx #_gTPDOConfig
	tfr Y,D
	stx 4,S
	addd 4,S
	tfr D,Y
	ldy 0,Y
	cpy #0
	lbeq L167
	.dbline 382
;     {
	.dbline 384
;       // Copy current process data
;       memcpy(&gTPDOConfig[i].CAN.BUF[0],&(gProcImg[gTPDOConfig[i].offset]),gTPDOConfig[i].CAN.LEN);
	ldab 12,S
	clra
	tfr D,Y
	ldd #22
	emul
	std 10,S
	ldy #_gTPDOConfig+2
	sty 4,S
	addd 4,S
	tfr D,Y
	ldab 0,Y
	clra
	std 2,S
	ldd 10,S
	ldy #_gTPDOConfig+21
	sty 4,S
	addd 4,S
	tfr D,Y
	ldab 0,Y
	clra
	tfr D,Y
	ldx #_gProcImg
	tfr Y,D
	stx 4,S
	addd 4,S
	std 0,S
	ldd 10,S
	ldy #_gTPDOConfig+4
	sty 4,S
	addd 4,S
	xcall $_memcpy
	.dbline 387
; #ifdef USE_EVENT_TIME
;       // Reset event timer for immediate transmission
;       gTPDOConfig[i].event_timestamp = MCOHW_GetTime() - 2;
	xcall $_MCOHW_GetTime
	tfr D,X
	stx 8,S
	ldab 12,S
	clra
	tfr D,Y
	ldd #22
	emul
	tfr D,Y
	ldx #_gTPDOConfig+14
	tfr Y,D
	stx 4,S
	addd 4,S
	tfr D,Y
	ldd 8,S
	subd #2
	tfr D,X
	stx 0,Y
	.dbline 390
; #endif
; #ifdef USE_INHIBIT_TIME
;       gTPDOConfig[i].inhibit_status = 2; // Mark as ready for transmission
	ldab 12,S
	clra
	tfr D,Y
	ldd #22
	emul
	tfr D,Y
	ldx #_gTPDOConfig+20
	tfr Y,D
	stx 4,S
	addd 4,S
	tfr D,Y
	ldd #2
	stab 0,Y
	.dbline 392
;       // Reset inhibit timer for immediate transmission
;       gTPDOConfig[i].inhibit_timestamp = MCOHW_GetTime() - 2;
	xcall $_MCOHW_GetTime
	tfr D,X
	stx 6,S
	ldab 12,S
	clra
	tfr D,Y
	ldd #22
	emul
	tfr D,Y
	ldx #_gTPDOConfig+18
	tfr Y,D
	stx 4,S
	addd 4,S
	tfr D,Y
	ldd 6,S
	subd #2
	std 0,Y
	.dbline 394
; #endif
;     }
L167:
	.dbline 395
;   i++;
	inc 12,S
	.dbline 396
;   }
L165:
	.dbline 378
	ldab 12,S
	cmpb #8
	lblo L164
	.dbline 398
;   // ensure that MCO_ProcessStack starts with TPDO1
;   gTPDONr = NR_OF_TPDOS;
	movb #8,_gTPDONr
	.dbline -2
L163:
	.dbline 0 ; func end
	leas 13,S
	rtc
	.dbsym l i 12 c
	.dbend
	.dbfunc e MCO_TransmitPDO _MCO_TransmitPDO fV
;          PDONr -> 11,SP
$_MCO_TransmitPDO::
	pshd
	leas -10,S
	.dbline -1
	.dbline 409
; }
; 
; /**************************************************************************
; DOES:    Called when a TPDO needs to be transmitted
; RETURNS: nothing
; **************************************************************************/
; void MCO_TransmitPDO 
;   (
;   UNSIGNED8 PDONr  // TPDO number to transmit
;   )
; {
	.dbline 412
; #ifdef USE_INHIBIT_TIME
;   // new inhibit timer started
;   gTPDOConfig[PDONr].inhibit_status = 1;
	ldab 11,S
	clra
	tfr D,Y
	ldd #22
	emul
	tfr D,Y
	ldx #_gTPDOConfig+20
	tfr Y,D
	stx 0,S
	addd 0,S
	tfr D,Y
	ldd #1
	stab 0,Y
	.dbline 413
;   gTPDOConfig[PDONr].inhibit_timestamp = MCOHW_GetTime() + gTPDOConfig[PDONr].inhibit_time;
	xcall $_MCOHW_GetTime
	tfr D,X
	stx 8,S
	ldab 11,S
	clra
	tfr D,Y
	ldd #22
	emul
	tfr D,Y
	ldx #_gTPDOConfig+16
	tfr Y,D
	stx 0,S
	addd 0,S
	tfr D,Y
	ldd 8,S
	addd 0,Y
	tfr D,Y
	sty 6,S
	ldab 11,S
	clra
	tfr D,X
	ldd #22
	tfr X,Y
	emul
	tfr D,Y
	ldx #_gTPDOConfig+18
	tfr Y,D
	stx 0,S
	addd 0,S
	tfr D,Y
	ldx 6,S
	stx 0,Y
	.dbline 416
; #endif
; #ifdef USE_EVENT_TIME
;   gTPDOConfig[gTPDONr].event_timestamp = MCOHW_GetTime() + gTPDOConfig[gTPDONr].event_time; 
	xcall $_MCOHW_GetTime
	tfr D,X
	stx 4,S
	ldab _gTPDONr
	clra
	tfr D,Y
	ldd #22
	emul
	tfr D,Y
	ldx #_gTPDOConfig+12
	tfr Y,D
	stx 0,S
	addd 0,S
	tfr D,Y
	ldd 4,S
	addd 0,Y
	tfr D,Y
	sty 2,S
	ldab _gTPDONr
	clra
	tfr D,X
	ldd #22
	tfr X,Y
	emul
	tfr D,Y
	ldx #_gTPDOConfig+14
	tfr Y,D
	stx 0,S
	addd 0,S
	tfr D,Y
	ldx 2,S
	stx 0,Y
	.dbline 418
; #endif
;   if (!MCOHW_PushMessage(&gTPDOConfig[PDONr].CAN))
	ldab 11,S
	clra
	tfr D,Y
	ldd #22
	emul
	tfr D,Y
	ldx #_gTPDOConfig
	tfr Y,D
	stx 0,S
	addd 0,S
	xcall $_MCOHW_PushMessage
	clra
	cmpb #0
	bne L181
	.dbline 419
;   {
	.dbline 420
;     MCOUSER_FatalError(0x8801);
	ldd #34817
	xcall $_MCOUSER_FatalError
	.dbline 421
;   }
L181:
	.dbline -2
L175:
	.dbline 0 ; func end
	leas 12,S
	rtc
	.dbsym l PDONr 11 c
	.dbend
	.dbfunc e MCO_Init _MCO_Init fV
;              i -> 2,SP
;      Heartbeat -> 10,SP
;        Node_ID -> 9,SP
;       Baudrate -> 3,SP
$_MCO_Init::
	pshd
	leas -3,S
	.dbline -1
	.dbline 440
; }
; #endif // NR_OF_TPDOS > 0
; 
; /**************************************************************************
; PUBLIC FUNCTIONS
; ***************************************************************************/ 
; 
; /**************************************************************************
; DOES:    Initializes the MicroCANopen stack
;          It must be called from within MCOUSER_ResetApplication
; RETURNS: nothing
; **************************************************************************/
; void MCO_Init 
;   (
;   UNSIGNED16 Baudrate,  // CAN baudrate in kbit (1000,800,500,250,125,50,25 or 10)
;   UNSIGNED8 Node_ID,   // CANopen node ID (1-126)
;   UNSIGNED16 Heartbeat  // Heartbeat time in ms (0 for none)
;   )
; {
	.dbline 444
;   UNSIGNED8 i;
; 
;   // Init the global variables
;   gMCOConfig.Node_ID = Node_ID;
	movb 9,S,_gMCOConfig+18
	.dbline 445
;   gMCOConfig.error_code = 0;
	clr _gMCOConfig+19
	.dbline 446
;   gMCOConfig.Baudrate = Baudrate;
	movw 3,S,_gMCOConfig+12
	.dbline 447
;   gMCOConfig.heartbeat_time = Heartbeat;
	movw 10,S,_gMCOConfig+14
	.dbline 448
;   gMCOConfig.heartbeat_msg.ID = 0x700+Node_ID;
	ldab 9,S
	clra
	addd #1792
	tfr D,Y
	sty _gMCOConfig
	.dbline 449
;   gMCOConfig.heartbeat_msg.LEN = 1;
	movb #1,_gMCOConfig+2
	.dbline 451
;   // current NMT state of this node = bootup
;   gMCOConfig.heartbeat_msg.BUF[0] = 0;
	clr _gMCOConfig+4
	.dbline 452
;   gMCOConfig.error_register = 0;
	clr _gMCOConfig+20
	.dbline 455
;  
;   // Init SDO Response/Abort message
;   gTxSDO.ID = 0x580+gMCOConfig.Node_ID;
	ldab _gMCOConfig+18
	clra
	addd #1408
	std _gTxSDO
	.dbline 456
;   gTxSDO.LEN = 8;
	movb #8,_gTxSDO+2
	.dbline 459
;    
; #if NR_OF_TPDOS > 0
;   i = 0;
	clr 2,S
	bra L194
L193:
	.dbline 462
;   // init TPDOs
;   while (i < NR_OF_TPDOS)
;   {
	.dbline 463
;     gTPDOConfig[i].CAN.ID = 0;
	ldab 2,S
	clra
	tfr D,Y
	ldd #22
	emul
	tfr D,Y
	ldx #_gTPDOConfig
	tfr Y,D
	stx 0,S
	addd 0,S
	tfr D,Y
	ldx #0
	stx 0,Y
	.dbline 464
;     i++;
	inc 2,S
	.dbline 465
;   }
L194:
	.dbline 461
	ldab 2,S
	cmpb #8
	blo L193
	.dbline 468
; #endif
; #if NR_OF_RPDOS > 0
;   i = 0;
	clr 2,S
	bra L197
L196:
	.dbline 471
;   // init RPDOs
;   while (i < NR_OF_RPDOS)
;   {
	.dbline 472
;     gRPDOConfig[i].CANID = 0;
	ldy #_gRPDOConfig
	ldab 2,S
	clra
	lsld
	lsld
	sty 0,S
	addd 0,S
	tfr D,Y
	ldx #0
	stx 0,Y
	.dbline 473
;     i++;
	inc 2,S
	.dbline 474
;   }
L197:
	.dbline 470
	ldab 2,S
	cmpb #8
	blo L196
	.dbline 478
; #endif
; 
;   // init the CAN interface
;   if (!MCOHW_Init(Baudrate))
	ldd 3,S
	xcall $_MCOHW_Init
	clra
	cmpb #0
	bne L199
	.dbline 479
;   {
	.dbline 480
;     MCOUSER_FatalError(0x8802);
	ldd #34818
	xcall $_MCOUSER_FatalError
	.dbline 481
;   }
L199:
	.dbline 483
;   // for nmt master message
;   if (!MCOHW_SetCANFilter(0))
	ldd #0
	xcall $_MCOHW_SetCANFilter
	clra
	cmpb #0
	bne L201
	.dbline 484
;   {
	.dbline 485
;     MCOUSER_FatalError(0x8803);
	ldd #34819
	xcall $_MCOUSER_FatalError
	.dbline 486
;   }
L201:
	.dbline 488
;   // for SDO requests
;   if (!MCOHW_SetCANFilter(0x600+Node_ID))
	ldab 9,S
	clra
	addd #1536
	xcall $_MCOHW_SetCANFilter
	clra
	cmpb #0
	bne L203
	.dbline 489
;   {
	.dbline 490
;     MCOUSER_FatalError(0x8803);
	ldd #34819
	xcall $_MCOUSER_FatalError
	.dbline 491
;   }
L203:
	.dbline 494
; 
;   // signal to MCO_ProcessStack: we just initialized
;   gTPDONr = 0xFF;
	movb #255,_gTPDONr
	.dbline -2
L183:
	.dbline 0 ; func end
	leas 5,S
	rtc
	.dbsym l i 2 c
	.dbsym l Heartbeat 10 i
	.dbsym l Node_ID 9 c
	.dbsym l Baudrate 3 i
	.dbend
	.dbfunc e MCO_InitRPDO _MCO_InitRPDO fV
;         offset -> 14,SP
;            len -> 12,SP
;         CAN_ID -> 9,SP
;         PDO_NR -> 5,SP
$_MCO_InitRPDO::
	pshd
	leas -4,S
	.dbline -1
	.dbline 512
; }  
; 
; #if NR_OF_RPDOS > 0
; /**************************************************************************
; DOES:    This function initializes a receive PDO. Once initialized, the 
;          MicroCANopen stack automatically updates the data at offset.
; NOTE:    For data consistency, the application should not read the data
;          while function MCO_ProcessStack executes.
; RETURNS: nothing
; **************************************************************************/
; void MCO_InitRPDO
;   (
;   UNSIGNED8 PDO_NR,       // RPDO number (1-4)
;   UNSIGNED16 CAN_ID,       // CAN identifier to be used (set to 0 to use default)
;   UNSIGNED8 len,          // Number of data bytes in RPDO
;   UNSIGNED8 offset        // Offset to data location in process image
;   )
; {
	.dbline 516
; 
; #ifdef CHECK_PARAMETERS
;   // check PDO range and check node id range 1 - 127
;   if (((PDO_NR < 1)             || (PDO_NR > NR_OF_RPDOS))      || 
	ldab 5,S
	cmpb #1
	blo L211
	ldab 5,S
	cmpb #8
	bhi L211
	ldab _gMCOConfig+18
	cmpb #1
	blo L211
	ldab _gMCOConfig+18
	cmpb #127
	bls L206
L211:
	.dbline 518
;       ((gMCOConfig.Node_ID < 1) || (gMCOConfig.Node_ID > 127)))
;   {
	.dbline 519
;     MCOUSER_FatalError(0x8804);
	ldd #34820
	xcall $_MCOUSER_FatalError
	.dbline 520
;   }
L206:
	.dbline 522
;   // is size of process image exceeded?
;   if (offset >= PROCIMG_SIZE)   
	ldab 14,S
	cmpb #34
	blo L212
	.dbline 523
;   { 
	.dbline 524
;     MCOUSER_FatalError(0x8904);
	ldd #35076
	xcall $_MCOUSER_FatalError
	.dbline 525
;   }
L212:
	.dbline 527
; #endif
;   PDO_NR--;
	dec 5,S
	.dbline 528
;   gRPDOConfig[PDO_NR].len = len;
	ldy #_gRPDOConfig+2
	ldab 5,S
	clra
	lsld
	lsld
	sty 0,S
	addd 0,S
	tfr D,Y
	ldab 12,S
	stab 0,Y
	.dbline 529
;   gRPDOConfig[PDO_NR].offset = offset;
	ldy #_gRPDOConfig+3
	ldab 5,S
	clra
	lsld
	lsld
	sty 0,S
	addd 0,S
	tfr D,Y
	ldab 14,S
	stab 0,Y
	.dbline 530
;   if (CAN_ID == 0)
	ldy 9,S
	cpy #0
	bne L216
	.dbline 531
;   {
	.dbline 532
;     gRPDOConfig[PDO_NR].CANID = 0x200 + (0x100 * ((UNSIGNED16)(PDO_NR))) + gMCOConfig.Node_ID;
	ldab 5,S
	clra
	tfr D,Y
	ldd #256
	emul
	addd #512
	tfr D,Y
	ldab _gMCOConfig+18
	clra
	tfr D,X
	tfr Y,D
	stx 0,S
	addd 0,S
	tfr D,Y
	sty 2,S
	ldx #_gRPDOConfig
	ldab 5,S
	clra
	lsld
	lsld
	stx 0,S
	addd 0,S
	tfr D,Y
	ldx 2,S
	stx 0,Y
	.dbline 533
;   }
	bra L217
L216:
	.dbline 535
;   else
;   {
	.dbline 536
;     gRPDOConfig[PDO_NR].CANID = CAN_ID;
	ldy #_gRPDOConfig
	ldab 5,S
	clra
	lsld
	lsld
	sty 0,S
	addd 0,S
	tfr D,Y
	ldx 9,S
	stx 0,Y
	.dbline 537
;   }
L217:
	.dbline 538
;   if (!MCOHW_SetCANFilter(gRPDOConfig[PDO_NR].CANID))
	ldy #_gRPDOConfig
	ldab 5,S
	clra
	lsld
	lsld
	sty 0,S
	addd 0,S
	tfr D,Y
	ldd 0,Y
	xcall $_MCOHW_SetCANFilter
	clra
	cmpb #0
	bne L219
	.dbline 539
;   {
	.dbline 540
;     MCOUSER_FatalError(0x8805);
	ldd #34821
	xcall $_MCOUSER_FatalError
	.dbline 541
;   }
L219:
	.dbline -2
L205:
	.dbline 0 ; func end
	leas 6,S
	rtc
	.dbsym l offset 14 c
	.dbsym l len 12 c
	.dbsym l CAN_ID 9 i
	.dbsym l PDO_NR 5 c
	.dbend
	.dbfunc e MCO_InitTPDO _MCO_InitTPDO fV
;         offset -> 18,SP
;            len -> 16,SP
;   inhibit_time -> 13,SP
;     event_time -> 11,SP
;         CAN_ID -> 9,SP
;         PDO_NR -> 5,SP
$_MCO_InitTPDO::
	pshd
	leas -4,S
	.dbline -1
	.dbline 565
; }
; #endif // NR_OF_RPDOS > 0
; 
; 
; #if NR_OF_TPDOS > 0
; /**************************************************************************
; DOES:    This function initializes a transmit PDO. Once initialized, the 
;          MicroCANopen stack automatically handles transmitting the PDO.
;          The application can directly change the data at any time.
; NOTE:    For data consistency, the application should not write to the data
;          while function MCO_ProcessStack executes.
; RETURNS: nothing
; **************************************************************************/
; void MCO_InitTPDO
;   (
;   UNSIGNED8 PDO_NR,        // TPDO number (1-4)
;   UNSIGNED16 CAN_ID,        // CAN identifier to be used (set to 0 to use default)
;   UNSIGNED16 event_time,    // Transmitted every event_tim ms 
;   UNSIGNED16 inhibit_time,  // Inhibit time in ms for change-of-state transmit
;                       // (set to 0 if ONLY event_tim should be used)
;   UNSIGNED8 len,           // Number of data bytes in TPDO
;   UNSIGNED8 offset         // Offset to data location in process image
;   )
; {
	.dbline 569
; 
; #ifdef CHECK_PARAMETERS
;   // check PDO range, node id, len range 1 - 8 and event time or inhibit time set
;   if (((PDO_NR < 1)             || (PDO_NR > NR_OF_TPDOS))     ||
	ldab 5,S
	cmpb #1
	blo L228
	ldab 5,S
	cmpb #8
	bhi L228
	ldab _gMCOConfig+18
	cmpb #1
	blo L228
	ldab _gMCOConfig+18
	cmpb #127
	bhi L228
	ldab 16,S
	cmpb #1
	blo L228
	ldab 16,S
	cmpb #8
	bhi L228
	ldy 11,S
	cpy #0
	bne L222
	ldy 13,S
	cpy #0
	bne L222
L228:
	.dbline 573
;       ((gMCOConfig.Node_ID < 1) || (gMCOConfig.Node_ID > 127)) ||
;       ((len < 1)                || (len > 8))                  ||
;       ((event_time == 0)        && (inhibit_time == 0)))
;   {
	.dbline 574
;     MCOUSER_FatalError(0x8806);
	ldd #34822
	xcall $_MCOUSER_FatalError
	.dbline 575
;   }
L222:
	.dbline 577
;   // is size of process image exceeded?
;   if (offset >= PROCIMG_SIZE)   
	ldab 18,S
	cmpb #34
	blo L229
	.dbline 578
;   { 
	.dbline 579
;     MCOUSER_FatalError(0x8906);
	ldd #35078
	xcall $_MCOUSER_FatalError
	.dbline 580
;   }
L229:
	.dbline 582
; #endif
;   PDO_NR--;
	dec 5,S
	.dbline 583
;   if (CAN_ID == 0)
	ldy 9,S
	cpy #0
	bne L231
	.dbline 584
;   {
	.dbline 585
;     gTPDOConfig[PDO_NR].CAN.ID = 0x180 + (0x100 * ((UNSIGNED16)(PDO_NR))) + gMCOConfig.Node_ID;
	ldab 5,S
	clra
	tfr D,Y
	ldd #256
	emul
	addd #384
	tfr D,Y
	ldab _gMCOConfig+18
	clra
	tfr D,X
	tfr Y,D
	stx 0,S
	addd 0,S
	tfr D,Y
	sty 2,S
	ldab 5,S
	clra
	tfr D,X
	ldd #22
	tfr X,Y
	emul
	tfr D,Y
	ldx #_gTPDOConfig
	tfr Y,D
	stx 0,S
	addd 0,S
	tfr D,Y
	ldx 2,S
	stx 0,Y
	.dbline 586
;   }
	bra L232
L231:
	.dbline 588
;   else
;   {
	.dbline 589
;     gTPDOConfig[PDO_NR].CAN.ID = CAN_ID;
	ldab 5,S
	clra
	tfr D,Y
	ldd #22
	emul
	tfr D,Y
	ldx #_gTPDOConfig
	tfr Y,D
	stx 0,S
	addd 0,S
	tfr D,Y
	ldx 9,S
	stx 0,Y
	.dbline 590
;   }
L232:
	.dbline 591
;   gTPDOConfig[PDO_NR].CAN.LEN = len;
	ldab 5,S
	clra
	tfr D,Y
	ldd #22
	emul
	tfr D,Y
	ldx #_gTPDOConfig+2
	tfr Y,D
	stx 0,S
	addd 0,S
	tfr D,Y
	ldab 16,S
	stab 0,Y
	.dbline 592
;   gTPDOConfig[PDO_NR].offset = offset;
	ldab 5,S
	clra
	tfr D,Y
	ldd #22
	emul
	tfr D,Y
	ldx #_gTPDOConfig+21
	tfr Y,D
	stx 0,S
	addd 0,S
	tfr D,Y
	ldab 18,S
	stab 0,Y
	.dbline 594
; #ifdef USE_EVENT_TIME
;   gTPDOConfig[PDO_NR].event_time = event_time;
	ldab 5,S
	clra
	tfr D,Y
	ldd #22
	emul
	tfr D,Y
	ldx #_gTPDOConfig+12
	tfr Y,D
	stx 0,S
	addd 0,S
	tfr D,Y
	ldx 11,S
	stx 0,Y
	.dbline 597
; #endif
; #ifdef USE_INHIBIT_TIME
;   gTPDOConfig[PDO_NR].inhibit_time = inhibit_time;
	ldab 5,S
	clra
	tfr D,Y
	ldd #22
	emul
	tfr D,Y
	ldx #_gTPDOConfig+16
	tfr Y,D
	stx 0,S
	addd 0,S
	tfr D,Y
	ldx 13,S
	stx 0,Y
	.dbline -2
L221:
	.dbline 0 ; func end
	leas 6,S
	rtc
	.dbsym l offset 18 c
	.dbsym l len 16 c
	.dbsym l inhibit_time 13 i
	.dbsym l event_time 11 i
	.dbsym l CAN_ID 9 i
	.dbsym l PDO_NR 5 c
	.dbend
	.dbfunc e MCO_ProcessStack _MCO_ProcessStack fc
;        ret_val -> 18,SP
;              i -> 19,SP
$_MCO_ProcessStack::
	leas -20,S
	.dbline -1
	.dbline 614
; #endif
; }
; #endif // NR_OF_TPDOS > 0
; 
; 
; /**************************************************************************
; DOES:    This function implements the main MicroCANopen protocol stack. 
;          It must be called frequently to ensure proper operation of the
;          communication stack. 
;          Typically it is called from the while(1) loop in main.
; RETURNS: 0 if nothing was done, 1 if a CAN message was sent or received
; **************************************************************************/
; UNSIGNED8 MCO_ProcessStack
;   (
;   void
;   )
; {
	.dbline 616
;   UNSIGNED8 i;
;   UNSIGNED8 ret_val = 0;
	clr 18,S
	.dbline 618
; 
;   if (Gen_Flags & Gen_Flags_No2Wire)
	brclr _Gen_Flags,#32,L239
	.dbline 619
;     No2WireCnt++;
	ldy _No2WireCnt
	iny
	sty _No2WireCnt
L239:
	.dbline 621
; 
;   if (No2WireCnt > 2)
	ldy _No2WireCnt
	cpy #2
	ble L241
	.dbline 622
;   {
	.dbline 623
;     InitCANopen();
	xcall $_InitCANopen
	.dbline 624
;   }
L241:
	.dbline 628
; 
;   // check if this is right after boot-up
;   // was set by MCO_Init
;   if (gTPDONr == 0xFF)
	ldab _gTPDONr
	cmpb #255
	bne L243
	.dbline 629
;   {
	.dbline 631
;     // init heartbeat time
;     gMCOConfig.heartbeat_timestamp = MCOHW_GetTime() + gMCOConfig.heartbeat_time;
	xcall $_MCOHW_GetTime
	addd _gMCOConfig+14
	std _gMCOConfig+16
	.dbline 633
;     // send boot-up message  
;     if (!MCOHW_PushMessage(&gMCOConfig.heartbeat_msg))
	ldd #_gMCOConfig
	xcall $_MCOHW_PushMessage
	clra
	cmpb #0
	bne L247
	.dbline 634
;     {
	.dbline 635
;       MCOUSER_FatalError(0x8801);
	ldd #34817
	xcall $_MCOUSER_FatalError
	.dbline 636
;     }
L247:
	.dbline 639
; #ifdef AUTOSTART
;     // going into operational state
;     gMCOConfig.heartbeat_msg.BUF[0] = 0x05;
	movb #5,_gMCOConfig+4
	.dbline 641
; #if NR_OF_TPDOS > 0
;     MCO_Prepare_TPDOs();
	xcall $_MCO_Prepare_TPDOs
	.dbline 648
; #endif
; #else
;     // going into pre-operational state
;     gMCOConfig.heartbeat_msg.BUF[0] = 0x7F;
; #endif
;     // return value to default
;     gTPDONr = NR_OF_TPDOS;
	movb #8,_gTPDONr
	.dbline 649
;     return 1;
	ldd #1
	lbra L238
L243:
	.dbline 654
;   }
;  
;   // work on next incoming messages
;   // if message received
;   if (MCOHW_PullMessage(&gRxCAN))
	ldd #_gRxCAN
	xcall $_MCOHW_PullMessage
	clra
	cmpb #0
	lbeq L250
	.dbline 655
;   {
	.dbline 657
;     // is it an NMT master message?
;     if (gRxCAN.ID == 0)
	ldy _gRxCAN
	cpy #0
	lbne L252
	.dbline 658
;     {
	.dbline 660
;       // nmt message is for this node or all nodes
;       if ((gRxCAN.BUF[1] == gMCOConfig.Node_ID) || (gRxCAN.BUF[1] == 0))
	ldab _gRxCAN+4+1
	cmpb _gMCOConfig+18
	beq L261
	ldab _gRxCAN+4+1
	cmpb #0
	bne L254
L261:
	.dbline 661
;       {
	.dbline 662
;         switch (gRxCAN.BUF[0])
	ldab _gRxCAN+4
	clra
	std 16,S
	cpd #1
	beq L266
	ldy 16,S
	cpy #2
	beq L268
	ldy 16,S
	cpy #1
	blt L263
L274:
	ldy 16,S
	cpy #128
	beq L270
	ldy 16,S
	cpy #129
	beq L272
	ldy 16,S
	cpy #130
	beq L273
	bra L263
L266:
	.dbline 666
;         {
;           // start node
;           case 1:
;             gMCOConfig.heartbeat_msg.BUF[0] = 5;
	movb #5,_gMCOConfig+4
	.dbline 668
; #if NR_OF_TPDOS > 0          
;             MCO_Prepare_TPDOs();
	xcall $_MCO_Prepare_TPDOs
	.dbline 670
; #endif
;             break;
	bra L263
L268:
	.dbline 674
; 
;           // stop node
;           case 2:
;             gMCOConfig.heartbeat_msg.BUF[0] = 4;
	movb #4,_gMCOConfig+4
	.dbline 675
;             break;
	bra L263
L270:
	.dbline 679
; 
;           // enter pre-operational
;           case 128:
;             gMCOConfig.heartbeat_msg.BUF[0] = 127;
	movb #127,_gMCOConfig+4
	.dbline 680
;             break;
	bra L263
L272:
	.dbline 684
;    
;           // node reset
;           case 129:
;             MCOUSER_ResetApplication();
	xcall $_MCOUSER_ResetApplication
	.dbline 685
;             break;
	bra L263
L273:
	.dbline 689
; 
;           // node reset communication
;           case 130:
;             MCOUSER_ResetCommunication();
	xcall $_MCOUSER_ResetCommunication
	.dbline 690
; 			INTR_ON();
	cli
	.dbline 691
;             break;
	.dbline 695
; 
;           // unknown command
;           default:
;             break;
L263:
	.dbline 698
;         }
; 
;         return 1;
	ldd #1
	lbra L238
L254:
	.dbline 700
;       } // NMT message addressed to this node
;     } // NMT master message received
L252:
	.dbline 703
;     
;     // if node is not stopped...
;     if (gMCOConfig.heartbeat_msg.BUF[0] != 4)
	ldab _gMCOConfig+4
	cmpb #4
	beq L275
	.dbline 704
;     {
	.dbline 706
;       // is the message an SDO request message for us?
;       if (gRxCAN.ID == gMCOConfig.Node_ID+0x600)
	ldab _gMCOConfig+18
	clra
	addd #1536
	cpd _gRxCAN
	bne L278
	.dbline 707
;       {
	.dbline 709
;         // handle SDO request - return value not used in this version
;         i = MCO_Handle_SDO_Request(&gRxCAN.BUF[0]);
	ldd #_gRxCAN+4
	xcall $_MCO_Handle_SDO_Request
	stab 19,S
	.dbline 710
;         return 1;
	ldd #1
	lbra L238
L278:
	.dbline 712
;       }
;     }
L275:
	.dbline 716
; 
; #if NR_OF_RPDOS > 0
;     // is the node operational?
;     if (gMCOConfig.heartbeat_msg.BUF[0] == 5)
	ldab _gMCOConfig+4
	cmpb #5
	lbne L282
	.dbline 717
;     {
	.dbline 718
;       i = 0;
	clr 19,S
	lbra L286
L285:
	.dbline 721
;       // loop through RPDOs
;       while (i < NR_OF_RPDOS)
;       {
	.dbline 723
;         // is this one of our RPDOs?
;         if (gRxCAN.ID == gRPDOConfig[i].CANID)
	ldy #_gRPDOConfig
	ldab 19,S
	clra
	lsld
	lsld
	sty 4,S
	addd 4,S
	tfr D,Y
	ldx _gRxCAN
	cpx 0,Y
	bne L288
	.dbline 724
;         {
	.dbline 726
;           // copy data from RPDO to process image
;           memcpy(&(gProcImg[gRPDOConfig[i].offset]),&(gRxCAN.BUF[0]),gRPDOConfig[i].len);
	ldab 19,S
	clra
	lsld
	lsld
	std 14,S
	ldy #_gRPDOConfig+2
	sty 4,S
	addd 4,S
	tfr D,Y
	ldab 0,Y
	clra
	std 2,S
	ldy #_gRxCAN+4
	sty 0,S
	ldd 14,S
	ldy #_gRPDOConfig+3
	sty 4,S
	addd 4,S
	tfr D,Y
	ldab 0,Y
	clra
	tfr D,Y
	ldx #_gProcImg
	tfr Y,D
	stx 4,S
	addd 4,S
	xcall $_memcpy
	.dbline 728
;           // exit the loop
;           i = NR_OF_RPDOS;
	leax 19,S
	movb #8,0,x
	.dbline 729
;           ret_val = 1;
	leax 18,S
	movb #1,0,x
	.dbline 730
;         }
L288:
	.dbline 731
;         i++;
	inc 19,S
	.dbline 732
;       } // for all RPDOs
L286:
	.dbline 720
	ldab 19,S
	cmpb #8
	lblo L285
	.dbline 733
;     } // node is operational
L282:
	.dbline 735
; #endif // NR_OF_RPDOS > 0
;   } // Message received
L250:
	.dbline 739
; 
; #if NR_OF_TPDOS > 0
;   // is the node operational?
;   if (gMCOConfig.heartbeat_msg.BUF[0] == 5)
	ldab _gMCOConfig+4
	cmpb #5
	lbne L293
	.dbline 740
;   {
	.dbline 742
;     // check next TPDO for transmission
;     gTPDONr++;
	inc _gTPDONr
	.dbline 743
;     if (gTPDONr >= NR_OF_TPDOS)
	ldab _gTPDONr
	cmpb #8
	blo L296
	.dbline 744
;     {
	.dbline 745
;       gTPDONr = 0;
	clr _gTPDONr
	.dbline 746
;     }
L296:
	.dbline 748
;     // is the TPDO 'gTPDONr' in use?
;     if (gTPDOConfig[gTPDONr].CAN.ID != 0)
	ldab _gTPDONr
	clra
	tfr D,Y
	ldd #22
	emul
	tfr D,Y
	ldx #_gTPDOConfig
	tfr Y,D
	stx 4,S
	addd 4,S
	tfr D,Y
	ldy 0,Y
	cpy #0
	lbeq L298
	.dbline 749
;     {
	.dbline 752
; #ifdef USE_EVENT_TIME
;       // does TPDO use event timer and event timer is expired? if so we need to transmit now
;       if ((gTPDOConfig[gTPDONr].event_time != 0) && 
	ldab _gTPDONr
	clra
	tfr D,Y
	ldd #22
	emul
	std 12,S
	ldy #_gTPDOConfig+12
	sty 4,S
	addd 4,S
	tfr D,Y
	ldy 0,Y
	cpy #0
	lbeq L300
	ldd 12,S
	ldy #_gTPDOConfig+14
	sty 4,S
	addd 4,S
	tfr D,Y
	ldd 0,Y
	xcall $_MCOHW_IsTimeExpired
	clra
	cmpb #0
	beq L300
	.dbline 754
;           (MCOHW_IsTimeExpired(gTPDOConfig[gTPDONr].event_timestamp)) )
;       {
	.dbline 756
;         // get data from process image and transmit
;         memcpy(&(gTPDOConfig[gTPDONr].CAN.BUF[0]),&(gProcImg[gTPDOConfig[gTPDONr].offset]),gTPDOConfig[gTPDONr].CAN.LEN);
	ldab _gTPDONr
	clra
	tfr D,Y
	ldd #22
	emul
	std 10,S
	ldy #_gTPDOConfig+2
	sty 4,S
	addd 4,S
	tfr D,Y
	ldab 0,Y
	clra
	std 2,S
	ldd 10,S
	ldy #_gTPDOConfig+21
	sty 4,S
	addd 4,S
	tfr D,Y
	ldab 0,Y
	clra
	tfr D,Y
	ldx #_gProcImg
	tfr Y,D
	stx 4,S
	addd 4,S
	std 0,S
	ldd 10,S
	ldy #_gTPDOConfig+4
	sty 4,S
	addd 4,S
	xcall $_memcpy
	.dbline 757
;         MCO_TransmitPDO(gTPDONr);
	ldab _gTPDONr
	clra
	xcall $_MCO_TransmitPDO
	.dbline 758
;         return 1;
	ldd #1
	lbra L238
L300:
	.dbline 763
;       }
; #endif // USE_EVENT_TIME
; #ifdef USE_INHIBIT_TIME
;       // does the TPDO use an inhibit time? - COS transmission
;       if (gTPDOConfig[gTPDONr].inhibit_time != 0)
	ldab _gTPDONr
	clra
	tfr D,Y
	ldd #22
	emul
	tfr D,Y
	ldx #_gTPDOConfig+16
	tfr Y,D
	stx 4,S
	addd 4,S
	tfr D,Y
	ldy 0,Y
	cpy #0
	lbeq L307
	.dbline 764
;       {
	.dbline 766
;         // is the inihibit timer currently running?
;         if (gTPDOConfig[gTPDONr].inhibit_status > 0)
	ldab _gTPDONr
	clra
	tfr D,Y
	ldd #22
	emul
	tfr D,Y
	ldx #_gTPDOConfig+20
	tfr Y,D
	stx 4,S
	addd 4,S
	tfr D,Y
	ldab 0,Y
	cmpb #0
	bls L310
	.dbline 767
;         {
	.dbline 769
;           // has the inhibit time expired?
;           if (MCOHW_IsTimeExpired(gTPDOConfig[gTPDONr].inhibit_timestamp))
	ldab _gTPDONr
	clra
	tfr D,Y
	ldd #22
	emul
	tfr D,Y
	ldx #_gTPDOConfig+18
	tfr Y,D
	stx 4,S
	addd 4,S
	tfr D,Y
	ldd 0,Y
	xcall $_MCOHW_IsTimeExpired
	clra
	cmpb #0
	beq L313
	.dbline 770
;           {
	.dbline 772
;             // is there a new transmit message already waiting?
;             if (gTPDOConfig[gTPDONr].inhibit_status == 2)
	ldab _gTPDONr
	clra
	tfr D,Y
	ldd #22
	emul
	tfr D,Y
	ldx #_gTPDOConfig+20
	tfr Y,D
	stx 4,S
	addd 4,S
	tfr D,Y
	ldab 0,Y
	cmpb #2
	bne L316
	.dbline 773
;             { 
	.dbline 775
;               // transmit now
;               MCO_TransmitPDO(gTPDONr);
	ldab _gTPDONr
	clra
	xcall $_MCO_TransmitPDO
	.dbline 776
;               return 1;
	ldd #1
	lbra L238
L316:
	.dbline 780
;             }
;             // no new message waiting, but timer expired
;             else 
;             {
	.dbline 781
;               gTPDOConfig[gTPDONr].inhibit_status = 0;
	ldab _gTPDONr
	clra
	tfr D,Y
	ldd #22
	emul
	tfr D,Y
	ldx #_gTPDOConfig+20
	tfr Y,D
	stx 4,S
	addd 4,S
	tfr D,Y
	ldd #0
	stab 0,Y
	.dbline 782
;             }
	.dbline 783
;           }
L313:
	.dbline 784
;         }
L310:
	.dbline 786
;         // is inhibit status 0 or 1?
;         if (gTPDOConfig[gTPDONr].inhibit_status < 2)
	ldab _gTPDONr
	clra
	tfr D,Y
	ldd #22
	emul
	tfr D,Y
	ldx #_gTPDOConfig+20
	tfr Y,D
	stx 4,S
	addd 4,S
	tfr D,Y
	ldab 0,Y
	cmpb #2
	lbhs L320
	.dbline 787
;         {
	.dbline 789
;           // has application data changed?
;           if ((memcmp(&gTPDOConfig[gTPDONr].CAN.BUF[0],&(gProcImg[gTPDOConfig[gTPDONr].offset]),gTPDOConfig[gTPDONr].CAN.LEN) != 0))
	ldab _gTPDONr
	clra
	tfr D,Y
	ldd #22
	emul
	std 8,S
	ldy #_gTPDOConfig+2
	sty 4,S
	addd 4,S
	tfr D,Y
	ldab 0,Y
	clra
	std 2,S
	ldd 8,S
	ldy #_gTPDOConfig+21
	sty 4,S
	addd 4,S
	tfr D,Y
	ldab 0,Y
	clra
	tfr D,Y
	ldx #_gProcImg
	tfr Y,D
	stx 4,S
	addd 4,S
	std 0,S
	ldd 8,S
	ldy #_gTPDOConfig+4
	sty 4,S
	addd 4,S
	xcall $_memcmp
	cpd #0
	lbeq L323
	.dbline 790
;           {
	.dbline 792
;             // Copy application data
;             memcpy(&gTPDOConfig[gTPDONr].CAN.BUF[0],&(gProcImg[gTPDOConfig[gTPDONr].offset]),gTPDOConfig[gTPDONr].CAN.LEN);
	ldab _gTPDONr
	clra
	tfr D,Y
	ldd #22
	emul
	std 6,S
	ldy #_gTPDOConfig+2
	sty 4,S
	addd 4,S
	tfr D,Y
	ldab 0,Y
	clra
	std 2,S
	ldd 6,S
	ldy #_gTPDOConfig+21
	sty 4,S
	addd 4,S
	tfr D,Y
	ldab 0,Y
	clra
	tfr D,Y
	ldx #_gProcImg
	tfr Y,D
	stx 4,S
	addd 4,S
	std 0,S
	ldd 6,S
	ldy #_gTPDOConfig+4
	sty 4,S
	addd 4,S
	xcall $_memcpy
	.dbline 794
;             // has inhibit time expired?
;             if (gTPDOConfig[gTPDONr].inhibit_status == 0)
	ldab _gTPDONr
	clra
	tfr D,Y
	ldd #22
	emul
	tfr D,Y
	ldx #_gTPDOConfig+20
	tfr Y,D
	stx 4,S
	addd 4,S
	tfr D,Y
	ldab 0,Y
	cmpb #0
	bne L331
	.dbline 795
;             {
	.dbline 797
;               // transmit now
;               MCO_TransmitPDO(gTPDONr);
	ldab _gTPDONr
	clra
	xcall $_MCO_TransmitPDO
	.dbline 800
; 			  // Clear first byte to force transmit again when new image data is receive (via serial port)
; 			  //gProcImg[gTPDOConfig[gTPDONr].offset] = gTPDOConfig[gTPDONr].CAN.BUF[0] = 0;
;               return 1;
	ldd #1
	bra L238
L331:
	.dbline 804
;             }
;             // inhibit status is 1
;             else
;             {
	.dbline 806
;               // wait for inhibit time to expire 
;               gTPDOConfig[gTPDONr].inhibit_status = 2;
	ldab _gTPDONr
	clra
	tfr D,Y
	ldd #22
	emul
	tfr D,Y
	ldx #_gTPDOConfig+20
	tfr Y,D
	stx 4,S
	addd 4,S
	tfr D,Y
	ldd #2
	stab 0,Y
	.dbline 807
;             }
	.dbline 808
;           }
L323:
	.dbline 809
;         }
L320:
	.dbline 810
;       } // Inhibit Time != 0
L307:
	.dbline 812
; #endif // USE_INHIBIT_TIME
;     } // PDO active (CAN_ID != 0)  
L298:
	.dbline 813
;   } // if node is operational
L293:
	.dbline 817
; #endif // NR_OF_TPDOS > 0
;   
;   // do we produce a heartbeat?
;   if (gMCOConfig.heartbeat_time != 0)
	ldy _gMCOConfig+14
	cpy #0
	beq L335
	.dbline 818
;   {
	.dbline 820
;     // has heartbeat time passed?
;     if (MCOHW_IsTimeExpired(gMCOConfig.heartbeat_timestamp))
	ldd _gMCOConfig+16
	xcall $_MCOHW_IsTimeExpired
	clra
	cmpb #0
	beq L338
	.dbline 821
;     {
	.dbline 823
;       // transmit heartbeat message
;       if (!MCOHW_PushMessage(&gMCOConfig.heartbeat_msg))
	ldd #_gMCOConfig
	xcall $_MCOHW_PushMessage
	clra
	cmpb #0
	bne L341
	.dbline 824
;       {
	.dbline 825
;         MCOUSER_FatalError(0x8801);
	ldd #34817
	xcall $_MCOUSER_FatalError
	.dbline 826
;       }
L341:
	.dbline 828
;       // get new heartbeat time for next transmission
;       gMCOConfig.heartbeat_timestamp = MCOHW_GetTime() + gMCOConfig.heartbeat_time;
	xcall $_MCOHW_GetTime
	addd _gMCOConfig+14
	std _gMCOConfig+16
	.dbline 829
;       ret_val = 1;
	leax 18,S
	movb #1,0,x
	.dbline 830
;     }
L338:
	.dbline 831
;   }
L335:
	.dbline 832
;   return ret_val;
	ldab 18,S
	clra
	.dbline -2
L238:
	.dbline 0 ; func end
	leas 20,S
	rtc
	.dbsym l ret_val 18 c
	.dbsym l i 19 c
	.dbend
	.dbfunc e Reset_Max33011 _Reset_Max33011 fV
;              i -> 0,SP
;              j -> 2,SP
$_Reset_Max33011::
	leas -4,S
	.dbline -1
	.dbline 837
; }
; 
; 
; void Reset_Max33011 ( void )
; {
	.dbline 840
; 
;     int i,j;
;     Gen_Flags &= ~Gen_Flags_Menu_Active;
	bclr _Gen_Flags,#64
	.dbline 841
;     CANCTL0 = 0x01;				  		   	  // Put CAN in initialization mode
	movb #1,0x140
	.dbline 842
;     Timer1 = .05 * RTI_One_Sec;
	movw #48,_Timer1
L346:
	.dbline 843
;     while (!(CANCTL1 & 0x01) && Timer1 );	  // wait for acknowledge
L347:
	.dbline 843
	ldab 0x141
	bitb #1
	bne L349
	ldy _Timer1
	cpy #0
	bne L346
L349:
	.dbline 844
;     MODRR |= 0x03;	   		 		   		  // Reroute MSCAN0 to PJ6,PJ7
	bset 0x257,#3
	.dbline 845
;     DDRM |= 0x02;				  			  // Port M bit 1 set as output
	bset 0x252,#2
	.dbline 846
;     for (i=0;i<52;i++)
	movw #0,0,S
L350:
	.dbline 847
;     {
	.dbline 848
; 		for(j=0;j<50;j++);
	movw #0,2,S
L354:
	.dbline 848
L355:
	.dbline 848
	ldy 2,S
	iny
	sty 2,S
	.dbline 848
	cpy #50
	blt L354
	.dbline 849
; 	    PTM ^= 0x02;  			  	 	      // Output 40 clock pulses on CAN_TX, This clears any Fault condition in the MAX33011
	ldab 0x250
	eorb #2
	stab 0x250
	.dbline 850
;     }
L351:
	.dbline 846
	ldy 0,S
	iny
	sty 0,S
	.dbline 846
	cpy #52
	blt L350
	.dbline 851
;     No2WireCnt = 0;
	movw #0,_No2WireCnt
	.dbline 852
;     Gen_Flags &= ~Gen_Flags_No2Wire;
	bclr _Gen_Flags,#32
	.dbline 853
;     MODRR &= ~0x03;				  	 		  // Reroute MSCAN0 to PM0,PM1
	bclr 0x257,#3
	.dbline 854
;     CANCTL0 &= ~0x01;				  		  // Take CAN out of initialization mode
	bclr 0x140,#1
	.dbline 855
;     Timer1 = .05 * RTI_One_Sec;
	movw #48,_Timer1
L358:
	.dbline 856
;     while ((CANCTL1 & 0x01) && Timer1 );	  // wait for acknowledge
L359:
	.dbline 856
	brclr 0x141,#1,L361
	ldy _Timer1
	cpy #0
	bne L358
L361:
	.dbline -2
L345:
	.dbline 0 ; func end
	leas 4,S
	rtc
	.dbsym l i 0 I
	.dbsym l j 2 I
	.dbend
	.area bss
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\mco.c
_gTxMonitor::
	.blkb 12
	.dbstruct 0 12 .1
	.dbfield 0 ID i
	.dbfield 2 LEN c
	.dbfield 3 dummy32bit c
	.dbfield 4 BUF A[8:8]c
	.dbend
	.dbsym e gTxMonitor _gTxMonitor S[.1]
_gTxNMT::
	.blkb 12
	.dbsym e gTxNMT _gTxNMT S[.1]
_gTxSDO::
	.blkb 12
	.dbsym e gTxSDO _gTxSDO S[.1]
_gRxCAN::
	.blkb 12
	.dbsym e gRxCAN _gRxCAN S[.1]
_gRPDOConfig::
	.blkb 32
	.dbstruct 0 4 .4
	.dbfield 0 CANID i
	.dbfield 2 len c
	.dbfield 3 offset c
	.dbend
	.dbsym e gRPDOConfig _gRPDOConfig A[32:8]S[.4]
_gTPDOConfig::
	.blkb 176
	.dbstruct 0 22 .3
	.dbfield 0 CAN S[.1]
	.dbfield 12 event_time i
	.dbfield 14 event_timestamp i
	.dbfield 16 inhibit_time i
	.dbfield 18 inhibit_timestamp i
	.dbfield 20 inhibit_status c
	.dbfield 21 offset c
	.dbend
	.dbsym e gTPDOConfig _gTPDOConfig A[176:8]S[.3]
_gMCOConfig::
	.blkb 21
	.dbstruct 0 21 .2
	.dbfield 0 heartbeat_msg S[.1]
	.dbfield 12 Baudrate i
	.dbfield 14 heartbeat_time i
	.dbfield 16 heartbeat_timestamp i
	.dbfield 18 Node_ID c
	.dbfield 19 error_code c
	.dbfield 20 error_register c
	.dbend
	.dbsym e gMCOConfig _gMCOConfig S[.2]
_RamCkSum::
	.blkb 1
	.dbsym e RamCkSum _RamCkSum c
_RamData::
	.blkb 1
	.dbsym e RamData _RamData c
_RamAddress::
	.blkb 2
	.dbsym e RamAddress _RamAddress pc
_StartAddress::
	.blkb 2
	.dbsym e StartAddress _StartAddress pfV
