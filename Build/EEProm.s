	.module EEProm.c
	.area text
	.dbfile ..\..\REV3~1.25\SOURCE~1\EEProm.c
	.area extcode(paged)
	.dbfile ..\..\REV3~1.25\SOURCE~1\EEProm.c
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\EEProm.c
	.dbfunc e EEInit _EEInit fV
$_EEInit::
	.dbline -1
	.dbline 6
; #include "EEProm.h"
; #include "mc9s12a128.h"
; #include "Subroutines.h"
; 
; void EEInit ( void )
; {
	.dbline 7
;  	 ECLKDIV = (char)(OscClk * (5 + Tbus));
	movb #40,0x110
	.dbline 8
; 	 INITEE = INITEE_Init;
	movb #9,0x12
	.dbline -2
L1:
	.dbline 0 ; func end
	rtc
	.dbend
	.dbfunc e EEWrite _EEWrite fV
;       tempAddr -> 4,SP
;        TmpData -> 6,SP
;      tempArray -> 8,SP
;              j -> 136,SP
;              i -> 138,SP
;      WriteAddr -> 147,SP
;      WriteData -> 145,SP
;      ArraySize -> 140,SP
$_EEWrite::
	pshd
	leas -140,S
	.dbline -1
	.dbline 21
; }
; 
; 
; 
; //  char TmpStr2[] = "Hello World!\r\n";
; //  int *intptr;
; 
; //	intptr = (int*)0x461;
; //	EEWrite ( sizeof (TmpStr2), TmpStr2, intptr );	
; 	
; 
; void EEWrite ( int ArraySize, char WriteData[], int *WriteAddr )
; {
	.dbline 33
;  	 //Erases and Writes an array of up to 128 char to EEPROM
; 	 
; 	 int i, j, TmpData;
; 	 char *tempAddr;
; 	 char tempArray[128];
; 	 
;      
; 	 
; 	 //Add up to 3 more data bytes to beginning of array
; 	 //Addr must be divisible by 4 for erase operation
; 	 
; 	 tempAddr = (char*)WriteAddr;
	leay 147,S
	movw 0,y,4,S
	.dbline 34
;      tempAddr = (char*)((int)tempAddr & ~0x03);
	ldd 4,S
	anda #-1
	andb #-4
	std 4,S
	.dbline 36
; 	 
; 	 j = 0;
	leay 136,S
	movw #0,0,y
	.dbline 37
; 	 if ( (int)WriteAddr != (int)tempAddr )
	ldy 147,S
	cpy 4,S
	beq L3
	.dbline 38
; 	 {
	.dbline 39
; 	  	for ( j=0;(int)tempAddr != (int)WriteAddr;tempAddr++, j++)
	leax 136,S
	movw #0,0,x
	bra L8
L5:
	.dbline 40
; 		{
	.dbline 41
; 			tempArray[j] = *tempAddr;
	ldd 136,S
	leay 8,S
	sty 0,S
	addd 0,S
	tfr D,Y
	ldab [4,S]
	stab 0,Y
	.dbline 42
; 		}	
L6:
	.dbline 39
	ldy 4,S
	iny
	sty 4,S
	ldy 136,S
	iny
	sty 136,S
L8:
	.dbline 39
	ldy 4,S
	cpy 147,S
	bne L5
	.dbline 43
; 	 } 
L3:
	.dbline 47
; 
; 	 //transfer the rest of the data to tempArray
; 
;      for (i=0 ;i < ArraySize;i++, j++)
	leax 138,S
	movw #0,0,x
	bra L12
L9:
	.dbline 48
;      {
	.dbline 49
;         tempArray[j] = WriteData[i];
	ldd 136,S
	leay 8,S
	sty 0,S
	addd 0,S
	tfr D,Y
	ldd 138,S
	addd 145,S
	tfr D,X
	ldab 0,X
	stab 0,Y
	.dbline 50
;      }
L10:
	.dbline 47
	ldy 138,S
	iny
	sty 138,S
	ldy 136,S
	iny
	sty 136,S
L12:
	.dbline 47
	ldy 138,S
	cpy 140,S
	blt L9
	.dbline 54
; 
; 	 //pad end of array to make divisible by 4
; 
;      if ( (j & 0x03) )
	ldd 136,S
	anda #0
	andb #3
	cpd #0
	beq L13
	.dbline 55
;      {
	.dbline 56
; 	 	tempAddr = (char*)WriteAddr;
	leax 147,S
	movw 0,x,4,S
	.dbline 57
;      	tempAddr = (char*)((int)tempAddr & ~0x03);
	ldd 4,S
	anda #-1
	andb #-4
	std 4,S
	.dbline 58
; 	  	for ( ;j & 0x3;j++ )
	bra L18
L15:
	.dbline 59
; 		{
	.dbline 60
;          	tempArray[j] = *(tempAddr + j);
	ldd 136,S
	leay 8,S
	sty 0,S
	addd 0,S
	tfr D,Y
	ldd 136,S
	addd 4,S
	tfr D,X
	ldab 0,X
	stab 0,Y
	.dbline 61
; 		}
L16:
	.dbline 58
	ldy 136,S
	iny
	sty 136,S
L18:
	.dbline 58
	ldd 136,S
	anda #0
	andb #3
	cpd #0
	bne L15
	.dbline 62
;      }
L13:
	.dbline 67
; 
; 	 
; 	 //Erase EEprom
; 	 
; 	 tempAddr = (char*)WriteAddr;
	leax 147,S
	movw 0,x,4,S
	.dbline 68
; 	 WriteAddr = (int*)((int)WriteAddr & ~0x03);
	ldd 147,S
	anda #-1
	andb #-4
	std 147,S
	.dbline 70
; 
;      for (i=0; i<j; i += 4, WriteAddr +=2 )
	leax 138,S
	movw #0,0,x
	bra L22
L19:
	.dbline 71
;      {
	.dbline 72
; 		 *WriteAddr = TmpData;
	ldy 6,S
	ldx 147,S
	sty 0,X
	.dbline 73
; 		 ECMD = SecErase;
	movb #64,0x116
	.dbline 74
; 		 ESTAT = ESTAT_CBEIF;
	movb #128,0x115
L23:
	.dbline 75
; 		 while (!(ESTAT & ESTAT_CBEIF) );
L24:
	.dbline 75
	brclr 0x115,#128,L23
	.dbline 76
; 	 }
L20:
	.dbline 70
	ldd 138,S
	addd #4
	std 138,S
	ldd 147,S
	addd #4
	std 147,S
L22:
	.dbline 70
	ldy 138,S
	cpy 136,S
	blt L19
	.dbline 81
; 	 
; 
; 	 //Write to EEPROM
; 	 
; 	 WriteAddr = (int*)tempAddr;	 
	leax 147,S
	movw 4,S,0,x
	.dbline 82
; 	 WriteAddr = (int*)((int)WriteAddr & ~0x03);
	ldd 147,S
	anda #-1
	andb #-4
	std 147,S
	.dbline 84
; 
;      for (i=0;i<j;i+=2, WriteAddr++)
	leax 138,S
	movw #0,0,x
	lbra L29
L26:
	.dbline 85
;      {
	.dbline 86
; 	  	 TmpData = tempArray[i]*256 + tempArray[i+1];
	ldd 138,S
	leay 8,S
	sty 0,S
	addd 0,S
	tfr D,Y
	ldab 0,Y
	clra
	tfr D,Y
	ldd #256
	emul
	std 2,S
	ldd 138,S
	leax 9,S
	stx 0,S
	addd 0,S
	tfr D,Y
	ldab 0,Y
	clra
	tfr D,Y
	ldd 2,S
	sty 0,S
	addd 0,S
	std 6,S
	.dbline 87
; 		 *WriteAddr = TmpData;
	tfr D,Y
	ldx 147,S
	sty 0,X
	.dbline 88
; 		 ECMD = WordPrg;
	movb #32,0x116
	.dbline 89
; 		 ESTAT = ESTAT_CBEIF;
	movb #128,0x115
L31:
	.dbline 90
; 		 while (!(ESTAT & ESTAT_CBEIF) );
L32:
	.dbline 90
	brclr 0x115,#128,L31
	.dbline 91
;      }
L27:
	.dbline 84
	ldd 138,S
	addd #2
	std 138,S
	ldd 147,S
	addd #2
	std 147,S
L29:
	.dbline 84
	ldy 138,S
	cpy 136,S
	lblt L26
	.dbline -2
L2:
	.dbline 0 ; func end
	leas 142,S
	rtc
	.dbsym l tempAddr 4 pc
	.dbsym l TmpData 6 I
	.dbsym l tempArray 8 A[128:128]c
	.dbsym l j 136 I
	.dbsym l i 138 I
	.dbsym l WriteAddr 147 pI
	.dbsym l WriteData 145 pc
	.dbsym l ArraySize 140 I
	.dbend
