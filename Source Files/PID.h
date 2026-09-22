#ifndef PID_H
#define PID_H




typedef struct{
	
	float dState;  		//Last position input
	float iState;  		//Integrator state
	float iState_sgn;	//Integral sign
	float iMax;
	float iMin;
	//Maximum and minimum allowable integrator state
	float iGain,		//integral gain	
		  pGain,		//proportional gain
		  dGain;		//derivative gain
	
	
}SPid;






float UDPID(SPid *pid, float error, float currentVal);


#endif