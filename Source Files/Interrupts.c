#include "Interrupts.h"
#include "mc9s12a128.h"
#include "Controller.h"
#include "mco.h"
#include "mcohw.h"
#include "nodecfg.h"
#include "procimg.h"
#include "Subroutines.h"
#include <math.h>
#include <stdlib.h>

char Seconds = 60;

int Tick = RTI_One_Sec;

unsigned int TC0_RCVD_Data;

char Gen_Flags;

unsigned int Timer1;
unsigned int Timer2;
unsigned int LA_Wait_Timer;
unsigned long LineupTimer;
unsigned long LineupTimeCapture;

extern char LA_Moving;
unsigned int MenuTimer;
unsigned int FocusZoomTimer;
unsigned int AdvanceTimer;
int Update_Menu_Timer;
unsigned int SequenceTimer;

char SIN0Buf[SIN0BufLen] = "\0";
int SIN0Bufptr = 0;
char SOUT0Buf[SOUT0BufLen] = "\0";
int SOUT0Bufptr = 0;

unsigned int MenuTimer;
unsigned int CompressorTimer;
int updatePressureTimer;	 //limit frequency of updates to menu


extern signed char HeadRampCW;
extern signed char HeadRampCCW;
extern int HeadSpeed;
int RampTimer = RampTime;

unsigned long  StateTime;
extern char State;

char fast_inc=0;
unsigned int IncSpeedUpTimer;
char IncSpeedUpCntr;

char LA_PWM_Bit, LAspd, LA_PWM_Out;
extern char PB1_PWM, PB3_PWM;

char HD_PWM_Bit, HD_PWM_Out;

unsigned int PID_Timer;
unsigned int HdOffTimer;

unsigned int LA_speed_timer;
unsigned int TC2_prev,TC2_cap;
long LA_speed;



void DUMMY_ENTRY ( void )
{

}

void CANRxISR ( void )
{
  	unsigned char length, index;
	unsigned char rxdata[8];
    UNSIGNED32 Identifier;
	CAN_MSG ReceiveBuf;
	CAN_MSG *pReceiveBuf = &ReceiveBuf;
	
    Identifier   = (UNSIGNED32)CANRXIDR0;
    Identifier <<= 8;
    Identifier  |= (UNSIGNED32) CANRXIDR1;
    Identifier >>= 5;
	
	length = (CANRXDLR & 0x0f);
	for ( index = 0; index < length; index++ )
		*(UNSIGNED8 *)(pReceiveBuf->BUF+index) = *(&CANRXDSR0 + index);   	/* Get received data */
	CANRFLG = 0x01;	  				   						  				/* Clear RXF */

    pReceiveBuf->ID = Identifier;
    pReceiveBuf->LEN = length;

}	

void IRQ_Int_Handler ( void )
{

}

void TC0_Int_Handler ( void )
{
 	 TFLG1 = 0x01;	   		//clear interrupt
//	 StoreFlag = 1;
}

char resolver=0;
char phase=0;
char prev_phase=0;
char count=0;
int LA_position=2500;
int prevLA_position=2500;
signed char direction=0;


void TC1_Int_Handler ( void ) 	 		//encoder direction, both edges
{
    TFLG1 = 0x02;	   		//clear interrupt flag
	
//	if(PTT & 0x02) direction=1;
//	else direction=-1;
}




void TC2_Int_Handler ( void )			//tach, falling edges, changed to both because actuator encoder was too slow
{
 	TFLG1 = 0x04;
	LA_position+=direction;
	//remove next line if changing edge triggers
	//LA_position+=direction;
	

	TC2_cap=TC2-TC2_prev;		 
	TC2_prev=TC2;
	
	if (TC2_cap < 6700)			 //Max LA speed should not exceed 6700, this also prevents divide by zero
	    TC2_cap = 6700;
			
	LA_speed = 800000/TC2_cap;
	//LA_speed = LA_speed<<5; //LA_speed = LA_speed * ???,  This is to compensate for the Timer prescaler
//	if (LA_speed > 120)
//	    LA_speed = 120;
	
	
	{
	    char i;
		static char LA_speed_array_ptr=0;
		static unsigned int LA_speed_array[8];
		LA_speed_array[LA_speed_array_ptr++] = LA_speed;
		LA_speed = 0;
		if (LA_speed_array_ptr>=sizeof(LA_speed_array)/sizeof(int)) LA_speed_array_ptr=0;
		for (i=0;i<sizeof(LA_speed_array)/sizeof(int);i++)
	        LA_speed = LA_speed + LA_speed_array[i];
		LA_speed = LA_speed>>3;
	}
	
	LA_speed_timer = RTI_One_Sec * .5;

	
	if (LA_position<0) 
	    LA_position=0;
}

int TC_6410_PWM[86]={TC_6410us * .10,TC_6410us * .11,TC_6410us * .12,TC_6410us * .13,TC_6410us * .14,TC_6410us * .15,TC_6410us * .16,TC_6410us * .17,TC_6410us * .18,TC_6410us * .19,
				 TC_6410us * .20,TC_6410us * .21,TC_6410us * .22,TC_6410us * .23,TC_6410us * .24,TC_6410us * .25,TC_6410us * .26,TC_6410us * .27,TC_6410us * .28,TC_6410us * .29,
				 TC_6410us * .30,TC_6410us * .31,TC_6410us * .32,TC_6410us * .33,TC_6410us * .34,TC_6410us * .35,TC_6410us * .36,TC_6410us * .37,TC_6410us * .38,TC_6410us * .39,
				 TC_6410us * .40,TC_6410us * .41,TC_6410us * .42,TC_6410us * .43,TC_6410us * .44,TC_6410us * .45,TC_6410us * .46,TC_6410us * .47,TC_6410us * .48,TC_6410us * .49,
				 TC_6410us * .50,TC_6410us * .51,TC_6410us * .52,TC_6410us * .53,TC_6410us * .54,TC_6410us * .55,TC_6410us * .56,TC_6410us * .57,TC_6410us * .58,TC_6410us * .59,
				 TC_6410us * .60,TC_6410us * .61,TC_6410us * .62,TC_6410us * .63,TC_6410us * .64,TC_6410us * .65,TC_6410us * .66,TC_6410us * .67,TC_6410us * .68,TC_6410us * .69,
				 TC_6410us * .70,TC_6410us * .71,TC_6410us * .72,TC_6410us * .73,TC_6410us * .74,TC_6410us * .75,TC_6410us * .76,TC_6410us * .77,TC_6410us * .78,TC_6410us * .79,
				 TC_6410us * .80,TC_6410us * .81,TC_6410us * .82,TC_6410us * .83,TC_6410us * .84,TC_6410us * .85,TC_6410us * .86,TC_6410us * .87,TC_6410us * .88,TC_6410us * .89,
				 TC_6410us * .90,TC_6410us * .91,TC_6410us * .92,TC_6410us * .93,TC_6410us * .94,TC_6410us * .95};

void TC3_Int_Handler ( void )
{
 	 static int abs_hdspd = 0;
	 
 	 TFLG1 = 0x08;	   		//clear interrupt
	 
	 if ( !(PORTB & HD_PWM_Bit) )
	     abs_hdspd = abs ( HeadSpeed );		 			// Only allow speed to change (go to zero) at the end of a Low PWM cycle

// >>>>>>>>>>>>>>>>>>   PortB & PTP (below) are used for the Internal Head Ramp (FET H-Bridge, smaller machines) <<<<<<<<<<<<<<<<<<<<<	 

	 
	 
	 //                    PTB 76543210
	 //                             | | 
	 //  (Reverse) H-Bridge IN  ----' '----  H-Bridge IN (Forward)
	 //                             

	 //                    PTP 76543210
	 //                            | |
	 // (Reverse) H-Bridge /SD ----' '---- H-Bridge /SD (Forward)
	 //         
	 
	 // PTP is set (high, not shut down) in doevents
	 
	 if ( HeadSpeed >= 10 )
	 {	     
	     HD_PWM_Bit = 0x01;
	 }
	 else if ( HeadSpeed <= -10 )
	 {
	     HD_PWM_Bit = 0x04;
	 }
	 else if ( HD_PWM_Out )   	   		 	   			//if stopping and high side is going high 
	 {
	  	 PTP &= ~(HD_PWM_Bit<<1);	   		   			//disable high side driver to prevent braking	
		 HD_PWM_Out = 0;					   			//don't go high     
		 abs_hdspd = 0;
		 PORTB = PORTB & ~0x05;				   			//clear both PWM outputs
		 HD_PWM_Bit = 0;
		 
		 TCTL2 = ( TCTL2 & ~0xC0 ) | 0x80;	   	   		// 0x80 == clear TC output
		 CFORC = 0x08;	   		   	 			   	  	// External PWM low
	 }
	 
	 
 	 PORTB = ( PORTB & ~HD_PWM_Bit ) | HD_PWM_Out;   	//Internal PWM outputs
	 
// >>>>>>>>>>>>>>>>>>   PTT bit 3, TC3 (below) is used for the external Head Ramp (Low side FET driver and relays) <<<<<<<<<<<<<<<<<<<<<	 
//PWM output on PT3 for external 

	 if ( abs_hdspd > 95 )
	 {
		 abs_hdspd = 95;   	   		   	 	   	  	   //Internal stays at 95, external switch to always on at 95 percent
	 }
	 
	 if ( PORTB & HD_PWM_Bit )  	  	  	   		   //PWM output is high (just went high), set time to PWM percent
	 {
	     if ( abs_hdspd < 95 )
		 {
		 	 TCTL2 = ( TCTL2 & ~0xC0 ) | 0x80;	   	   // 0x80 == clear TC output, on next interrupt
		 }
		 else	
		 {		   	   		   		   	 		   	   // Head speed is equal to 95
		 	 TCTL2 = ( TCTL2 & ~0xC0 ) | 0xC0;	   	   // 0xC0 == Set TC output, on force (next line) (force External PWM to 100%)
			 CFORC = 0x08;	   		   	 		   	   // External PWM High
		 }
		 HD_PWM_Out = 0;			   		 		   //Internal PWM will go low on next interrupt
         TC3 = TC3 + TC_6410_PWM[abs_hdspd-10 < 0?0:abs_hdspd-10];		   // Get high time of PWM
	 }
	 else  			  				   		   	   	   //PWM output is low (just went low), set time to (100% - PWM percent)
	 {
		 TC3 = TC3 + ( TC_6410us - TC_6410_PWM[abs_hdspd-10 < 0?0:abs_hdspd-10]);  // Calculate low time of PWM (entire PWM time is 6.41ms)
		 if ( abs_hdspd >= 10 && abs_hdspd < 95 )
		 {
    		 TCTL2 = ( TCTL2 & ~0xC0 ) | 0xC0;		   // 0xC0 == Set TC output, External PWM High, on next interrupt
		 }
		 else if ( abs_hdspd >= 95 )	
		 {		   	   		   		   	 		   	   // Head speed is equal or greater than 95
		 	 TCTL2 = ( TCTL2 & ~0xC0 ) | 0xC0;	   	   // 0xC0 == Set TC output, on force (next line) (force External PWM to 100%)
			 CFORC = 0x08;	   		   	 		   	   // External PWM High
		 }
		 else
		 {
		     TC3 = TC3 + TC_6410_PWM[85];			   //set PWM to longest time when stopping (hdspd = 0)
		 }
    	 HD_PWM_Out = HD_PWM_Bit;		   		   	   //Internal PWM will go high on next interrupt
	 }
}


				 
				 
void TC5_Int_Handler ( void )
{
 	 TFLG1 = 0x20;	   		//clear interrupt
 	 TC5 = TCNT + TC_1ms;
	 MCOHW_TimerISR();
}

void TC6_Int_Handler ( void )
{
 	 TFLG1 = 0x40;	   		//clear interrupt
	 
	 if ( PB1_PWM )
	 {	     
	     LA_PWM_Bit = 0x02;
		 LAspd = PB1_PWM;
	 }
	 else if ( PB3_PWM )
	 {
	     LA_PWM_Bit = 0x08;
		 LAspd = PB3_PWM;
	 }
	 else
	 {
		 LAspd = 0;
		 //PORTB = ( PORTB & ~0x0a );
	  	 //PTP &= ~(LA_PWM_Bit>>1);	   		   //disable driver to prevent braking	     
	 }
	 
	 PORTB = ( PORTB & ~LA_PWM_Bit ) | LA_PWM_Out;
	 
	 if ( LAspd > 95 )  //Limit output to 95%
	 {
		 LAspd = 95;
	 }
	 
	 if ( LAspd < 10 )  //Always off if < 10, Clear output on next interrupt
	 {
	     //TC6 = TC6 + TC_1200us;
	     TC6 = TC6 + TC_6410us;
		 LA_PWM_Out = 0;
	 }
	 else if ( PORTB & LA_PWM_Bit ) //if output is high, Clear output on next interrupt (LA_PWM_In is equal to active output)
	 {
	     //TC6 = TC6 + ( TC_1200us/10 * LAspd/10 );
	     //TC6 = TC6 + ( TC_6410us/10 * LAspd/10 );
	     TC6 = TC6 + TC_6410_PWM[LAspd-10<0?0:LAspd-10];
		 LA_PWM_Out = 0;
	 }
	 else  //if output is low, Set output on next interrupt
	 {
         //TC6 = TC6 + ( TC_1200us - ( TC_1200us/10 * LAspd/10 ) );
         //TC6 = TC6 + ( TC_6410us - ( TC_6410us/10 * LAspd/10 ) );
         TC6 = TC6 + ( TC_6410us - TC_6410_PWM[LAspd-10<0?0:LAspd-10]);
		 LA_PWM_Out = LA_PWM_Bit;
	 }
}

void RTI_Int_Handler ( void )
{
 	 CRGFLG = 0x80;	   	//clear interrupt

	StateTime++;
    LineupTimer++;
	
	if ( HdOffTimer )
	{
	   	 HdOffTimer--;		
	}
	if ( PID_Timer )
	{
	    PID_Timer--;
	}
	if ( LA_speed_timer )
	{
	    LA_speed_timer--;
		
	}
	else{
		 LA_speed=0;
	} 
    if ( Timer1 )
    {
        if ( !--Timer1 )
            Gen_Flags &= ~Gen_Flags_Timer1;
    }
    
    if ( Timer2 )
    {
        if ( !--Timer2 )
            Gen_Flags &= ~Gen_Flags_Timer2;
    }
    
    if ( LA_Wait_Timer )
    {
	    --LA_Wait_Timer;
		if ( !LA_Wait_Timer )
		    LA_Moving = 0;  //clear moving flag after delay
    }
    
	if ( IncSpeedUpTimer )
    {
        IncSpeedUpTimer--;
    }
    
    if ( MenuTimer )
	{
	    MenuTimer--;
        
        if ( !MenuTimer )
        {
            if ( IncSpeedUpTimer )
            {
                IncSpeedUpCntr++;
            }
            else
            {
                IncSpeedUpCntr=0;
                fast_inc=0;
            }
                
            if ( IncSpeedUpCntr > IncSpeedUpCnt )
            {
                IncSpeedUpCntr--;
                fast_inc=1;
            }
        }      
	}
	
	if ( Update_Menu_Timer > 0 )
	{
	    Update_Menu_Timer--;
	}
	
    if ( FocusZoomTimer )
    {
        if ( !--FocusZoomTimer )       
        {   //stop focus and zoom
            PWMDTY4 = 0;
            PWMDTY5 = 0;
			PORTA &= ~0x60;
        }
    }

    if ( AdvanceTimer )     //film advance timer
    {
        if ( !--AdvanceTimer )       
        {   //stop Advance
            PORTA &= ~0x80;
        }
    }

    //Ramp for internal H-Bridge and external Head Ramp
	if ( !(--RampTimer) )
	{
	    RampTimer = RampTime;
    	if ( HeadRampCW == 1 )
    	{
    	    if ( HeadSpeed < 97 )
    	    {
			    HeadSpeed++;
			}
    	}
    	else if ( HeadRampCW == -1 )
    	{			
    	    if ( HeadSpeed > 0 )
    		    //HeadSpeed--;  //Ramp down
				HeadSpeed = 0;  //Stop immediately instead of ramping down
    	}
    	else if ( HeadRampCCW == 1 )
    	{
    	    if ( HeadSpeed > -97 )
			{
    		    HeadSpeed--;
			}
    	}
    	else if ( HeadRampCCW == -1 )
    	{			
    	    if ( HeadSpeed < 0 )
    		    //HeadSpeed++;  //Ramp up
				HeadSpeed = 0;  //Stop immediately instead of ramping down				
    	}

	}
		
    if ( !(Tick--) )
    {
        Tick = RTI_One_Sec;
        if ( !(Seconds--) )
        {
            Seconds = 60;
        
        }
    	if ( CompressorTimer )
    	{
    	    CompressorTimer--;
    	}
		if ( updatePressureTimer )
		{
		   updatePressureTimer--;
		}
		if ( SequenceTimer )
		{
		    SequenceTimer--;
			if ( !SequenceTimer )
			    State = ErrorState;
		}
    }
}

void SCI0_Int_Handler ( void ) 
{
 	 char tmpchar;
	 
 	 if ( SCI0SR1 & SCI0SR1_RDRF )
	 {
    	 tmpchar = SCI0DRL;
	     if ( !(Gen_Flags & Gen_Flags_SIN0Rcvd) )
		 {
			if ( tmpchar != '\n' )
			{
			    SIN0Buf [SIN0Bufptr++] = tmpchar;
    			if ( SIN0Bufptr == SIN0BufLen-1 )
    			{
    		        Gen_Flags |= Gen_Flags_SIN0Rcvd;
    		   		SIN0Buf [SIN0Bufptr] = '\0';
    			}
    			if ( tmpchar == '\r' )
    			{
    		        Gen_Flags |= Gen_Flags_SIN0Rcvd;
    		   		SIN0Buf [SIN0Bufptr] = '\0';
   			   		SIN0Bufptr = 0;
    			}
			}
		  } 
	 }
	 if ( SCI0SR1 & SCI0SR1_TDRE )
	 {
		   
	 }
}


void SCI1_Int_Handler ( void ) 
{

}


#include "vectors.h"