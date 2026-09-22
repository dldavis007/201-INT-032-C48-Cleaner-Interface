	.module Flash.c
	.area text
	.dbfile ..\..\REV3~1.25\SOURCE~1\Flash.c
	.area extcode(paged)
	.dbfile ..\..\REV3~1.25\SOURCE~1\Flash.c
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Flash.c
	.dbfunc e FlashInit _FlashInit fV
$_FlashInit::
	.dbline -1
	.dbline 9
; #include "Flash.h"
; #include "mc9s12a128.h"
; #include "Subroutines.h"
; 
; //Caution Flash.c should be the first file in the files section under the project browser
; 
; 
; void FlashInit ( void )
; {
	.dbline 10
;  	 FCLKDIV = (char)(OscClk * (5 + Tbus));
	movb #40,0x100
	.dbline -2
L1:
	.dbline 0 ; func end
	rtc
	.dbend
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Flash.c
_FlashCmd::
	.blkb 2
	.area idata
	.byte 123,1
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Flash.c
	.blkb 2
	.area idata
	.byte 6,198
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Flash.c
	.blkb 2
	.area idata
	.byte 128,123
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Flash.c
	.blkb 2
	.area idata
	.byte 1,5
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Flash.c
	.blkb 2
	.area idata
	.byte 31,1
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Flash.c
	.blkb 2
	.area idata
	.byte 5,64
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Flash.c
	.blkb 2
	.area idata
	.byte 251,61
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Flash.c
	.dbsym e FlashCmd _FlashCmd A[14:14]c
	.area extcode(paged)
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Flash.c
	.dbfunc e FlashWrite _FlashWrite fV
;       tempAddr -> 4,SP
;        TmpData -> 6,SP
;      tempArray -> 8,SP
;              j -> 1032,SP
;              i -> 1034,SP
;      WriteAddr -> 1043,SP
;      WriteData -> 1041,SP
;      ArraySize -> 1036,SP
$_FlashWrite::
	pshd
	leas -1036,S
	.dbline -1
	.dbline 32
; }
; 
; char FlashCmd[] = {0x7b,0x01,0x06,0xc6,0x80,0x7b,0x01,0x05,
; 	 			   0x1f,0x01,0x05,0x40,0xfb,0x3d};
; //FlashCmd   7B0106         STAB    0106
; //       	 C680           LDAB    #80
; //       	 7B0105         STAB    0105
; //       	 1F010540FB     BRCLR   0105 #40 1009
; //       	 3D             RTS     
; 
; 
; 
; 
; //  char TmpStr2[] = "Hello World!\r\n";
; //  int *intptr;
; 
; //	intptr = (int*)0xc1f0;
; //	FlashWrite ( sizeof (TmpStr2), TmpStr2, intptr );	
; 
; 
; void FlashWrite ( int ArraySize, char WriteData[], int *WriteAddr )
; {
	.dbline 44
;  	 //Erases and Writes an array of up to 512 char to Flash
; 	 
; 	 int i, j, TmpData;
; 	 char *tempAddr;
; 	 char tempArray[1024];
; 	 
;      
; 	 
; 	 //Add up to 511 more data bytes to beginning of array
; 	 //Addr must be divisible by 512 for erase operation
; 	 
; 	 tempAddr = (char*)WriteAddr;
	leay 1043,S
	movw 0,y,4,S
	.dbline 45
;      tempAddr = (char*)((int)tempAddr & ~0x1ff);
	ldd 4,S
	anda #-2
	andb #0
	std 4,S
	.dbline 47
; 	 
; 	 j = 0;
	leay 1032,S
	movw #0,0,y
	.dbline 48
; 	 if ( (int)WriteAddr != (int)tempAddr )
	ldy 1043,S
	cpy 4,S
	beq L3
	.dbline 49
; 	 {
	.dbline 50
; 	  	for ( j=0;(int)tempAddr != (int)WriteAddr;tempAddr++, j++)
	leax 1032,S
	movw #0,0,x
	bra L8
L5:
	.dbline 51
; 		{
	.dbline 52
; 			tempArray[j] = *tempAddr;
	ldd 1032,S
	leay 8,S
	sty 0,S
	addd 0,S
	tfr D,Y
	ldab [4,S]
	stab 0,Y
	.dbline 53
; 		}	
L6:
	.dbline 50
	ldy 4,S
	iny
	sty 4,S
	ldy 1032,S
	iny
	sty 1032,S
L8:
	.dbline 50
	ldy 4,S
	cpy 1043,S
	bne L5
	.dbline 54
; 	 } 
L3:
	.dbline 58
; 
; 	 //transfer the rest of the data to tempArray
; 
;      for (i=0 ;i < ArraySize;i++, j++)
	leax 1034,S
	movw #0,0,x
	bra L12
L9:
	.dbline 59
;      {
	.dbline 60
;         tempArray[j] = WriteData[i];
	ldd 1032,S
	leay 8,S
	sty 0,S
	addd 0,S
	tfr D,Y
	ldd 1034,S
	addd 1041,S
	tfr D,X
	ldab 0,X
	stab 0,Y
	.dbline 61
;      }
L10:
	.dbline 58
	ldy 1034,S
	iny
	sty 1034,S
	ldy 1032,S
	iny
	sty 1032,S
L12:
	.dbline 58
	ldy 1034,S
	cpy 1036,S
	blt L9
	.dbline 65
; 
; 	 //pad end of array to make divisible by 512
; 
;      if ( (j & 0x1ff) )
	ldd 1032,S
	anda #1
	andb #-1
	cpd #0
	beq L13
	.dbline 66
;      {
	.dbline 67
; 	 	tempAddr = (char*)WriteAddr;
	leax 1043,S
	movw 0,x,4,S
	.dbline 68
;      	tempAddr = (char*)((int)tempAddr & ~0x1ff);
	ldd 4,S
	anda #-2
	andb #0
	std 4,S
	.dbline 69
; 	  	for ( ;j & 0x1ff;j++ )
	bra L18
L15:
	.dbline 70
; 		{
	.dbline 71
;          	tempArray[j] = *(tempAddr + j);
	ldd 1032,S
	leay 8,S
	sty 0,S
	addd 0,S
	tfr D,Y
	ldd 1032,S
	addd 4,S
	tfr D,X
	ldab 0,X
	stab 0,Y
	.dbline 72
; 		}
L16:
	.dbline 69
	ldy 1032,S
	iny
	sty 1032,S
L18:
	.dbline 69
	ldd 1032,S
	anda #1
	andb #-1
	cpd #0
	bne L15
	.dbline 73
;      }
L13:
	.dbline 78
; 
; 	 
; 	 //Erase Flash
; 	 
; 	 tempAddr = (char*)WriteAddr;
	leax 1043,S
	movw 0,x,4,S
	.dbline 79
; 	 WriteAddr = (int*)((int)WriteAddr & ~0x1ff);
	ldd 1043,S
	anda #-2
	andb #0
	std 1043,S
	.dbline 81
; 
;      for (i=0; i<j; i += 512, WriteAddr +=256 )
	leax 1034,S
	movw #0,0,x
	bra L22
L19:
	.dbline 82
;      {
	.dbline 83
; 		 *WriteAddr = TmpData;
	ldy 6,S
	ldx 1043,S
	sty 0,X
	.dbline 84
; 		 asm ("ldab #0x40");
	ldab #0x40
	.dbline 85
; 		 asm ("jsr _FlashCmd");
	jsr _FlashCmd
	.dbline 89
; //		 FCMD = 0x40;
; //		 FSTAT = FSTAT_CCIF;
; //		 while (!(FSTAT & FSTAT_CCIF) );
; 	 }
L20:
	.dbline 81
	ldd 1034,S
	addd #512
	std 1034,S
	ldd 1043,S
	addd #512
	std 1043,S
L22:
	.dbline 81
	ldy 1034,S
	cpy 1032,S
	blt L19
	.dbline 94
; 	 
; 
; 	 //Write to Flash
; 	 
; 	 WriteAddr = (int*)tempAddr;	 
	leax 1043,S
	movw 4,S,0,x
	.dbline 95
; 	 WriteAddr = (int*)((int)WriteAddr & ~0x1ff);
	ldd 1043,S
	anda #-2
	andb #0
	std 1043,S
	.dbline 97
; 
;      for (i=0;i<j;i+=2, WriteAddr++)
	leax 1034,S
	movw #0,0,x
	bra L26
L23:
	.dbline 98
;      {
	.dbline 99
; 	  	 TmpData = tempArray[i]*256 + tempArray[i+1];
	ldd 1034,S
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
	ldd 1034,S
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
	.dbline 100
; 		 *WriteAddr = TmpData;
	tfr D,Y
	ldx 1043,S
	sty 0,X
	.dbline 101
; 		 asm ("ldab #0x20");
	ldab #0x20
	.dbline 102
; 		 asm ("jsr _FlashCmd");
	jsr _FlashCmd
	.dbline 106
; //		 FCMD = 0x20;
; //		 FSTAT = FSTAT_CCIF;
; //		 while (!(FSTAT & FSTAT_CCIF) );
;      }
L24:
	.dbline 97
	ldd 1034,S
	addd #2
	std 1034,S
	ldd 1043,S
	addd #2
	std 1043,S
L26:
	.dbline 97
	ldy 1034,S
	cpy 1032,S
	blt L23
	.dbline -2
L2:
	.dbline 0 ; func end
	leas 1038,S
	rtc
	.dbsym l tempAddr 4 pc
	.dbsym l TmpData 6 I
	.dbsym l tempArray 8 A[1024:1024]c
	.dbsym l j 1032 I
	.dbsym l i 1034 I
	.dbsym l WriteAddr 1043 pI
	.dbsym l WriteData 1041 pc
	.dbsym l ArraySize 1036 I
	.dbend
