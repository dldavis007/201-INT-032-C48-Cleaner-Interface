	.module mcohw.c
	.area text
	.dbfile ..\..\REV3~1.25\SOURCE~1\mcohw.c
	.area data
	.dbfile ..\..\REV3~1.25\SOURCE~1\mcohw.c
_gTimCnt::
	.blkb 2
	.area idata
	.word 0
	.area data
	.dbfile ..\..\REV3~1.25\SOURCE~1\mcohw.c
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\mcohw.c
	.dbsym e gTimCnt _gTimCnt i
_gCANFilter::
	.blkb 1
	.area idata
	.byte 0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\mcohw.c
	.dbsym e gCANFilter _gCANFilter c
	.area extcode(paged)
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\mcohw.c
	.dbfunc e set_screener_std _set_screener_std fV
;       ID_Match -> 9,SP
;        ID_Mask -> 7,SP
;       Screener -> 3,SP
$_set_screener_std::
	pshd
	leas -2,S
	.dbline -1
	.dbline 72
; /**************************************************************************
; MODULE:    MCOHW
; CONTAINS:  Preliminary, limited hardware driver implementation for
;            the 2-Wire Controller
;            This version re-uses functions provided by
;            www.esacademy.com/faq/progs
;            If you need a full-featured 8XC591 MicroCANopen driver, contact
;            support@esacademy.com
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
; ---------------------------------------------------------------------------
; PRELIMINARY VERSION
; 
; Shortcomings:
; Only supports up to 2 (out of 8 possible) receive filter
;   => This version can only be used with a maximum of 2 RPDOs
; 
; Only supports a transmit queue of length "1"
; If queue occupied, waits until it is clear
; **************************************************************************/
; 
; #include "Controller.h"
; #include "mc9s12a128.h"
; #include "mcohw.h"
; #include "Interrupts.h"
; #include "Subroutines.h"
; 
; extern char Gen_Flags;
; extern unsigned int Timer1;
; 
; // Global timer/conter variable, incremented every millisecond
; UNSIGNED16 gTimCnt = 0;
; 
; // global can filter count
; UNSIGNED8 gCANFilter = 0;
; 
; /**************************************************************************
; DOES:    Sets one of the four screeners (acceptance filters) of
;          the CAN controller.
; CAUTION: Does assume the screeners are set-up to be used as "one
;          long filter for standard messages"
; RETURNS: nothing
; **************************************************************************/
; void set_screener_std
;   (
;   UNSIGNED8 Screener,  // 1 - 8, one of the 8 screeners
;   UNSIGNED16 ID_Mask,   // Bit set: corresponding bit in ID is don't care
;                   // Bit clear: corresponding bit in ID must match ID_Match
;   UNSIGNED16 ID_Match  // ID_Match - Match/Code value for ID
;   ) 
;   //darrell
;   //The following arguments are not used, this has been modified for 16 bit filters  			 			
;   //UNSIGNED8 B1_Mask,   // Bit set: cor. bit in data byte 1 is don't care
;                   // Bit clear: cor. bit in data byte 1 must match B1_Match
;   //UNSIGNED8 B1_Match,  // Match/Code value for data byte 1
;   //UNSIGNED8 B2_Mask,   // Bit set: cor. bit in data byte 2 is don't care
;                   // Bit clear: cor. bit in data byte 2 must match B2_Match
;   //UNSIGNED8 B2_Match   // Match/Code value for data byte 2
;   //)
; {
	.dbline 74
;    // ensure 0 <= screener <= 7
;   Screener -= 1;
	dec 3,S
	.dbline 75
;   Screener &= 0x7;
	bclr 3,S,#248
	.dbline 82
; 
;   // Disable screener, match on any message
;   //ID_Mask = 0xffff;
;   // Enable screener
;   //ID_Mask = 0x0000;
;   
;   switch (Screener)
	ldab 3,S
	clra
	std 0,S
	cpd #0
	beq L9
	ldy 0,S
	cpy #1
	beq L10
	ldy 0,S
	cpy #2
	beq L11
	ldy 0,S
	cpy #3
	beq L12
	ldy 0,S
	cpy #4
	lbeq L13
	ldy 0,S
	cpy #5
	lbeq L14
	ldy 0,S
	cpy #6
	lbeq L15
	ldy 0,S
	cpy #7
	lbeq L16
	lbra L6
L9:
	.dbline 86
;   {
;    	case 0:
; 	
;       CANIDMR0 = (UNSIGNED8) (ID_Mask >> 3);
	ldd 7,S
	lsrd
	lsrd
	lsrd
	stab 0x154
	.dbline 89
;       //CANIDMR0 = (UNSIGNED8) (((ID_Mask & 0x07) << 5) | 0x1F);
; 	  
; 	  CANIDAR0 = (UNSIGNED8) (ID_Match >> 3);
	ldd 9,S
	lsrd
	lsrd
	lsrd
	stab 0x150
	.dbline 91
; 	  //CANIDAR0 = (UNSIGNED8) (ID_Match & 0x07) << 5;
; 	break;
	lbra L7
L10:
	.dbline 95
; 	
; 	case 1:
; 	
;       CANIDMR1 = (UNSIGNED8) (ID_Mask >> 3);
	ldd 7,S
	lsrd
	lsrd
	lsrd
	stab 0x155
	.dbline 98
;       //CANIDMR1 = (UNSIGNED8) (((ID_Mask & 0x07) << 5) | 0x1F);
;   
; 	  CANIDAR1 = (UNSIGNED8) (ID_Match >> 3);
	ldd 9,S
	lsrd
	lsrd
	lsrd
	stab 0x151
	.dbline 100
; 	  //CANIDAR1 = (UNSIGNED8) (ID_Match & 0x07) << 5;
; 	break;
	lbra L7
L11:
	.dbline 104
; 	  	
; 	case 2:
; 	
;       CANIDMR2 = (UNSIGNED8) (ID_Mask >> 3);
	ldd 7,S
	lsrd
	lsrd
	lsrd
	stab 0x156
	.dbline 107
;       //CANIDMR2 = (UNSIGNED8) (((ID_Mask & 0x07) << 5) | 0x1F);
;   
; 	  CANIDAR2 = (UNSIGNED8) (ID_Match >> 3);
	ldd 9,S
	lsrd
	lsrd
	lsrd
	stab 0x152
	.dbline 109
; 	  //CANIDAR2 = (UNSIGNED8) (ID_Match & 0x07) << 5;
; 	break;
	bra L7
L12:
	.dbline 113
; 	  	
; 	case 3:
; 	
;       CANIDMR3 = (UNSIGNED8) (ID_Mask >> 3);
	ldd 7,S
	lsrd
	lsrd
	lsrd
	stab 0x157
	.dbline 116
;       //CANIDMR3 = (UNSIGNED8) (((ID_Mask & 0x07) << 5) | 0x1F);
;   
; 	  CANIDAR3 = (UNSIGNED8) (ID_Match >> 3);
	ldd 9,S
	lsrd
	lsrd
	lsrd
	stab 0x153
	.dbline 118
; 	  //CANIDAR3 = (UNSIGNED8) (ID_Match & 0x07) << 5;
; 	break;		
	bra L7
L13:
	.dbline 122
; 	  	
; 	case 4:
; 	
;       CANIDMR4 = (UNSIGNED8) (ID_Mask >> 3);
	ldd 7,S
	lsrd
	lsrd
	lsrd
	stab 0x15c
	.dbline 125
;       //CANIDMR4 = (UNSIGNED8) (((ID_Mask & 0x07) << 5) | 0x1F);
;   
; 	  CANIDAR4 = (UNSIGNED8) (ID_Match >> 3);
	ldd 9,S
	lsrd
	lsrd
	lsrd
	stab 0x158
	.dbline 127
; 	  //CANIDAR4 = (UNSIGNED8) (ID_Match & 0x07) << 5;
; 	break;		
	bra L7
L14:
	.dbline 131
; 	  	
; 	case 5:
; 	
;       CANIDMR5 = (UNSIGNED8) (ID_Mask >> 3);
	ldd 7,S
	lsrd
	lsrd
	lsrd
	stab 0x15d
	.dbline 134
;       //CANIDMR5 = (UNSIGNED8) (((ID_Mask & 0x07) << 5) | 0x1F);
;   
; 	  CANIDAR5 = (UNSIGNED8) (ID_Match >> 3);
	ldd 9,S
	lsrd
	lsrd
	lsrd
	stab 0x159
	.dbline 136
; 	  //CANIDAR5 = (UNSIGNED8) (ID_Match & 0x07) << 5;
; 	break;		
	bra L7
L15:
	.dbline 140
; 	  	
; 	case 6:
; 	
;       CANIDMR6 = (UNSIGNED8) (ID_Mask >> 3);
	ldd 7,S
	lsrd
	lsrd
	lsrd
	stab 0x15e
	.dbline 143
;       //CANIDMR6 = (UNSIGNED8) (((ID_Mask & 0x07) << 5) | 0x1F);
;   
; 	  CANIDAR6 = (UNSIGNED8) (ID_Match >> 3);
	ldd 9,S
	lsrd
	lsrd
	lsrd
	stab 0x15a
	.dbline 145
; 	  //CANIDAR6 = (UNSIGNED8) (ID_Match & 0x07) << 5;
; 	break;		
	bra L7
L16:
	.dbline 149
; 	  	
; 	case 7:
; 	
;       CANIDMR7 = (UNSIGNED8) (ID_Mask >> 3);
	ldd 7,S
	lsrd
	lsrd
	lsrd
	stab 0x15f
	.dbline 152
;       //CANIDMR7 = (UNSIGNED8) (((ID_Mask & 0x07) << 5) | 0x1F);
;   
; 	  CANIDAR7 = (UNSIGNED8) (ID_Match >> 3);
	ldd 9,S
	lsrd
	lsrd
	lsrd
	stab 0x15b
	.dbline 154
; 	  //CANIDAR7 = (UNSIGNED8) (ID_Match & 0x07) << 5;
; 	break;		
L6:
L7:
	.dbline -2
L5:
	.dbline 0 ; func end
	leas 4,S
	rtc
	.dbsym l ID_Match 9 i
	.dbsym l ID_Mask 7 i
	.dbsym l Screener 3 c
	.dbend
	.dbfunc e MCOHW_PullMessage _MCOHW_PullMessage fc
	.dbstruct 0 12 .1
	.dbfield 0 ID i
	.dbfield 2 LEN c
	.dbfield 3 dummy32bit c
	.dbfield 4 BUF A[8:8]c
	.dbend
;     Identifier -> 2,SP
;         Length -> 6,SP
;              i -> 7,SP
;    pReceiveBuf -> 8,SP
$_MCOHW_PullMessage::
	pshd
	leas -8,S
	.dbline -1
	.dbline 244
;   }
; }
; 
; 
; /**************************************************************************
; DOES:    Sets one of the eight screeners (acceptance filters) of
;          the CAN controller.
; CAUTION: Does assume the screeners are set-up to be used as "eight
;          short filters for upper 8 bits of short message"
; RETURNS: nothing
; **************************************************************************/
; /*
; void set_screener_std
;   (
;   UNSIGNED8 Screener,  // 1 - 4, one of the four screeners
;   UNSIGNED8 ID_Mask,   // Bit set: corresponding bit in ID is don't care
;                   // Bit clear: corresponding bit in ID must match ID_Match
;   UNSIGNED8 ID_Match  // ID_Match - Match/Code value for ID
;   ) 
;   //darrell
;   //The following arguments are not used, this has been modified for 16 bit filters  			 			
;   //UNSIGNED8 B1_Mask,   // Bit set: cor. bit in data byte 1 is don't care
;                   // Bit clear: cor. bit in data byte 1 must match B1_Match
;   //UNSIGNED8 B1_Match,  // Match/Code value for data byte 1
;   //UNSIGNED8 B2_Mask,   // Bit set: cor. bit in data byte 2 is don't care
;                   // Bit clear: cor. bit in data byte 2 must match B2_Match
;   //UNSIGNED8 B2_Match   // Match/Code value for data byte 2
;   //)
; {
;    // ensure 0 <= screener <= 7
;   Screener -= 1;
;   Screener &= 0x7;
; 
;   switch (Screener)
;   {
;    	case 0:
;       CANIDMR0 = (UNSIGNED8) (ID_Mask >> 3);
; 	  CANIDAR0 = (UNSIGNED8) (ID_Match >> 3);
; 	break;
; 	
; 	case 1:	
;       CANIDMR1 = (UNSIGNED8) (ID_Mask >> 3);
; 	  CANIDAR1 = (UNSIGNED8) (ID_Match >> 3);
; 	break;
; 	  	
; 	case 2:
;       CANIDMR2 = (UNSIGNED8) (ID_Mask >> 3);
; 	  CANIDAR2 = (UNSIGNED8) (ID_Match >> 3);
; 	break;
; 	  	
; 	case 3:
;       CANIDMR3 = (UNSIGNED8) (ID_Mask >> 3);
; 	  CANIDAR3 = (UNSIGNED8) (ID_Match >> 3);
; 	break;	
; 		
;    	case 4:
;       CANIDMR4 = (UNSIGNED8) (ID_Mask >> 3);	  
; 	  CANIDAR4 = (UNSIGNED8) (ID_Match >> 3);
; 	break;
; 	
; 	case 5:
;       CANIDMR5 = (UNSIGNED8) (ID_Mask >> 3);
; 	  CANIDAR5 = (UNSIGNED8) (ID_Match >> 3);
; 	break;
; 	  	
; 	case 6:
;       CANIDMR6 = (UNSIGNED8) (ID_Mask >> 3);
; 	  CANIDAR6 = (UNSIGNED8) (ID_Match >> 3);
; 	break;
; 	  	
; 	case 7:
;       CANIDMR7 = (UNSIGNED8) (ID_Mask >> 3);
; 	  CANIDAR7 = (UNSIGNED8) (ID_Match >> 3);
; 	break;		
;   }
; }
; */
; 
; /**************************************************************************
; DOES:    Gets the next received CAN message and places it in
;          a receive buffer                                         
; RETURNS: 0 if no message received, 1 if message received and      
;          copied to the buffer                                     
; **************************************************************************/
; UNSIGNED8 MCOHW_PullMessage
;   (
;   CAN_MSG *pReceiveBuf  // pointer to a single message sized buffer
;                                 // to hold the received message
;   )
; {
	.dbline 251
;   // variable declarations
;   UNSIGNED32 Identifier;
;   UNSIGNED8  Length;
;   UNSIGNED8  i;
; 
;   // Check the CAN status register for received message
;   if ( CANRFLG & 0x01)
	brclr 0x144,#1,X0
	bra X1
X0: lbra L18
X1:
	.dbline 252
;   {
	.dbline 255
;     // Message received!
; 
;     Identifier   = (UNSIGNED32)CANRXIDR0;
	ldab 0x160
	clra
	jsr int2long
	puld
	std 4,S
	puld
	std 4,S
	.dbline 256
;     Identifier <<= 8;
	ldd 4,S
	pshd
	ldd 4,S
	pshd
	ldd #8
	jsr lsl4
	puld
	std 4,S
	puld
	std 4,S
	.dbline 257
;     Identifier  |= (UNSIGNED32) CANRXIDR1;
	ldd 4,S
	pshd
	ldd 4,S
	pshd
	ldab 0x161
	clra
	jsr int2long
	jsr or4
	puld
	std 4,S
	puld
	std 4,S
	.dbline 258
;     Identifier >>= 5;
	ldd 4,S
	pshd
	ldd 4,S
	pshd
	ldd #5
	jsr lsr4
	puld
	std 4,S
	puld
	std 4,S
	.dbline 260
; 	
; 	Length = (CANRXDLR & 0x0f);
	ldab 0x16c
	andb #15
	stab 6,S
	.dbline 261
; 	for ( i = 0; i < Length; i++ )
	clr 7,S
	bra L23
L20:
	.dbline 262
; 		*(UNSIGNED8 *)(pReceiveBuf->BUF+i) = *(&CANRXDSR0 + i);   	/* Get received data */
	ldd 8,S
	addd #4
	tfr D,Y
	ldab 7,S
	clra
	sty 0,S
	addd 0,S
	tfr D,Y
	ldab 7,S
	clra
	addd #356
	tfr D,X
	ldab 0,X
	stab 0,Y
L21:
	.dbline 261
	inc 7,S
L23:
	.dbline 261
	ldab 7,S
	cmpb 6,S
	blo L20
	.dbline 263
; 	CANRFLG = 0x01;	  				   						  				/* Clear RXF */
	movb #1,0x144
	.dbline 265
; 
;     pReceiveBuf->ID = Identifier;
	ldd 4,S
	pshd
	ldd 4,S
	pshd
	leas 2,S
	puly
	ldx 8,S
	sty 0,X
	.dbline 266
;     pReceiveBuf->LEN = Length;
	ldab 6,S
	tfr B,Y
	ldd 8,S
	addd #2
	tfr D,X
	tfr Y,B
	stab 0,X
	.dbline 269
; 	
; 	// release receive buffer
; 	CANRFLG |= 0x01;
	bset 0x144,#1
	.dbline 271
; 	    // return 1, message received
;     return (1);
	ldd #1
	bra L17
L18:
	.dbline 274
;   }
;   else 
;   {
	.dbline 276
;     // return 0, no message received
;     return (0);
	ldd #0
	.dbline -2
L17:
	.dbline 0 ; func end
	leas 10,S
	rtc
	.dbsym l Identifier 2 l
	.dbsym l Length 6 c
	.dbsym l i 7 c
	.dbsym l pReceiveBuf 8 pS[.1]
	.dbend
	.dbfunc e MCOHW_PushMessage _MCOHW_PushMessage fc
;     Identifier -> 2,SP
;       priority -> 6,SP
;         Length -> 7,SP
;       txbuffer -> 8,SP
;              i -> 9,SP
;   pTransmitBuf -> 10,SP
$_MCOHW_PushMessage::
	pshd
	leas -10,S
	.dbline -1
	.dbline 291
;   }
;   
; }
; 
; /**************************************************************************
; DOES:    Transmits a CAN message                                  
; RETURNS: 0 if the message could not be transmitted, 1 if the      
;          message was transmitted                                  
; **************************************************************************/
; UNSIGNED8 MCOHW_PushMessage
;   (
;   CAN_MSG *pTransmitBuf  // pointer to buffer containing CAN
;                                  // message to transmit
;   )
; {
	.dbline 294
;  
;   unsigned char txbuffer;
;   unsigned char priority = 0;
	clr 6,S
	.dbline 304
;   // CAN message identifier
;   UNSIGNED32 Identifier;
;   // length of data frame
;   UNSIGNED8  Length;
;   // local loop counter
;   UNSIGNED8  i;
; 
; 	
;     // Prepare length code and identifier.
;   	Length     = pTransmitBuf->LEN;
	ldd 10,S
	addd #2
	tfr D,Y
	movb 0,Y,7,S
	.dbline 305
;   	Identifier = (pTransmitBuf->ID << 5);
	ldx #5
	ldd [10,S]
	jsr lsl16
	tfr D,Y
	pshy
	movw #0,2,-S
	puld
	std 4,S
	puld
	std 4,S
	.dbline 309
; 
; 	
;     // Wait until write access to CAN controller buffer is allowed 
; 	Timer1 = .5 * RTI_One_Sec;
	movw #488,_Timer1
L25:
	.dbline 310
; 	while ( !CANTFLG   && Timer1 );					 	  	 /* Is Transmit Buffer full?? */
L26:
	.dbline 310
	ldab 0x146
	cmpb #0
	bne L28
	ldy _Timer1
	cpy #0
	bne L25
L28:
	.dbline 311
; 	if ( !CANTFLG ) 					 	  		   	 	 /* Is Transmit Buffer full?? */
	ldab 0x146
	cmpb #0
	bne L29
	.dbline 312
; 	{
	.dbline 313
;        ARMCOP = 0x55;   
	movb #85,0x3f
	.dbline 314
;        ARMCOP = 0xAA;
	movb #170,0x3f
	.dbline 315
; 	   return 0;
	ldd #0
	lbra L24
L29:
	.dbline 318
; 	}
; 	   
; 	CANTBSEL = CANTFLG;		  							 /* Select lowest empty buffer */
	movb 0x146,0x14a
	.dbline 319
; 	txbuffer = CANTBSEL;								 /* Backup selected buffer */
	movb 0x14a,8,S
	.dbline 321
; 	
; 	*((unsigned int *) ((unsigned int)(&CANTXIDR0))) = (unsigned int)Identifier;
	ldd 4,S
	pshd
	ldd 4,S
	pshd
	leas 2,S
	puly
	sty 0x170
	.dbline 324
; 	//darrell was --> *((unsigned long *) ((unsigned long)(&CANTXIDR0))) = (unsigned int)Identifier;
; 	
; 	for ( i = 0; i < Length; i++ )
	clr 9,S
	bra L34
L31:
	.dbline 325
; 	{
	.dbline 326
; 	 	*(&CANTXDSR0 + i) = *(UNSIGNED8 *)(pTransmitBuf->BUF+i);  /* Load data to Tx buffer 
	ldd 10,S
	addd #4
	tfr D,Y
	ldab 9,S
	clra
	sty 0,S
	addd 0,S
	tfr D,Y
	ldab 0,Y
	tfr B,Y
	ldab 9,S
	clra
	addd #372
	tfr D,X
	tfr Y,B
	stab 0,X
	.dbline 329
; 														  		   * Data Segment Registers
; 														  		   */
; 	}
L32:
	.dbline 324
	inc 9,S
L34:
	.dbline 324
	ldab 9,S
	cmpb 7,S
	blo L31
	.dbline 331
; 	
; 	CANTXDLR = Length;									 /* Set Data Length Code */ 
	movb 7,S,0x17c
	.dbline 332
; 	CANTXTBPR = priority;								 /* Set priority */
	movb 6,S,0x17d
	.dbline 334
; 	
; 	CANTFLG = txbuffer;									 /* Start transmission */
	movb 8,S,0x146
	.dbline 336
; 	
; 	Timer1 = .5 * RTI_One_Sec;
	movw #488,_Timer1
L35:
	.dbline 337
; 	while ( ((CANTFLG & txbuffer) != txbuffer || (CANCTL0 & 0x01)) && Timer1 );		  /* Wait for Transmission */
L36:
	.dbline 337
	ldab 0x146
	andb 8,S
	cmpb 8,S
	bne L39
	brclr 0x140,#1,L38
L39:
	ldy _Timer1
	cpy #0
	bne L35
L38:
	.dbline 339
; 	//Gen_Flags &= ~Gen_Flags_No2Wire;   
; 	if ( !Timer1 || !(CANCTL1 & 0x80) )
	ldy _Timer1
	cpy #0
	beq L42
	ldab 0x141
	bitb #128
	bne L40
L42:
	.dbline 340
; 	{
	.dbline 341
;         ARMCOP = 0x55;   
	movb #85,0x3f
	.dbline 342
;         ARMCOP = 0xAA;
	movb #170,0x3f
	.dbline 343
; 	    Gen_Flags |= Gen_Flags_No2Wire;   
	bset _Gen_Flags,#32
	.dbline 344
; 	}		  			   			 			 			  /* completion  */
L40:
	.dbline 346
; 
; 	return 1;												  														 
	ldd #1
	.dbline -2
L24:
	.dbline 0 ; func end
	leas 12,S
	rtc
	.dbsym l Identifier 2 l
	.dbsym l priority 6 c
	.dbsym l Length 7 c
	.dbsym l txbuffer 8 c
	.dbsym l i 9 c
	.dbsym l pTransmitBuf 10 pS[.1]
	.dbend
	.dbfunc e MCOHW_GetTime _MCOHW_GetTime fi
;            tmp -> 0,SP
$_MCOHW_GetTime::
	leas -2,S
	.dbline -1
	.dbline 359
; 
; 
; }
; 
; /**************************************************************************
; DOES:    Gets the value of the current 1 millisecond system timer 
; RETURNS: The current timer tick                                   
; **************************************************************************/
; UNSIGNED16 MCOHW_GetTime
;   (
;   void
;   )
; {
	.dbline 363
;   UNSIGNED16 tmp;
; 
;   // disable interrupts
;   INTR_OFF();
	sei
	.dbline 366
; 
;   // make copy of current timer tick
;   tmp = gTimCnt;
	movw _gTimCnt,0,S
	.dbline 369
; 
;   // enable interrupts
;   INTR_ON();
	cli
	.dbline 371
; 
;   return tmp;
	ldd 0,S
	.dbline -2
L43:
	.dbline 0 ; func end
	leas 2,S
	rtc
	.dbsym l tmp 0 i
	.dbend
	.dbfunc e MCOHW_IsTimeExpired _MCOHW_IsTimeExpired fc
;       time_now -> 0,SP
;      timestamp -> 2,SP
$_MCOHW_IsTimeExpired::
	pshd
	leas -2,S
	.dbline -1
	.dbline 383
; }
; 
; /**************************************************************************
; DOES:    Checks if a moment in time has passed (a timestamp has expired)
; RETURNS: 0 if timestamp has not yet expired, 1 if the             
;          timestamp has expired                                    
; **************************************************************************/
; UNSIGNED8 MCOHW_IsTimeExpired
;   (
;   UNSIGNED16 timestamp  // timestamp to check for expiration
;   )
; {
	.dbline 387
;   UNSIGNED16 time_now;
; 
;   // disable interrupts
;   INTR_OFF();
	sei
	.dbline 389
;   // get current time
;   time_now = gTimCnt;
	movw _gTimCnt,0,S
	.dbline 391
;   // enable interrupts
;   INTR_ON();
	cli
	.dbline 393
;   // ensure minimum runtime
;   timestamp++;
	ldy 2,S
	iny
	sty 2,S
	.dbline 394
;   if (time_now > timestamp)
	ldy 0,S
	cpy 2,S
	bls L45
	.dbline 395
;   {
	.dbline 396
;     if ((time_now - timestamp) < 0x8000)
	ldd 0,S
	subd 2,S
	cpd #32768
	bhs L47
	.dbline 397
;       return 1;
	ldd #1
	bra L44
L47:
	.dbline 399
;     else
;       return 0;
	ldd #0
	bra L44
L45:
	.dbline 402
;   }
;   else
;   {
	.dbline 403
;     if ((timestamp - time_now) > 0x8000)
	ldd 2,S
	subd 0,S
	cpd #32768
	bls L49
	.dbline 404
;       return 1;
	ldd #1
	bra L44
L49:
	.dbline 406
;     else
;       return 0;
	ldd #0
	.dbline -2
L44:
	.dbline 0 ; func end
	leas 4,S
	rtc
	.dbsym l time_now 0 i
	.dbsym l timestamp 2 i
	.dbend
	.dbfunc e MCOHW_TimerISR _MCOHW_TimerISR fV
$_MCOHW_TimerISR::
	.dbline -1
	.dbline 421
;   }
; }
; 
; /**************************************************************************
; DOES:    Timer interrupt service routine                          
;          Increments the global millisecond counter tick           
;          This function needs to be called once every millisecond  
; RETURNS: nothing
; NOTE:    See TC3_Int_Handler                                                     
; **************************************************************************/
; void MCOHW_TimerISR
;   (
;   void
;   ) 
; {
	.dbline 422
;   gTimCnt++;
	ldy _gTimCnt
	iny
	sty _gTimCnt
	.dbline -2
L51:
	.dbline 0 ; func end
	rtc
	.dbend
	.dbfunc e MCOHW_Init _MCOHW_Init fc
;     baudrateok -> 0,SP
;              i -> 1,SP
;       BaudRate -> 2,SP
$_MCOHW_Init::
	pshd
	leas -2,S
	.dbline -1
	.dbline 435
; }
; 
; /**************************************************************************
; DOES:    Initializes the CAN interface.                           
; CAUTION: Does not initialize filters - nothing will be received   
;          unless screeners are set using set_screener_std          
; RETURNS: 0 for failed init, 1 for successful init                 
; **************************************************************************/
; UNSIGNED8 MCOHW_Init
;   (
;   UNSIGNED16 BaudRate  // desired baudrate in kbps
;   )
; {
	.dbline 438
; 
; UNSIGNED8 i;
; UNSIGNED8 baudrateok = 0;
	clr 0,S
	.dbline 440
; 
;  	CANCTL0 = 0x01;
	movb #1,0x140
	.dbline 441
; 	Timer1 = .5 * RTI_One_Sec;
	movw #488,_Timer1
	bra L54
L53:
	.dbline 443
; 	while ( !(CANCTL1 & 0x01) && Timer1 )
; 	{
	.dbline 444
;        ARMCOP = 0x55;   
	movb #85,0x3f
	.dbline 445
;        ARMCOP = 0xAA;
	movb #170,0x3f
	.dbline 446
; 	}
L54:
	.dbline 442
	ldab 0x141
	bitb #1
	bne L56
	ldy _Timer1
	cpy #0
	bne L53
L56:
	.dbline 448
; 	
; 	CANCTL1 = 0x80;//CANCTL1 = 0xa0;
	movb #128,0x141
	.dbline 449
; 	CANBTR0 = 0xc1;
	movb #193,0x142
	.dbline 450
; 	CANBTR1 = 0x3a;
	movb #58,0x143
	.dbline 453
; 
;   // This version only supports 125kbit at 12MHz
;   if (BaudRate == 125)
	ldy 2,S
	cpy #125
	bne L57
	.dbline 454
;   {
	.dbline 458
;      // BTR0 and BTR1 determine the baudrate and sample point position
;      // set address to BTR0 register
; 	//CANBTR0 = 0x41; // 250Kbaud
; 	CANBTR0 = 0x43;
	movb #67,0x142
	.dbline 459
; 	CANBTR1 = 0x49;
	movb #73,0x143
	.dbline 462
;  
;      // the baudrate is supported
;     baudrateok = 1;
	movb #1,0,S
	.dbline 463
;   }
L57:
	.dbline 466
; 
;   // no filters configured
;   gCANFilter = 0;
	clr _gCANFilter
	.dbline 469
; 
;   // Clear all acceptance filters and masks, receive nothing
;   for(i=1;i<=16;i++) *(&CANIDAR0 + i) = 0;
	movb #1,1,S
	bra L62
L59:
	.dbline 469
	ldy #0
	ldab 1,S
	clra
	addd #336
	tfr D,X
	tfr Y,B
	stab 0,X
L60:
	.dbline 469
	inc 1,S
L62:
	.dbline 469
	ldab 1,S
	cmpb #16
	bls L59
	.dbline 474
; 
;   // Set acceptance filter mode to accept standard frames with single
;   // acceptance filter.
;   //darrell change to 8 bit acceptance                                                    
;   ;CANIDAC = 0x20;
	.dbline 474
	movb #32,0x14b
	.dbline 477
; 
;   // release CAN controller
;     CANCTL0 = 0x00;										 /* Exit Initialization Mode Request */
	clr 0x140
	.dbline 478
; 	Timer1 = .5 * RTI_One_Sec;
	movw #488,_Timer1
	bra L64
L63:
	.dbline 480
; 	while ( (CANCTL1 & 0x01) != 0 && Timer1)						 /* Wait for Normal Mode */
; 	{
	.dbline 481
;        ARMCOP = 0x55;   
	movb #85,0x3f
	.dbline 482
;        ARMCOP = 0xAA;
	movb #170,0x3f
	.dbline 483
; 	}
L64:
	.dbline 479
	brclr 0x141,#1,L66
	ldy _Timer1
	cpy #0
	bne L63
L66:
	.dbline 486
;   
;   	// Initialize 1ms Timer interrupt 
;  	TC3 = TCNT + TC_1ms;
	ldd 0x44
	addd #749
	tfr D,Y
	sty 0x56
	.dbline 487
;  	TIE |= TIE_C3I;
	bset 0x4c,#8
	.dbline 490
;  	
; 
;   return baudrateok;
	ldab 0,S
	clra
	.dbline -2
L52:
	.dbline 0 ; func end
	leas 4,S
	rtc
	.dbsym l baudrateok 0 c
	.dbsym l i 1 c
	.dbsym l BaudRate 2 i
	.dbend
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\mcohw.c
_setFilters::
	.blkb 2
	.area idata
	.byte 128,128
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\mcohw.c
	.blkb 2
	.area idata
	.byte 128,128
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\mcohw.c
	.blkb 2
	.area idata
	.byte 128,128
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\mcohw.c
	.blkb 2
	.area idata
	.byte 128,128
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\mcohw.c
	.dbsym e setFilters _setFilters A[8:8]c
	.area extcode(paged)
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\mcohw.c
	.dbfunc e MCOHW_SetCANFilter _MCOHW_SetCANFilter fc
;            len -> 6,SP
;            bin -> 7,SP
;              i -> 8,SP
;          CANID -> 9,SP
$_MCOHW_SetCANFilter::
	pshd
	leas -9,S
	.dbline -1
	.dbline 529
; 
;   
; 
; }
; #include "stdarg.h"
; UNSIGNED8 setFilters[8] = {0x80, 0x80, 0x80, 0x80, 0x80, 0x80, 0x80, 0x80};
; /**************************************************************************
; DOES:    Initializes the next available filter                    
; RETURNS: 0 for failed init, 1 for successful init
;  
; This function replaces the original function that just
; set up to 8 filters, requiring a match of all bits.
; This function can be called as previously with just
; the CANID argument and it will function as it previously
; was intended.
;  
; This function keeps track of all filters that have been set.
; If the address (last 7 bits in CANID as defined by 'bin'
; after applying the mask to the CANID) in a given CANID corresponds
; to a set filter (kept in global variable list setFilters; declared
; in mcohw.c), no filter is set. Otherwise, the filter is set,
; the filter is added to setFilters, gCANFilter is incremented
; and 1 (success) is returned
;  
; The call to this function in "MCO_Init" that sets the filter
; for the NMT master does not need modified, should look like
; the following: ("if (!MCOHW_SetCANFilter(0))")
;  
; The call to this function in "MCO_Init" that sets the filter
; to accept SDO for this node, should look like the following
; (such as; "if (!MCOHW_SetCANFilter(0x600+Node_ID))"
;                  
; The call to this function in "MCO_Init" that sets the filter
; to accept RPDOs for this node, should look like the following
; (such as; "if (!MCOHW_SetCANFilter(gRPDOConfig[PDO_NR].CANID))"
;                  
; **************************************************************************/
; UNSIGNED8 MCOHW_SetCANFilter(UNSIGNED16 CANID)
; {
	.dbline 530
;     UNSIGNED8 i = 0;
	clr 8,S
	.dbline 531
;     UNSIGNED8 bin = CANID & 0x7F;
	ldd 9,S
	anda #0
	andb #127
	stab 7,S
	.dbline 534
;  
;     // Handle default where one filter covers all CANIDs matching NODE_ID
;     UNSIGNED8 len = sizeof(setFilters) / sizeof(setFilters[0]);
	movb #8,6,S
	.dbline 535
;     for (i = 0; i < len; i++) {
	clr 8,S
	bra L71
L68:
	.dbline 535
	.dbline 536
;         if (setFilters[i] == bin) {
	ldy #_setFilters
	ldab 8,S
	clra
	sty 4,S
	addd 4,S
	tfr D,Y
	ldab 0,Y
	cmpb 7,S
	bne L72
	.dbline 536
	.dbline 538
;             // If a filter is already set for this CANID, print a message and return
;             return 1;  // Successfully set the filter
	ldd #1
	bra L67
L72:
	.dbline 540
;         }
;     }
L69:
	.dbline 535
	inc 8,S
L71:
	.dbline 535
	ldab 8,S
	cmpb 6,S
	blo L68
	.dbline 543
;  
;     // check for limit
;     if (gCANFilter >= NR_OF_RPDOS)  
	ldab _gCANFilter
	cmpb #8
	blo L74
	.dbline 544
;     {
	.dbline 545
;         return 0;  // Fail if all filters are used
	ldd #0
	bra L67
L74:
	.dbline 548
;     }
;    
;     CANCTL0 = 0x01;
	movb #1,0x140
L76:
	.dbline 550
;     while ( !(CANCTL1 & 0x01) )
;     {
	.dbline 551
;     }
L77:
	.dbline 549
	brclr 0x141,#1,L76
	.dbline 554
;  
;     // configure the filter
;     set_screener_std(gCANFilter, 0xFF80, CANID  //darrell, use only the Node_ID
	ldy 9,S
	sty 2,S
	ldy #65408
	sty 0,S
	ldab _gCANFilter
	clra
	xcall $_set_screener_std
	.dbline 560
;     //The following arguments are not used, this has been modified for 16 bit filters            
;     //,0xFF,0xFF,0xFF,0xFF);
;     );
;     //darrell
;     //added, exit initialization mode
;     CANCTL0 = 0x00;                    /* Exit Initialization Mode Request */
	clr 0x140
L79:
	.dbline 562
;     while ( (CANCTL1 & 0x01) != 0 )            /* Wait for Normal Mode */
;     {
	.dbline 563
;     }
L80:
	.dbline 561
	ldab 0x141
	bitb #1
	bne L79
	.dbline 566
;    
;     // Set the filter for a specific CANID
;     setFilters[gCANFilter] = bin;
	ldy #_setFilters
	ldab _gCANFilter
	clra
	sty 4,S
	addd 4,S
	tfr D,Y
	ldab 7,S
	stab 0,Y
	.dbline 569
;  
;     // Increment current num of filters set
;     gCANFilter++;
	inc _gCANFilter
	.dbline 571
;  
;     return 1;  // Successfully set the filter
	ldd #1
	.dbline -2
L67:
	.dbline 0 ; func end
	leas 11,S
	rtc
	.dbsym l len 6 c
	.dbsym l bin 7 c
	.dbsym l i 8 c
	.dbsym l CANID 9 i
	.dbend
