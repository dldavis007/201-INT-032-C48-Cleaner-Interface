	.module PID.c
	.area text
	.dbfile ..\..\REV3~1.25\SOURCE~1\PID.c
	.area data
	.dbfile ..\..\REV3~1.25\SOURCE~1\PID.c
_initPID::
	.blkb 1
	.area idata
	.byte 1
	.area data
	.dbfile ..\..\REV3~1.25\SOURCE~1\PID.c
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\PID.c
	.dbsym e initPID _initPID c
	.area extcode(paged)
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\PID.c
	.dbfunc e UDPID _UDPID fD
	.dbstruct 0 32 .1
	.dbfield 0 dState D
	.dbfield 4 iState D
	.dbfield 8 iState_sgn D
	.dbfield 12 iMax D
	.dbfield 16 iMin D
	.dbfield 20 iGain D
	.dbfield 24 pGain D
	.dbfield 28 dGain D
	.dbend
;           xout -> 2,SP
;          iTerm -> 6,SP
;          dTerm -> 10,SP
;          pTerm -> 14,SP
;     currentVal -> 27,SP
;          error -> 23,SP
;            pid -> 18,SP
$_UDPID::
	pshd
	leas -18,S
	.dbline -1
	.dbline 16
; #include <stdio.h>
; #include <string.h>
; #include <stdlib.h>
; #include <math.h>
; #include "PID.h"
; 
; 
; //SPid *posPID;
; SPid *spdPID;
; 
; //SPid positionPID;
; SPid speedPID;
; 
; char initPID=1;
; 
; float UDPID(SPid *pid, float error, float currentVal){
	.dbline 20
; 	
; 	float pTerm, dTerm, iTerm, xout;
; 	
; 	pTerm = pid->pGain*error;
	ldd 18,S
	addd #24
	tfr D,Y
	movw 2,Y,2,-S
	movw 0,Y,2,-S
	ldd 29,S
	pshd
	ldd 29,S
	pshd
	jsr mulf4
	puld
	std 16,S
	puld
	std 16,S
	.dbline 21
; 	pid->iState += error;
	ldd 18,S
	addd #4
	std 0,S
	tfr D,Y
	ldx 0,S
	movw 2,X,2,-S
	movw 0,X,2,-S
	ldd 29,S
	pshd
	ldd 29,S
	pshd
	jsr addf4
	pulx
	stx 0,Y
	pulx
	stx 2,Y
	.dbline 23
; 	
; 	if(pid->iState > pid->iMax){
	ldd 18,S
	addd #4
	tfr D,Y
	movw 2,Y,2,-S
	movw 0,Y,2,-S
	ldd 22,S
	addd #12
	tfr D,Y
	movw 2,Y,2,-S
	movw 0,Y,2,-S
	jsr cmpf4
	ble L3
	.dbline 23
	.dbline 25
; 		
; 		pid->iState_sgn = pid->iState;
	ldd 18,S
	addd #8
	tfr D,Y
	ldd 18,S
	addd #4
	tfr D,X
	movw 2,X,2,-S
	movw 0,X,2,-S
	pulx
	stx 0,Y
	pulx
	stx 2,Y
	.dbline 26
; 		pid->iState = pid->iMax;
	ldd 18,S
	addd #4
	tfr D,Y
	ldd 18,S
	addd #12
	tfr D,X
	movw 2,X,2,-S
	movw 0,X,2,-S
	pulx
	stx 0,Y
	pulx
	stx 2,Y
	.dbline 27
; 	}
L3:
	.dbline 29
; 	
; 	if(pid->iState < pid->iMin){
	ldd 18,S
	addd #4
	tfr D,Y
	movw 2,Y,2,-S
	movw 0,Y,2,-S
	ldd 22,S
	addd #16
	tfr D,Y
	movw 2,Y,2,-S
	movw 0,Y,2,-S
	jsr cmpf4
	bge L5
	.dbline 29
	.dbline 31
; 		
; 		pid->iState_sgn = pid->iState;
	ldd 18,S
	addd #8
	tfr D,Y
	ldd 18,S
	addd #4
	tfr D,X
	movw 2,X,2,-S
	movw 0,X,2,-S
	pulx
	stx 0,Y
	pulx
	stx 2,Y
	.dbline 32
; 		pid->iState = pid->iMin;
	ldd 18,S
	addd #4
	tfr D,Y
	ldd 18,S
	addd #16
	tfr D,X
	movw 2,X,2,-S
	movw 0,X,2,-S
	pulx
	stx 0,Y
	pulx
	stx 2,Y
	.dbline 33
; 	}
L5:
	.dbline 35
; 	
; 	iTerm = pid->iGain * pid->iState;
	ldd 18,S
	addd #20
	tfr D,Y
	movw 2,Y,2,-S
	movw 0,Y,2,-S
	ldd 22,S
	addd #4
	tfr D,Y
	movw 2,Y,2,-S
	movw 0,Y,2,-S
	jsr mulf4
	puld
	std 8,S
	puld
	std 8,S
	.dbline 36
; 	dTerm = pid->dGain * (currentVal - pid->dState);
	ldd 18,S
	addd #28
	tfr D,Y
	movw 2,Y,2,-S
	movw 0,Y,2,-S
	ldd 33,S
	pshd
	ldd 33,S
	pshd
	ldy 26,S
	movw 2,Y,2,-S
	movw 0,Y,2,-S
	jsr subf4
	jsr mulf4
	puld
	std 12,S
	puld
	std 12,S
	.dbline 37
; 	pid->dState = currentVal;
	ldy 18,S
	ldd 29,S
	pshd
	ldd 29,S
	pshd
	pulx
	stx 0,Y
	pulx
	stx 2,Y
	.dbline 38
; 	xout = pTerm + iTerm - dTerm;
	ldd 16,S
	pshd
	ldd 16,S
	pshd
	ldd 12,S
	pshd
	ldd 12,S
	pshd
	jsr addf4
	ldd 16,S
	pshd
	ldd 16,S
	pshd
	jsr subf4
	puld
	std 4,S
	puld
	std 4,S
	.dbline 40
; 	
; 	return xout;
	ldd 4,S
	pshd
	ldd 4,S
	pshd
	.dbline -2
L2:
	.dbline 0 ; func end
	ldd #20
	jmp lret_paged
	.dbsym l xout 2 D
	.dbsym l iTerm 6 D
	.dbsym l dTerm 10 D
	.dbsym l pTerm 14 D
	.dbsym l currentVal 27 D
	.dbsym l error 23 D
	.dbsym l pid 18 pS[.1]
	.dbend
	.area bss
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\PID.c
_speedPID::
	.blkb 32
	.dbsym e speedPID _speedPID S[.1]
_spdPID::
	.blkb 2
	.dbsym e spdPID _spdPID pS[.1]
