#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <math.h>
#include "PID.h"


//SPid *posPID;
SPid *spdPID;

//SPid positionPID;
SPid speedPID;

char initPID=1;

float UDPID(SPid *pid, float error, float currentVal){
	
	float pTerm, dTerm, iTerm, xout;
	
	pTerm = pid->pGain*error;
	pid->iState += error;
	
	if(pid->iState > pid->iMax){
		
		pid->iState_sgn = pid->iState;
		pid->iState = pid->iMax;
	}
	
	if(pid->iState < pid->iMin){
		
		pid->iState_sgn = pid->iState;
		pid->iState = pid->iMin;
	}
	
	iTerm = pid->iGain * pid->iState;
	dTerm = pid->dGain * (currentVal - pid->dState);
	pid->dState = currentVal;
	xout = pTerm + iTerm - dTerm;
	
	return xout;
	
}

/*  ADD this to top of doevents set posPID and spdPID values to specific actuator

	posPID = &positionPID;
	spdPID = &speedPID;
	
	if(initPID){
		
		initPID=0;
		posPID->pGain=0;
		posPID->iGain=0;
		posPID->dGain=0;
		posPID->iMax=0;
		posPID->iMin=0;
		
		spdPID->pGain=0.0;
		spdPID->iGain=0.0;
		spdPID->dGain=0.0;
		spdPID->iMax=0;
		spdPID->iMin=0;
	}

*/