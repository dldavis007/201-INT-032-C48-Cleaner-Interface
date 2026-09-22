#include <stdio.h>
#include <string.h>
#include <stdlib.h>

#include "Subroutines.h"
#include "mc9s12a128.h"
#include "Interrupts.h"
#include "mcohw.h"
#include "EEProm.h"
#include "string.h"
#include "PID.h"

char save_serial_flag;
extern char Gen_Flags;

extern char SIN0Buf[SIN0BufLen];
extern int SIN0Bufptr;
extern char SOUT0Buf[SOUT0BufLen];
extern int SOUT0Bufptr;

extern char SIN1Buf[SIN1BufLen];
extern int SIN1Bufptr;
extern char SOUT1Buf[SOUT1BufLen];
extern int SOUT1Bufptr;

unsigned cam_add;
unsigned ran_num = 0;  //used to create unique camera address  

extern unsigned int TC0_RCVD_Data;

extern CAN_MSG gTxNMT;

CAN_MSG gTxMsg;

extern unsigned int Timer1;
extern unsigned int Timer2;
extern int Update_Menu_Timer;
extern unsigned int CompressorTimer;
extern unsigned int FocusZoomTimer;
extern unsigned int AdvanceTimer;
extern unsigned int LA_Wait_Timer;
extern int updatePressureTimer;	 //limit frequency of updates to menu
extern unsigned int SequenceTimer;
extern unsigned int HdOffTimer;
extern unsigned long LineupTimer;
extern unsigned long LineupTimeCapture;

char UpdateMenu;
char cursor_row;    //row position of cursor, zero is at top of display
extern char InProcess;
extern char AcceptKeys;

extern unsigned int MenuTimer;

extern unsigned char StoreFlag;

float margin=0.02;
char done=1;
int desired_position=0;
int next_desired_position=0;
int prev_desired_position=0;  //this needs to initially be some invalid position, so the actuator can move to 0
extern int LA_position;
extern int prevLA_position;
extern char phase;
extern char prev_phase;
extern char resolver;
signed char start_sequence=1;
int desired_speed=0;
int next_desired_speed=0;
extern signed char direction;
char extend_test=0;
char retract_test=0;
char LA_Moving=0;
int Move_Position=-1;
int Move_Speed=0;
char LA_Moved = 0;

int CStrks;
int	FStrks;
int	CDist;
int	FDist;
int	Cntr;

signed char HeadRampCW=0;
signed char HeadRampCCW=0;
int HeadSpeed;

char State = FinishState;
extern unsigned long  StateTime;
char HdDirection;

extern unsigned int PID_Timer;
extern long LA_speed;

char FractionFlag;
char compTimedOutflag = 0;

char Variable_flag;
char String_Var_ptr;
char Multi_Var_ptr;
extern signed char CursorUpFlag;
extern signed char CursorDownFlag;
extern signed char SelectFlag;
char PressureMsgSent;
char CamAddressXmitd;

unsigned char ActCam4;
unsigned char ActCam5;


char laSwitch;

extern char fast_inc;
extern unsigned int IncSpeedUpTimer;
extern char LAspd;

char PB1_PWM, PB3_PWM;

unsigned char Use_IN_digi_15=0;

const char enum_NULL_str[]="";
const char enum_off_on_str[]="OFF, ON";
const char enum_cln_vac_str[]="CLN,VAC";
const char enum_pos_neg_str[]="POS,NEG";
const char enum_slow_fast_str[]="EXSLW, SLOW, FAST";
const char enum_stop_retract_str[]="   STOP, EXTEND,RETRACT";
const char enum_base_iso_str[]="BASE, ISO, OFF";
const char enum_lin_act_str[]="CLEANER,LIN ACT";
const char enum_machinesize_str[]="08-10,12-22,24-34,36-48";
const char enum_alpha_str[]=" ,A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z,0,1,2,3,4,5,6,7,8,9,.,<,>,;,:,@,(,),-,-"; //last char is the cursor char, do not count for max
const char enum_number_str[]="0,1,2,3,4,5,6,7,8,9,-";  //last char is the cursor char, do not count for max


//The following Menu Variables are saved in EEPROM

struct menu_var  CompressorOnOff = {
	   2,1,1,2,0,3," ON",enum_off_on_str
};
 
struct menu_var  CntrStrokes = {
	   6,1,0,20,0,2," 6",enum_NULL_str
};

struct menu_var  FullStrokes = {
	   6,1,0,20,0,2," 6",enum_NULL_str
};

struct menu_var  CntrDist = {
	   4.0,0.1,1.0,20.0,1,4," 4.0",enum_NULL_str
};

struct menu_var  FullDist = {
	   8.0,0.1,1.0,20.0,1,4," 8.0",enum_NULL_str
};

struct menu_var  LACntr = {
	   4.0,0.1,1.0,20.0,1,4," 4.0",enum_NULL_str
};

struct menu_var  LASpeed = {
	   100,1,25,100,0,3,"100",enum_NULL_str
};

struct menu_var  LineUpDist = {
	   75.0,0.1,0.0,300.0,1,5," 75.0",enum_NULL_str
};

struct menu_var  LineupSpeed = {
	   0.66,0.01,0.25,0.90,2,4,"0.66",enum_NULL_str
};

struct menu_var  SealTime = {
	   10,1,0,20,0,2,"10",enum_NULL_str
};

struct menu_var TestModeOnOff = {
	   1,1,1,2,0,3,"OFF",enum_off_on_str
};

struct menu_var  LineUpClnVac = { //TrigVacOnOff
	   1,1,1,2,0,3,"CLN",enum_cln_vac_str
};

struct menu_var  LineupTimeOnOff = { 
	   1,1,1,2,0,3,"OFF",enum_off_on_str
};

struct menu_var laSwitchPol = {
	   2,1,1,2,0,3,"NEG",enum_pos_neg_str
};

struct menu_var  VacDist1 = {
	   100,1,0,300,0,3,"100",enum_NULL_str
};

struct menu_var  VacDist2 = {
	   100,1,0,300,0,3,"100",enum_NULL_str
};

struct menu_var  VacDist3 = {
	   100,1,0,300,0,3,"100",enum_NULL_str
};

struct menu_var  VacDist4 = {
	   0,1,0,300,0,3,"  0",enum_NULL_str
};

struct menu_var  VacDist5 = {
	   0,1,0,300,0,3,"  0",enum_NULL_str
};

struct menu_var  VacSpeed1 = {
	   1,1,1,3,0,5,"EXSLW",enum_slow_fast_str
};

struct menu_var  VacSpeed2 = {
	   1,1,1,3,0,5,"EXSLW",enum_slow_fast_str
};


struct menu_var  VacSpeed3 = {
	   1,1,1,3,0,5,"EXSLW",enum_slow_fast_str
};

struct menu_var  VacSpeed4 = {
	   1,1,1,3,0,5,"EXSLW",enum_slow_fast_str
};

struct menu_var  VacSpeed5 = {
	   1,1,1,3,0,5,"EXSLW",enum_slow_fast_str
};

struct menu_var  LowSetPoint = {
	   90,1,10,90,0,2,"90",enum_NULL_str
};

struct menu_var  HighSetPoint = {
	   100,1,20,100,0,3,"100",enum_NULL_str
};

struct menu_var  MachineSize = {
	   1,1,1,4,0,5,"08-10",enum_machinesize_str
};

struct menu_var  ZoomSpeed = {
	   100,1,0,100,0,3,"100",enum_NULL_str
}; //0-100
struct menu_var  FocusSpeed = {
	   100,1,0,100,0,3,"100",enum_NULL_str
}; //0-100

struct menu_var  LightLevel = {
	   100,1,0,100,0,3,"100",enum_NULL_str
};

struct menu_var  AdvanceTime = {
	   1,1,1,5,0,1,"1",enum_NULL_str
}; //1-5

struct menu_var  CamTag = {
	   1,1,1,46,0,-11,"CLEANER CAM",enum_alpha_str
};

struct menu_var  disp_add = {
	   1,1,1,46,0,-4,"1234",enum_alpha_str
};


//saved seperately at 0x0a00
char cam_addx[2];      //unique camera address from ran_num

//saved seperately at 0x0b10
struct menu_var SerialNum = {
	   1,1,1,10,0,-6,"------",enum_number_str
};

//saved seperately at 0x0c50
unsigned char TrigCam4 = 123;
unsigned char TrigCam5 = 45;





//The following Menu Variables are NOT saved in EEPROM
struct menu_var  NullVar;

struct menu_var HeadCWOnOff = {
	   1,1,1,2,0,3,"OFF",enum_off_on_str
};

struct menu_var HeadCCWOnOff = {
	   1,1,1,2,0,3,"OFF",enum_off_on_str
};

struct menu_var BlowersOnOff = {
	   1,1,1,2,0,3,"OFF",enum_off_on_str
};

struct menu_var VacuumOnOff = {
	   1,1,1,2,0,3,"OFF",enum_off_on_str
};

struct menu_var SealsOnOff = {
	   1,1,1,2,0,3,"OFF",enum_off_on_str
};

struct menu_var  Pressure = {
	   100,1,0,1000,0,4," 100",enum_NULL_str
};

struct menu_var Rev = {
	   1,1,1,46,0,-4,Revision,enum_alpha_str
};

float UDSPD;
float updateSpd;

extern SPid *spdPID;
extern SPid speedPID;

extern char initPID;

#pragma abs_address: 0xda00
struct MenuStruct Menuc[MenuSize] = {     
                                        0,0,0,0,
                                        "   CLEANER-VACUUM   ",
                                        " CLEANER            ",
										" VACUUM             ",
                                        " COMPRESSOR         ",
                                        " CAMERA             ",
                                        " STATUS             ",
                                        " MACHINE SIZE       ",
                                        " DEFAULTS           ",
                                        " EXIT               ",
                                        "                    ",
                                        "                    ",
                                        "                    ",
                                        15,0,0,0,0,15,0,0,0,0,0,
                                        &NullVar,
                                        &NullVar,
                                        &NullVar,
                                        &NullVar,
                                        &NullVar,
                                        &MachineSize,
                                        &NullVar,
                                        &NullVar,
                                        &NullVar,
                                        &NullVar,
                                        &NullVar,
                                        &NullFunction,
                                        &NullFunction,
                                        &NullFunction,
                                        &NullFunction,
                                        &NullFunction,
                                        &StdVarFunction,
                                        &NullFunction,
                                        &ExitMenu,
                                        &NullFunction,
                                        &NullFunction,
                                        &NullFunction,
                                        
                                        
                                            0,0,0,1,
                                            "       CLEANER      ",
											" SETTINGS           ",
                                            " SETTINGS 2         ",
                                            " DIAGNOSTICS        ",
											" EXIT               ",
                                            "                    ",
                                            "                    ",
                                            "                    ",
                                            "                    ",
                                            "                    ",
                                            "                    ",
                                            "                    ",
                                            0,0,0,0,0,0,0,0,0,0,0,
                                            &NullVar,
                                            &NullVar,
                                            &NullVar,
                                            &NullVar,
                                            &NullVar,
                                            &NullVar,
                                            &NullVar,
                                            &NullVar,
                                            &NullVar,
                                            &NullVar,
                                            &NullVar,
                                            &NullFunction,
                                            &NullFunction,
                                            &NullFunction,
                                            &ExitMenu,
                                            &NullFunction,
                                            &NullFunction,
                                            &NullFunction,
                                            &NullFunction,
                                            &NullFunction,
                                            &NullFunction,
                                            &NullFunction,
                                     
                            
                                                0,0,1,1,
                                                "  CLEANER SETTINGS  ",
    											" CENTER STROKES     ",
                                                " FULL STROKES       ",
    											" CENTER DIST        ",
                                                " FULL DIST          ",
                                                " LA CENTER          ",
    											" LA SPEED           ",
                                                " LINE-UP DIST       ",
                                                " SEAL TIME          ",
                                                " TEST MODE          ",
                                                " LA SWITCH          ",
    											" EXIT               ",
                                                18,18,16,16,16,17,15,18,17,17,0,
                                                &CntrStrokes,
                                                &FullStrokes,
                                                &CntrDist,
                                                &FullDist,
                                                &LACntr,
                                                &LASpeed,
                                                &LineUpDist,
                                                &SealTime,
                                                &TestModeOnOff,
                                                &laSwitchPol,
                                                &NullVar,
                                                &StdVarFunction,
                                                &StdVarFunction,
                                                &StdVarFunction,
                                                &StdVarFunction,
                                                &StdVarFunction,
                                                &StdVarFunction,
                                                &StdVarFunction,
                                                &StdVarFunction,
                                                &StdVarFunction,
                                                &StdVarFunction,
                                                &ExitMenu,
                                         
                                
                                                0,0,1,2,
                                                "     SETTINGS 2     ",
                                      			" SEL TRIG CAM       ",
                                                " LINE UP ON         ",
                                                " LINEUP TIMER       ",
                                                " LINEUP SPEED       ",
												" EXIT               ",
                                                "      WARNING       ",
                                                "THE CURRENT CAMERA  ",
                                                "WILL BE SELECTED AS ",
                                                "THE TRIGGER CAMERA  ",
                                                "                    ",
                                                "                    ",
                                                0,16,16,15,0,0,0,0,0,0,0,
                                                &NullVar,
                                                &LineUpClnVac,
                                                &LineupTimeOnOff,
                                                &LineupSpeed,
												&NullVar,
												&NullVar,
												&NullVar,
												&NullVar,
												&NullVar,
                                                &NullVar,
                                                &NullVar,
                                                &GetTrigCam,
												&StdVarFunction,
												&StdVarFunction,
												&StdVarFunction,
												&ExitMenu,
												&NullFunction,
												&NullFunction,
												&NullFunction,
												&NullFunction,
												&NullFunction,
												&NullFunction,
												
												
												
												0,0,1,3,
                                                " CLEANER DIAGNOSTICS",
                                      			" RETRACT LA         ",
                                      			" CENTER LA          ",
                                      			" EXTEND LA          ",
                                      			" HEAD CW            ",
                                      			" HEAD CCW           ",
                                      			" SEALS              ",
                                      			" GRIT               ",
                                                " VACUUM             ",
                                                " EXIT               ",
                                                "                    ",
                                                "                    ",
                                                0,0,0,16,16,16,16,16,0,0,0,
                                                &NullVar,
                                                &NullVar,
                                                &NullVar,
                                                &HeadCWOnOff,
                                                &HeadCCWOnOff,
												&SealsOnOff,
                                                &BlowersOnOff,
                                                &VacuumOnOff,
                                                &NullVar,
                                                &NullVar,
                                                &NullVar,
                                                &RetractLA,
                                                &CenterLA,
                                                &ExtendLA,
    											&StdVarFunction,
    											&StdVarFunction,
												&StdVarFunction,
                                                &StdVarFunction,
                                                &StdVarFunction,
                                                &ExitMenu,
                                                &NullFunction,
                                                &NullFunction,
                                                 
                                                
                                            0,0,0,2,
                                            "       VACUUM       ",
											" SETTINGS           ",
                                            " DIAGNOSTICS        ",
											" EXIT               ",
                                            "                    ",
                                            "                    ",
                                            "                    ",
                                            "                    ",
                                            "                    ",
                                            "                    ",
                                            "                    ",
                                            "                    ",
                                            0,0,0,0,0,0,0,0,0,0,0,
                                            &NullVar,
                                            &NullVar,
                                            &NullVar,
                                            &NullVar,
                                            &NullVar,
                                            &NullVar,
                                            &NullVar,
                                            &NullVar,
                                            &NullVar,
                                            &NullVar,
                                            &NullVar,
                                            &NullFunction,
                                            &NullFunction,
                                            &ExitMenu,
                                            &NullFunction,
                                            &NullFunction,
                                            &NullFunction,
                                            &NullFunction,
                                            &NullFunction,
                                            &NullFunction,
                                            &NullFunction,
                                            &NullFunction,
                                     
                            
                                                0,0,2,1,
                                                "   VACUUM SETTINGS  ",
                                                " 1ST VAC DIST       ",
                                                " 2ND VAC DIST       ",
                                                " 3RD VAC DIST       ",
                                                " 4TH VAC DIST       ",
                                                " 5TH VAC DIST       ",
                                                " 1ST VAC SPEED      ",
                                                " 2ND VAC SPEED      ",
                                                " 3RD VAC SPEED      ",
                                                " 4TH VAC SPEED      ",
                                                " 5TH VAC SPEED      ",
                                                " EXIT               ",
                                                17,17,17,17,17,15,15,15,15,15,0,
                                                &VacDist1,
                                                &VacDist2,
                                                &VacDist3,
                                                &VacDist4,
                                                &VacDist5,
                                                &VacSpeed1,
                                                &VacSpeed2,
                                                &VacSpeed3,
                                                &VacSpeed4,
                                                &VacSpeed5,
                                                &NullVar,
                                                &StdVarFunction,
                                                &StdVarFunction,
                                                &StdVarFunction,
                                                &StdVarFunction,
                                                &StdVarFunction,
                                                &StdVarFunction,
                                                &StdVarFunction,
                                                &StdVarFunction,
                                                &StdVarFunction,
                                                &StdVarFunction,
                                                &ExitMenu,
                                         
                                
                                                0,0,2,2,
                                                " VACUUM DIAGNOSTICS ",
                                      			" GRIT               ",
                                                " VACUUM             ",
                                                " EXIT               ",
                                                "                    ",
                                                "                    ",
                                                "                    ",
                                                "                    ",
                                                "                    ",
                                                "                    ",
                                                "                    ",
                                                "                    ",
                                                16,16,0,0,0,0,0,0,0,0,0,
                                                &BlowersOnOff,
                                                &VacuumOnOff,
                                                &NullVar,
                                                &NullVar,
                                                &NullVar,
                                                &NullVar,
                                                &NullVar,
                                                &NullVar,
                                                &NullVar,
                                                &NullVar,
                                                &NullVar,
                                                &StdVarFunction,
                                                &StdVarFunction,
                                                &ExitMenu,
    											&NullFunction,
    											&NullFunction,
                                                &NullFunction,
                                                &NullFunction,
                                                &NullFunction,
                                                &NullFunction,
                                                &NullFunction,
                                                &NullFunction,
                                                 
                                                
                                            0,0,0,3,
                                            "     COMPRESSOR     ",
											" SETTINGS           ",
                                            " DIAGNOSTICS        ",
											" EXIT               ",
                                            "                    ",
                                            "                    ",
                                            "                    ",
                                            "                    ",
                                            "                    ",
                                            "                    ",
                                            "                    ",
                                            "                    ",
                                            0,0,0,0,0,0,0,0,0,0,0,
                                            &NullVar,
                                            &NullVar,
                                            &NullVar,
                                            &NullVar,
                                            &NullVar,
                                            &NullVar,
                                            &NullVar,
                                            &NullVar,
                                            &NullVar,
                                            &NullVar,
                                            &NullVar,
                                            &NullFunction,
                                            &NullFunction,
                                            &ExitMenu,
                                            &NullFunction,
                                            &NullFunction,
                                            &NullFunction,
                                            &NullFunction,
                                            &NullFunction,
                                            &NullFunction,
                                            &NullFunction,
                                            &NullFunction,
                                     
                            
                                                0,0,3,1,
                                                " COMPRESSOR SETTINGS",
                                                " COMPRESSOR         ",
                                                " LOW SET POINT      ",
    											" HIGH SET POINT     ",
                                                " PRESSURE           ",
                                            	" EXIT               ",
                                                "                    ",
                                                "                    ",
                                                "                    ",
                                                "                    ",
                                                "                    ",
                                                "                    ",
                                                17,18,17,16,0,0,0,0,0,0,0,
                                                &CompressorOnOff,
                                                &LowSetPoint,
                                                &HighSetPoint,
                                                &Pressure,
                                            	&NullVar,
                                            	&NullVar,
                                                &NullVar,
                                                &NullVar,
                                                &NullVar,
                                                &NullVar,
                                                &NullVar,
                                                &StdVarFunction,
                                                &StdVarFunction,
                                                &StdVarFunction,
                                                &NullFunction,
                                                &ExitMenu,
                                                &NullFunction,
                                                &NullFunction,
                                                &NullFunction,
                                                &NullFunction,
                                                &NullFunction,
                                                &NullFunction,
                                         
                                
                                                0,0,3,2,
                                                "   COMPRESSOR DIAG  ",
                                                " SEALS              ",
                                                " EXIT               ",
                                                "                    ",
                                                "                    ",
                                                "                    ",
                                                "                    ",
                                                "                    ",
                                                "                    ",
                                                "                    ",
                                                "                    ",
                                                "                    ",
                                                16,0,0,0,0,0,0,0,0,0,0,
                                                &SealsOnOff,
                                                &NullVar,
                                                &NullVar,
                                                &NullVar,
                                                &NullVar,
                                                &NullVar,
                                                &NullVar,
                                                &NullVar,
                                                &NullVar,
                                                &NullVar,
                                                &NullVar,
                                                &StdVarFunction,
                                                &ExitMenu,
                                                &NullFunction,
                                                &NullFunction,
                                                &NullFunction,
                                                &NullFunction,
                                                &NullFunction,
                                                &NullFunction,
                                                &NullFunction,
                                                &NullFunction,
                                                &NullFunction,
                                         
                                
                                            0,0,0,4,
                                            "       CAMERA       ",
											" SETTINGS           ",
                                            " DIAGNOSTICS        ",
											" STATUS             ",
                                            " EXIT               ",
                                            "                    ",
                                            "                    ",
                                            "                    ",
                                            "                    ",
                                            "                    ",
                                            "                    ",
                                            "                    ",
                                            0,0,0,0,0,0,0,0,0,0,0,
                                            &NullVar,
                                            &NullVar,
                                            &NullVar,
                                            &NullVar,
                                            &NullVar,
                                            &NullVar,
                                            &NullVar,
                                            &NullVar,
                                            &NullVar,
                                            &NullVar,
                                            &NullVar,
                                            &NullFunction,
                                            &NullFunction,
                                            &NullFunction,
                                            &ExitMenu,
                                            &NullFunction,
                                            &NullFunction,
                                            &NullFunction,
                                            &NullFunction,
                                            &NullFunction,
                                            &NullFunction,
                                            &NullFunction,
                                     
                            
                                                0,0,4,1,
                                                "   CAMERA SETTINGS  ",
    											" LIGHTING           ",
    											" ZOOM SPEED         ",
    											" FOCUS SPEED        ",
    											" FILM ADVANCE       ",
                                                " TAG                ",
                                                " EXIT               ",
                                                "                    ",
                                                "                    ",
                                                "                    ",
                                                "                    ",
                                                "                    ",
                                                16,16,16,18,8,0,0,0,0,0,0,
                                                &LightLevel,
                                                &ZoomSpeed,
                                                &FocusSpeed,
                                                &AdvanceTime,
                                                &CamTag,
                                                &NullVar,
                                                &NullVar,
                                                &NullVar,
                                                &NullVar,
                                                &NullVar,
                                                &NullVar,
                                                &StdVarFunction,
                                                &StdVarFunction,
                                                &StdVarFunction,
                                                &StdVarFunction,
                                                &StdVarFunction,
                                                &ExitMenu,
                                                &NullFunction,
                                                &NullFunction,
                                                &NullFunction,
                                                &NullFunction,
                                                &NullFunction,
                                         
                                
                                                0,0,4,2,
                                                " CAMERA DIAGNOSTICS ",
                                                " ADVANCE FILM       ",
                                                " ZOOM IN            ",
    											" ZOOM OUT           ",
    											" FOCUS FAR          ",
                                                " FOCUS NEAR         ",
    											" EXIT               ",
                                                "                    ",
                                                "                    ",
                                                "                    ",
                                                "                    ",
                                                "                    ",
                                                0,0,0,0,0,0,0,0,0,0,0,
                                                &NullVar,
                                                &NullVar,
                                                &NullVar,
                                                &NullVar,
                                                &NullVar,
                                                &NullVar,
                                                &NullVar,
                                                &NullVar,
                                                &NullVar,
                                                &NullVar,
                                                &NullVar,
                                                &Advance,
                                                &ZoomInFunct,
                                                &ZoomOutFunct,
    											&FocusFarFunct,
                                                &FocusNearFunct,
    											&ExitMenu,
                                                &NullFunction,
                                                &NullFunction,
                                                &NullFunction,
                                                &NullFunction,
                                                &NullFunction,
                                                 
                                                
                                                0,0,4,3,
                                                "     STATUS MENU    ",
                                                " SOFTWARE REV       ",
                                                " CAMERA ID          ",
                                                " SERIAL NUM         ",
                                                " EXIT               ",
                                                "                    ",
                                                "                    ",
                                                "                    ",
                                                "                    ",
                                                "                    ",
                                                "                    ",
                                                "                    ",
                                                15,15,13,0,0,0,0,0,0,0,0,
                                                &Rev,
                                                &disp_add,
                                                &SerialNum,
                                                &NullVar,
                                                &NullVar,
                                                &NullVar,
                                                &NullVar,
                                                &NullVar,
                                                &NullVar,
                                                &NullVar,
                                                &NullVar,
                                                &NullFunction,
                                                &NullFunction,
                                                &NullFunction,
                                                &ExitMenu,
                                                &NullFunction,
                                                &NullFunction,
                                                &NullFunction,
                                                &NullFunction,
                                                &NullFunction,
                                                &NullFunction,
                                                &NullFunction,
                                                
                                                
                                            0,0,0,5,
                                            "     STATUS MENU    ",
                                            " SOFTWARE REV       ",
                                            " PRESSURE           ",
                                            " CAMERA ID          ",
                                            " SERIAL NUM         ",
                                            " EXIT               ",
                                            "                    ",
                                            "                    ",
                                            "                    ",
                                            "                    ",
                                            "                    ",
                                            "                    ",
                                            15,15,15,13,0,0,0,0,0,0,0,
                                            &Rev,
                                            &Pressure,
                                            &disp_add,
                                            &SerialNum,
                                            &NullVar,
                                            &NullVar,
                                            &NullVar,
                                            &NullVar,
                                            &NullVar,
                                            &NullVar,
                                            &NullVar,
                                            &NullFunction,
                                            &NullFunction,
                                            &NullFunction,
                                            &StdVarFunction,//&VarSerNumFunct,
                                            &ExitMenu,
                                            &NullFunction,
                                            &NullFunction,
                                            &NullFunction,
                                            &NullFunction,
                                            &NullFunction,
                                            &NullFunction,
                                            
                                            
                                            0,0,0,7,
                                            "     DEFAULTS       ",
                                            " EXIT               ",
                                            " RESTORE DEFAULTS   ",
                                            "                    ",
                                            "      WARNING       ",
                                            "YOU WILL LOSE ALL   ",
                                            "OF THE CURRENT      ",
                                            "SETTINGS WHEN       ",
                                            "RESTORING DEFAULTS  ",
                                            "                    ",
                                            "                    ",
                                            "                    ",
                                            0,0,0,0,0,0,0,0,0,0,0,
                                            &NullVar,
                                            &NullVar,
                                            &NullVar,
                                            &NullVar,
                                            &NullVar,
                                            &NullVar,
                                            &NullVar,
                                            &NullVar,
                                            &NullVar,
                                            &NullVar,
                                            &NullVar,
                                            &ExitMenu,
                                            &RestoreDefaults,
                                            &NullFunction,
                                            &NullFunction,
                                            &NullFunction,
                                            &NullFunction,
                                            &NullFunction,
                                            &NullFunction,
                                            &NullFunction,
                                            &NullFunction,
                                            &NullFunction
 
};
#pragma end_abs_address

struct MenuStack MenuStackc[MenuStackSize] = {0,0,0,0,1,0};

char StackPointer = 0;

char Menu[12][21];

char VariableFlag = 0;




/***************************************************************************/ 

// external declaration for the process image array
extern UNSIGNED8 gProcImg[];

/**************************************************************************/



void InitPorts ( void )
{


	DDRA = DDRA_Init;
    DDRB = DDRB_Init;
	DDRE = DDRE_Init;
	DDRJ = DDRJ_Init;
    DDRM = DDRM_Init;
    DDRP = DDRP_Init;
    DDRS = DDRS_Init;
    DDRT = DDRT_Init;
	
    ATD0DIEN = ATD0DIEN_Init;
    ATD0CTL2 = ATD0CTL2_Init;
    ATD0CTL3 = ATD0CTL3_Init;
    ATD0CTL5 = ATD0CTL5_Init;
    
    
    PUCR = PUCR_Init;
	PERM = PERM_Init;
    PPSM = PPSM_Init;
    
    PORTA = PORTA_Init;
    PORTB = PORTB_Init;
	PORTE = PORTE_Init;	
	PTJ = PTJ_Init;
    PTM = PTM_Init;
	PTP = PTP_Init;
	PTS = PTS_Init;
    PTT = PTT_Init;
	
	PPSJ = PPSJ_Init;  		 		//Port J pulldowns
	
	PERS = PERS_Init;				//Port S pulldowns
	WOMS = WOMS_Init;				//Port S bit 3 (TXD1) Wired-OR
	PERT = PERT_Init;
}

void InitInterrupts ( void )
{	
	CRGINT = CRGINT_Init;	 		//enable RTI
	RTICTL = RTICTL_Init;
    
    PPSP = PPSP_Init;		  		//rising edge
    PIEP = PIEP_Init;		  		//enable KW interrupts 
    
	TSCR1 = TSCR1_Init;				//enable input capture
    TIOS = TIOS_Init;				//enable output compares
	TIE = TIE_Init;
	TSCR2 = TSCR2_Init;
	TCTL3 = TCTL3_Init;
	TCTL4 = TCTL4_Init;
	
}

void InitPLL ( void )
{	
	REFDV = REFDV_Init;
	SYNR = SYNR_Init;
	while ( !(CRGFLG & 0x08) );
	CLKSEL |= 0x80;
}



void InitSCI ( void )
{
	SCI0BD = (unsigned int)(BusClk / 16 / .0012);
			   
	SCI0CR2 = SCI0CR2_TE | SCI0CR2_RE;
	
	SIN0Bufptr = 0;
	
	SCI0CR2 |=  SCI0CR2_RIE;
	
	SOUT0Bufptr = 0;
	SOUT0Buf[0] = '\r';

}

void PWMInit ( void )
{
	PWMPOL = PWMPOL_Init;
    PWMCLK = PWMCLK_Init;
    PWMPRCLK = PWMPRCLK_Init;
    
    PWMPER0 = PWMPER0_Init;
    PWMPER1 = PWMPER1_Init;
    PWMPER2 = PWMPER2_Init;
    PWMPER3 = PWMPER3_Init;
    PWMPER4 = PWMPER4_Init;
    PWMPER5 = PWMPER5_Init;
    PWMPER6 = PWMPER6_Init;
    PWMPER7 = PWMPER7_Init;
    
    PWMDTY0 = PWMDTY0_Init;
    PWMDTY1 = PWMDTY1_Init;
    PWMDTY2 = PWMDTY2_Init;
    PWMDTY3 = PWMDTY3_Init;
    PWMDTY4 = PWMDTY4_Init;
    PWMDTY5 = PWMDTY5_Init;
    PWMDTY6 = PWMDTY6_Init;
    PWMDTY7 = PWMDTY7_Init;

    
    PWMSCLA = PWMSCLA_Init;
    PWMSCLB = PWMSCLB_Init;
    PWME = PWME_Init;
    
}

void AtoDInit ( void )
{
    ATD0DIEN = ATD0DIEN_Init;	  	 //Analog to Digital Registers
    ATD0CTL2 = ATD0CTL2_Init;
    ATD0CTL3 = ATD0CTL3_Init;
    ATD0CTL4 = ATD0CTL4_Init;
    ATD0CTL5 = ATD0CTL5_Init;
}    

int getchar(void)
	{
	while ((SCI0SR1 & SCI0SR1_RDRF) == 0)
		;
	return SCI0DRL;
	}

#ifdef PC_SIDE
int putchar(int c)
	{
	return fputc(c, stdout);
	}
#else
extern int _textmode;
int putchar(char c)
	{
	if (_textmode && c == '\n')
		putchar('\r');
	while ((SCI0SR1 & SCI0SR1_TDRE) == 0)
		;
	SCI0DRL = c;
	return c;
	}
#endif

void InitCANopen ( void )
{

  	Reset_Max33011();
	// Reset/Initialize CANopen communication
  	MCOUSER_ResetCommunication();
}

int RetractLA ( void )
{
    Move_Position = 0;
	Move_Speed = LASpeed.value;
	return 0;
}

int CenterLA ( void )
{
    Move_Position = LACntr.value * 10;
	Move_Speed = LASpeed.value;
	return 0;
}

int ExtendLA ( void )
{
    Move_Position = FullDist.value * 10;
	Move_Speed = LASpeed.value;
    return 0;
}

int Advance(void)       //function to advance camera film
{   //advance timer is set 1 - 5 * 0.5 seconds (0.5 to 2.5 seconds)
    AdvanceTimer = AdvanceTime.value * RTI_One_Sec;
    PORTA |= 0x80;
    return 0;
}

int ZoomInFunct ( void )
{
    PWMDTY5 = ZoomSpeed.value;
    PORTA &= ~0x40;
    FocusZoomTimer = FocusZoomTime;
    return 0;
}

int ZoomOutFunct ( void )
{
    PWMDTY5 = 100 - ZoomSpeed.value;
    PORTA |= 0x40;
    FocusZoomTimer = FocusZoomTime;
    return 0;
}

int FocusFarFunct ( void )
{
    PWMDTY4 = ZoomSpeed.value;
    PORTA &= ~0x20;
    FocusZoomTimer = FocusZoomTime;
    return 0;
}

int FocusNearFunct ( void )
{
    PWMDTY4 = 100 - ZoomSpeed.value;
    PORTA |= 0x20;
    FocusZoomTimer = FocusZoomTime;
    return 0;
}

void Load_Variables ( void )
{
 	int EE_offset=0;
	char tempstr[130];
    char *cptr,*token;
	struct menu_var *var;

	if ( *(char *)EE_begin == 0xff )
	{
	    Save_Variables();
		return;
	}
		
    if (strlen((char *)EE_begin)>128)
	{
	    tempstr[0] = 0xff;
		EEWrite ( 1, tempstr,(int *)(EE_begin));//Put a 0xff in the beginning of EEPROM to force defaults
		ResetProc ();
		return;
	}
	
	strncpy(tempstr,(char *)EE_begin,sizeof(tempstr));
    token = strtok(tempstr, ",");

	for(cptr=(char *)&CompressorOnOff.str_value;  cptr<=(char *)&CamTag.str_value;  cptr=cptr+((char *)&CntrStrokes.str_value - (char *)&CompressorOnOff.str_value))
	{
		if (strlen(token)>STR_VALUE_LEN)
    	{
	        tempstr[0] = 0xff;
			EEWrite ( 1, tempstr,(int *)(EE_begin));//Put a 0xff in the beginning of EEPROM to force defaults
    		ResetProc ();
			return;
    	}
		
		strncpy(cptr,token,STR_VALUE_LEN);
		token = strtok(NULL, ",");
		if ( token == NULL )
		{
		    EE_offset = EE_offset + 128;
			if (!*(char *)(EE_begin + EE_offset))
			    break; //Last variable loaded
            if (strlen((char *)(EE_begin + EE_offset))>128)
        	{
        	    tempstr[0] = 0xff;
        		EEWrite ( 1, tempstr,(int *)(EE_begin));//Put a 0xff in the beginning of EEPROM to force defaults
        		ResetProc ();
				return;
        	}
			strncpy(tempstr,(char *)(EE_begin + EE_offset),sizeof(tempstr));
			token = strtok(tempstr, ",");
		}
	}
		
	//&CamTag
	for(var=&CompressorOnOff; var<=&CamTag; var=var+1)	
	//for(var=&CompressorOnOff; var<=&CntrStrokes; var=var+1)
	{
	    getvalue(var,0);
	}

}

void Save_Variables ( void )
{
 	int offset=0,EE_offset=0;
	char *cptr;
    char tempstr[130];
	char Null_Char = NULL;
	char *Null_Ptr = &Null_Char;

	for(cptr=(char *)&CompressorOnOff.str_value;  cptr<=(char *)&CamTag.str_value;  cptr=cptr+((char *)&CntrStrokes.str_value - (char *)&CompressorOnOff.str_value))
	{
	    if ( (offset + strlen(cptr) + 1) < 128 )
		    sprintf(tempstr+offset,"%s,",cptr); //puts a comma
		else
		    *(tempstr+offset-1)=NULL; //puts a null in place of the last comma
		offset = offset + strlen(cptr) + 1;
		
		if (offset>127) //current variable will go over the buffer limit
		{
			EEWrite ( 128, tempstr, (int *)(EE_begin + EE_offset));
			EE_offset = EE_offset + 128;
			sprintf(tempstr,"%s,",cptr); //starts back over by putting the current variable at beginning of tempstr
			offset = strlen(cptr) + 1;
		}
		
	}
	*(tempstr+offset-1)=NULL; //end the last string with a null
	EEWrite ( 128, tempstr, (int *)(EE_begin + EE_offset));
	EEWrite ( 1,Null_Ptr,(int *)(EE_begin + EE_offset + 128));//Put a Null in the first location of the next 128 byte block 

	if(save_serial_flag==1){
		 
		Save_Serial_Num();
		save_serial_flag=0; 
	}
	
}                                                                                        


int RestoreDefaults ( void )
{
    Send_Menu_Status (0x00);
	CompressorOnOff.str_value[0] = 0xFF;    
	Save_Variables();
    ResetProc ();
	return 0;
}

int GetTrigCam (void)
{
	TrigCam4 = ActCam4;
	TrigCam5 = ActCam5;
	Display("Proc:Camera Selected");
	Save_TrigCamera_Add();
	return 0;
}


//retreive camera address from EEProm
void Load_Camera_Add ( void )
{
    char *VarEEPROMPntr2;
    VarEEPROMPntr2 = (char *)0x0a00;
    
    cam_addx[0] = *VarEEPROMPntr2;
    cam_addx[1] = *(VarEEPROMPntr2 + 1);   
    cam_add = cam_addx[0] + (cam_addx[1]<<8); 
	
	sprintf(disp_add.str_value,"04X",cam_add);
	//disp_add.value              
}

void Save_Camera_Add ( void )
{
    char *EEpromPtr;
    
    sprintf(disp_add.str_value,"04X",cam_add);
	
	EEpromPtr = &cam_addx[0];

 	EEWrite ( 2, EEpromPtr, (int *)0x0a00 );
}


//retreive selected camera address from EEProm
void Load_TrigCamera_Add ( void )
{
    char *VarEEPROMPntr2;
    VarEEPROMPntr2 = (char *)0x0c50;
    
    TrigCam4 = *VarEEPROMPntr2;
    TrigCam5 = *(VarEEPROMPntr2 + 1);   
    //cam_add = cam_addx[0] + (cam_addx[1]<<8); 
	
	//sprintf(disp_add.str_value,"04X",cam_add);
	//disp_add.value              
}

void Save_TrigCamera_Add ( void )
{
    char *EEpromPtr;
    
    //sprintf(disp_add.str_value,"04X",cam_add);
	
	EEpromPtr = &TrigCam4;

 	EEWrite ( 2, EEpromPtr, (int *)0x0c50 );
}




//retreive Serial Number from EEProm
void Load_Serial_Num ( void )
{
    char tempstr[130];
    char *VarEEPROMPntr2;
	
    VarEEPROMPntr2 = (char *)0x0b10;
    
    if ( *VarEEPROMPntr2 >= '0' && *VarEEPROMPntr2 <= '9')
	{
    	SerialNum.str_value[0] = *VarEEPROMPntr2;
        SerialNum.str_value[1] = *(VarEEPROMPntr2 + 1);   
        SerialNum.str_value[2] = *(VarEEPROMPntr2 + 2);   
        SerialNum.str_value[3] = *(VarEEPROMPntr2 + 3);   
        SerialNum.str_value[4] = *(VarEEPROMPntr2 + 4);   
        SerialNum.str_value[5] = *(VarEEPROMPntr2 + 5); 
		SerialNum.str_value[6] = 0;
	}
	else{		   
		
		save_serial_flag=1;   
	}  
}

void Save_Serial_Num ( void )
{
    char *EEpromPtr;
    
    EEpromPtr = &SerialNum.str_value[0];

 	EEWrite ( 7, EEpromPtr, (int *)0x0b10 );
}

int ResetProc ( void )
{
    COPCTL = 0x01;				//enable COP for shortest period 
    while (1);					//wait for reset
    return 0;
}
                   
void InitXmit ( void )
{
    char cksum;
    printf ( "\r\nCRTS, Inc.\r\nCleaner Interface Controller\r\nRevision %s\r\n>", Revision );		
//    ClearTitler ();
}
	 
int ATDGetLevel ( char ATD_Num )
{
	ATD0CTL5=ATD0CTL5_Init | ATD_Num;
#ifndef PC_SIDE
	while ( !(ATD0STAT0 & 0x80) );
#endif
	
	return (ATD0DR0+ATD0DR1+ATD0DR2+ATD0DR3)/4; 				
}

/*
extern unsigned int LA_speed_timer;
char ext_test = 0;
char ret_test = 0;
float interval_test = 0.1;
char desired_speed_test = 95;
int ext_pos_test = 100;
int ret_pos_test = 10;


void test (void)
{
 	static char test_once = 0, startup_test = 0;
	
	start_sequence = -1;
	
	if (!startup_test)
	{
        // runs once after reset
		startup_test = 1;
		stop_LA();
        desired_speed=0;
        LA_position=0;
        start_sequence=-1;
        done=5;
	}		
	
	if (ext_test)
	{
		if (!test_once)
		{
		    test_once = 1;
			Timer2 = RTI_One_Sec * interval_test;
			
			// put code here that needs to run once
			ExtendLA();
			desired_position = ext_pos_test;
			desired_speed = desired_speed_test;
			direction = 1;
			LA_speed = 0;
		}
	    if (!Timer2)
	    {
	        Timer2 = RTI_One_Sec * interval_test;
			// put code here that needs to run at a constant rate
			
			if ( PB3_PWM > 30 )
			{
			    LA_speed = LA_speed + (((float)PB3_PWM-60)) ;
			}
            if (LA_speed > 0) 
                LA_position = LA_position + LA_speed/50;
            else
                LA_speed = 0;
				
		}
		
	    LA_speed_timer = 100;
		
        if (!LA_Moving) 
        {
            ext_test = 0; 
            ret_test = 1;
			test_once = 0;
			LA_Moving = 1;
        }
		
	}
	else if (ret_test)
	{
		if (!test_once)
		{
		    test_once = 1;
			Timer2 = RTI_One_Sec * interval_test;
			
			// put code here that needs to run once
			RetractLA();
			desired_position = ret_pos_test;
			desired_speed = desired_speed_test;
			direction = -1;
			LA_speed = 0;
		}
	    if (!Timer2)
	    {
	        Timer2 = RTI_One_Sec * interval_test;
			// put code here that needs to run at a constant rate
			if ( PB1_PWM > 30 )
			{
			    LA_speed = LA_speed + (((float)PB1_PWM-60)) ;
			}
            if (LA_speed > 0) 
                LA_position = LA_position - LA_speed/50;
            else
                LA_speed = 0;
				
    	}	
		
	    LA_speed_timer = 100; 
		
        if (!LA_Moving) 
        {
            ext_test = 1; 
            ret_test = 0;
			test_once = 0;
			LA_Moving = 1;
        }
		
	}
	else
	{
	    test_once = 0;
	}
}
*/
void doevents ( void )
{
    int i,j;
	
	
	
	spdPID = &speedPID;
	
	if(initPID){		
		
		spdPID->pGain=0.5;
		spdPID->iGain=0.2;
		spdPID->dGain=0.0;
		spdPID->iMax=500;
		spdPID->iMin=0;
		
		initPID=0;		  
	}

	//Check FullDist to make sure it is no bigger than LA-Center times 2
	if (FullDist.value > LACntr.value * 2)
	{
	    struct menu_var* var = &FullDist;
		var->value = LACntr.value * 2;
		getstrval (var);
		UpdateMenu = 1;
	}
	//Check CntrDist to make sure it is no bigger than LA-Center times 2
	if (CntrDist.value > LACntr.value * 2)
	{
	    struct menu_var* var = &CntrDist;
		var->value = LACntr.value * 2;
		getstrval (var);
		UpdateMenu = 1;
	}
	
    if ( Gen_Flags & Gen_Flags_SIN0Rcvd )
    {
        //Display ( SIN0Buf );
        //command ( SIN0Buf );
        SIN0Bufptr = 0;
        Gen_Flags &= ~Gen_Flags_SIN0Rcvd;
        //printf ( "\r>" );
    }
    
    //if the 2-Wire system is working, start updating the 2-Wire Stack
//    if ( !(Gen_Flags & Gen_Flags_No2Wire) )
    {
        menu_function();          
    
		//Internal H-Bridge & External Contactors
		if ( HeadSpeed >= 10 )
		{

		    //PORTB &= ~0x04;	  		   //PB2 / High Left off
			//PWMDTY3 = 100;   	   	   //Lower Left On
			PTP |= 0x08;			   //PP3 on

		    //PORTB |= 0x01;			   //PB0 / High Right on
			//PWMDTY1 = HeadSpeed;     //Upper Right PWM
			PTP |= 0x02;			   //PP1 on

			PORTA |= 0x04;		   	   //External FET driver
		}

		if ( HeadSpeed <= -10 )
		{
		    //PORTB &= ~0x01;
			//PWMDTY1 = 100;  		   //Lower Right On
			PTP |= 0x08;			   //PP3 on

		    //PORTB |= 0x04;
			//PWMDTY3 = abs(HeadSpeed);  //Upper Left On
			PTP |= 0x02;			   //PP1 on

			PORTA |= 0x08;		   	   //External FET driver
		}
		if ( HeadSpeed == 0 )
		{
			//PWMDTY3 = PWMDTY1 = 0;	   //Shutdown both
			//while ( PTIP & 0x02 || PTIP & 0x08 );  //wait till PWM is off
		    //PORTB &= ~0x05;
			
			PORTA &= ~0x0C;		   	   //External FET driver
		}
		
        // Head On/Off for both internal H-Bridge and external Head Ramp
		if (HeadCWOnOff.value==2 && HeadRampCCW==1 )
		{ //CW on and CWW was on
			    HeadCWOnOff.value=1;
				getstrval( &HeadCWOnOff );
				UpdateMenu = 1;
		}
		else if (HeadCWOnOff.value==2 && HeadCCWOnOff.value==1 )
		{ //CW on and CCW off
	        if (HdOffTimer)
			{
			    HeadCWOnOff.value=1;
				getstrval( &HeadCWOnOff );
				UpdateMenu = 1;
			}
			else
			{
			    HeadRampCW = 1;
	        	HeadRampCCW = 0;
			}
			
		}
		else if (HeadCCWOnOff.value==2 && HeadRampCW==1 )
		{ //CCW On and CW was on
			    HeadCCWOnOff.value=1;
				getstrval( &HeadCCWOnOff );
				UpdateMenu = 1;
		}
		else if ( HeadCCWOnOff.value==2 && HeadCWOnOff.value==1 )
		{ //CCW on and CW off
	        if (HdOffTimer)
			{
			    HeadCCWOnOff.value=1;
				getstrval( &HeadCCWOnOff );
				UpdateMenu = 1;
			}
			else
			{
			    HeadRampCCW = 1;
	        	HeadRampCW = 0;
			}
		}
		else if ( HeadRampCW == 1 )
		{
		    HdOffTimer = RTI_One_Sec * 7;
			HeadRampCW = -1;
			HeadRampCCW = 0;
		}
		else if ( HeadRampCCW == 1 )
		{
		    HdOffTimer = RTI_One_Sec * 7;
			HeadRampCCW = -1;
	        HeadRampCW = 0;
		}
		else if ( HeadRampCW != 1 && HeadRampCCW != 1 && !HdOffTimer )
		{ //Both off and Timer expired
		    PTP = PTP & ~0x0a;  // disable both drivers after timer expires
		}
		
		if ( BlowersOnOff.value==2 )
		    PORTB |= 0x10;
		else
		    PORTB &= ~0x10;

		if (VacuumOnOff.value==2 || ((TC0_RCVD_Data & TeleData_Cam1) && (TC0_RCVD_Data & TeleData_Cam2) && (TC0_RCVD_Data & TeleData_Cam3)))
		    PORTB |= 0x40;
		else
		    PORTB &= ~0x40;

		if ( SealsOnOff.value==2 )
		{
            if ( !(PORTB & 0x20) )
			{ 
            	//machine size enables/disables outboard seal controlled by compressor pack
                if ( MachineSize.value==1 || MachineSize.value==2 )
                {
                    gTxMsg.ID = 0x438;
                    gTxMsg.LEN = 1; 
                    gTxMsg.BUF[0] = 1;
                    if (!MCOHW_PushMessage(&gTxMsg))
                    {
                        // failed to transmit
                        MCOUSER_FatalError(0x8801);
                    }
                    //! Transmit this without using the TPDO
    		    }
    			PORTB |= 0x20;
			}
		}
		else
		{
            if ( PORTB & 0x20 )
			{ 
            	//machine size enables/disables outboard seal controlled by compressor pack
                if ( MachineSize.value==1 || MachineSize.value==2 )
                {
    			    gTxMsg.ID = 0x438;
                    gTxMsg.LEN = 1; 
                    gTxMsg.BUF[0] = 0;
                    if (!MCOHW_PushMessage(&gTxMsg))
                    {
                        // failed to transmit
                        MCOUSER_FatalError(0x8801);
                    }
                    //! Transmit this without using the TPDO
    		    }
    			PORTB &= ~0x20;
			}
		}
        
        if ( StoreFlag && State == FinishState)
        {
            StoreFlag = 0;
            Save_Variables();
        }
  
        if ( MenuStackc[StackPointer].Index[0] == 0 &&
             MenuStackc[StackPointer].Index[1] == 0 &&
             MenuStackc[StackPointer].Index[2] == 0 &&
             MenuStackc[StackPointer].Index[3] == 4 &&
             ( gProcImg[OUT_digi_4] != ( cam_add & 0x00FF ) ||
             gProcImg[OUT_digi_5] != cam_add>>8 ) ) 
			 
        {
            if ( !CamAddressXmitd )
			{
    			gProcImg[OUT_digi_4] = cam_add & 0x00FF;
                gProcImg[OUT_digi_5] = cam_add>>8;			
                
                gTxMsg.ID = 0x421;
                gTxMsg.LEN = 2; 
                gTxMsg.BUF[0] = cam_add;
                gTxMsg.BUF[1] = cam_add >> 8;      
                if (!MCOHW_PushMessage(&gTxMsg))
                {
                // failed to transmit
                MCOUSER_FatalError(0x8801);
                }
                //! Transmit this without using the TPDO
			}
		    CamAddressXmitd = 1;
            
        }
		else
		{
		    CamAddressXmitd = 0;
		}
	 	
		if (State == FinishState)
		    InProcess = 0;
		else
		    InProcess = 1;
			
		CompressorMain ();
     	CameraMain ();
		
	     
        if ( gProcImg[OUT_digi_14] )//&& !strcmp(MachineSize," 8-10") )
        {
			Move_Position = gProcImg[OUT_digi_13];  
            Move_Speed = gProcImg[OUT_digi_13+1];
            gProcImg[OUT_digi_13] = 0;
            gProcImg[OUT_digi_13+1] = 0;
        }             

		LAMain ( Move_Position, Move_Speed);
//	test ();

            if ( gProcImg[OUT_digi_0] & 0x02 )
            {
			    //if ( State == FinishState && ( VSEL_PORT & CAM_ON ) )
				if (State == FinishState && (ActCam4 == TrigCam4 && ActCam5 == TrigCam5))				   //Trigger on Vacuum Camera
				{				
				    State = TrigState;
					PressureMsgSent = 0;
					Use_IN_digi_15|=(1<<0);
					gProcImg[IN_digi_15] = Use_IN_digi_15;
				}
				StateTime = 0;
                gProcImg[OUT_digi_0] &=  ~0x02;				
            }			
		

			//Cleaning routine, See State definitions for exact sequence!!!!!!
			switch (State)
            {
				case TrigState:
					if ( StateTime >= RTI_One_Sec * 0.5 ){
						if ( Pressure.value <= (LowSetPoint.value - 9)  && 
							 MachineSize.value==3 || MachineSize.value==4   &&
							!PressureMsgSent)
						{
							Display ( "Warn:AIR PRESSURE LOW" );
							PressureMsgSent = 1;
						}
						if ( PressureMsgSent )
						{
							if ( StateTime >= RTI_One_Sec * 3 )
							{
							    //MCO_InitTPDO(4,0x318,100,100,5,IN_digi_3); 
								Move_Speed = LASpeed.value;
								Move_Position = 0; 
								LA_Moving = LA_Moved = 0;
								State++;
							}
						}
						else
						{
							//MCO_InitTPDO(4,0x318,100,100,5,IN_digi_3); 
							Move_Speed = LASpeed.value;
							Move_Position = 0; 
							LA_Moving = LA_Moved = 0;
							State++;
						}
					}
				break;
				
				case TrigRetractLA:

					if(start_sequence==-1)//wait until home found
					{
    					if ( (LA_Moving && LA_Moved) || StateTime > RTI_One_Sec) //Wait until moving, or if already home, wait 1 second
    					{
    					    if (!LA_Moving) //Wait till not moving before continuing
    						{
    						    StateTime = 0;
								LineupTimer = 0;
    				       		Display ( "Proc:Line Up" ); //do not call this function repeatedly or CAN will slow down (here and elsewhere)
    						    State++;  
    						}
    					}
					}				
				break;

				case TrigState2: 

					if(StateTime < RTI_One_Sec){
						break;
					}

					// If no movement is required, skip to the end state for this sequence.
					if ( !LineUpDist.value ) {    
                        State = StartSealState; 
						break;
                    }
                    
					// --- Configure Movement Parameters ---
				    if ( LineUpClnVac.value==1 ) { // Negative Direction
						int travel_dist = (int)((LineUpDist.value + 0.001) * -10);
						int lineup_speed = (int)(LineupSpeed.value * 120);

						gProcImg[IN_digi_3] = travel_dist;
						gProcImg[IN_digi_4] = travel_dist >> 8;
						
    					gProcImg[IN_digi_6] = ~lineup_speed;
    					gProcImg[IN_digi_7] = ~lineup_speed >> 8;
					} else { // Positive Direction
						int travel_dist = (int)((LineUpDist.value + 0.001) * 10);
						int lineup_speed = (int)(LineupSpeed.value * 120);

						gProcImg[IN_digi_3] = travel_dist;
	    				gProcImg[IN_digi_4] = travel_dist >> 8;
						
	    				gProcImg[IN_digi_6] = lineup_speed;
	    				gProcImg[IN_digi_7] = lineup_speed >> 8;
					}
					gProcImg[IN_digi_5] = 0x01; // Send Start Command

                    // --- Start Master Watchdog Timer ---
					// CRITICAL SAFETY CHECK: Prevent division by zero.
					if (LineupSpeed.value > 0) {
						SequenceTimer = (LineUpDist.value / (6 * LineupSpeed.value)) * 1.4 + 5;
					} else {
						// If speed is zero, use a default, safe timeout.
						SequenceTimer = 5 * RTI_One_Sec; // Example: 5 seconds
					}

					// Failsafe: Ensure the timer always has a positive value.
					if ( SequenceTimer <= 0 ) {
						SequenceTimer = 1;
					}

					// Immediately advance to the state that waits for start confirmation.
					State++; // Advance to WaitingForLineUpConfirmation
				break;
				
				case WaitingForMoving:
				    // STATE GOAL: Wait for CAN bus confirmation that movement has begun.
					if ( gProcImg[OUT_digi_12] ) {
					    State++; // Success: Move to LineUpTravelInProgress
						StateTime = 0;
					}
					// If confirmation never arrives, master SequenceTimer will trigger ErrorState.
				break;
				
				case LineUpInProgress:
				    // STATE GOAL: Monitor for the completion of the movement.
					if ( !gProcImg[OUT_digi_12] ) {
					    // Success: movement completed. Advance to the cleanup state.
					    State++; // Advance to LineUpTravelComplete
						StateTime = 0; // Reset timer for the next state's logic
					}
					// If movement stalls, master SequenceTimer will trigger ErrorState.
				break;
				
				case LineUpComplete:
				    // STATE GOAL: Display message, perform timed cleanup, and transition.
					
					// This block runs only ONCE upon entering this state.
					if (StateTime < RTI_One_Sec) {
						SequenceTimer = 0; // Disable the master watchdog timer.
						
						LineupTimeCapture = LineupTimer; // Capture the final time.
						
						// Display message if enabled
						if (LineupTimeOnOff.value == 2) {
        				    char LineupTimeMsg[] = "Proc:Lineup Time 000.0 "; // Use a different buffer name
        					sprintf(LineupTimeMsg, "Proc:Lineup Time %3.1f", (float)LineupTimeCapture / RTI_One_Sec);
        					Display(LineupTimeMsg);
        				}
					
						gProcImg[IN_digi_3] = 0;
        				gProcImg[IN_digi_4] = 0;
        				gProcImg[IN_digi_5] = 0;
        				gProcImg[IN_digi_6] = 0;
        				gProcImg[IN_digi_7] = 0;

						StateTime = RTI_One_Sec; // Advance StateTime to 1 second, so this executes only once.
					}
					
					if ( StateTime > 2 * RTI_One_Sec ) {
						// After 1 second (Statetime was initially advanced to 1 second above), transition to the next state in the machine.
						State++;
					}
				break;

				
			    case StartSealState:
				    //MCO_InitTPDO(4,0x318,0,100,5,IN_digi_3);
           		    CStrks = CntrStrokes.value;
           			FStrks = FullStrokes.value;
           			CDist = CntrDist.value*10;
           			FDist = FullDist.value*10;
           			Cntr = LACntr.value*10;
					HdDirection = HdForward;
					
           			Display ( "Proc:Inflating Seals" );
										
					SealsOnOff.value = 2; 
					getstrval( &SealsOnOff );
					strncpy(SealsOnOff.str_value," ON",SealsOnOff.len_str);
					getvalue(&SealsOnOff,0);
					
					StateTime = 0;
					State++;
				break;

			    case SealWaitState:
					LA_Moved = 0;
					if ( StateTime >= RTI_One_Sec * SealTime.value )
					{
				        StateTime = 0;
						State++;
						
					}
			    break;
				
				
				case StartExtendState:
				
        			Move_Speed = LASpeed.value;
					Move_Position = Cntr; //Move away from home
					if ( (LA_Moving && LA_Moved) || StateTime > RTI_One_Sec)
					    State++;  //Wait till moving
				break;
				
			
				case StartCleanState:
				    if (!LA_Moving && LA_Moved)
					{
                        
						
						if ( TestModeOnOff.value==1 )
						{ 
    						if ( HdDirection == HdForward )
    						{
							    Display ( "Proc:Cleaning" );        						
    							HeadCWOnOff.value = 2; 
								getstrval( &HeadCWOnOff );
								strncpy(HeadCWOnOff.str_value," ON",HeadCWOnOff.len_str);
								getvalue(&HeadCWOnOff,0);
							}
    						else
    						{        						
    							HeadCCWOnOff.value = 2; 
								getstrval( &HeadCCWOnOff );
								strncpy(HeadCCWOnOff.str_value," ON",HeadCCWOnOff.len_str);
								getvalue(&HeadCCWOnOff,0);
							}
						}
    			    	else if ( HdDirection == HdForward )
                            Display ( "Warn:TEST MODE" );
                        StateTime = 0;
    			    	State++;
					}
				break;

				case RampUpState:
				    if ( StateTime >= RTI_One_Sec * 3 )
					{
						if ( TestModeOnOff.value==1 )
						{                				
							BlowersOnOff.value = 2; 
							getstrval( &BlowersOnOff );
							strncpy(BlowersOnOff.str_value," ON",BlowersOnOff.len_str);
							getvalue(&BlowersOnOff,0);
						}
					    State++;
					}
				break;

				case StartCenterCleanState:
        		    if ( CStrks )
        			{
					    State++;
        			}
        			else
        			{
        		    	StateTime = 0;
        		    	State = StartFullCleanState;
        			}
				break;
				
				case CenterCleanState:
				    if (!LA_Moving && LA_Moved)
					{
					    if ( CStrks )
        			    {
						    char tempstr[25];
							sprintf (tempstr,"Proc:Clean Center %d",(int)CntrStrokes.value - CStrks + 1);
							Display ( tempstr );
							if (CStrks & 1 ) Move_Position = Cntr + CDist/2;
        				    else  Move_Position = Cntr - CDist/2 ;
        		            CStrks--;
							LA_Moved=0;
						}
						else
						{
						    StateTime = 0;
							State++;
						}
					}
				break;
				
				case StartFullCleanState:
        		    if ( FStrks )
        			{
					    State++;
        			}
        			else
        			{
        		    	StateTime = 0;
        		    	State = StopState;
        			}
				break;

				case FullCleanState:
				    if (!LA_Moving && LA_Moved)
					{
					    if ( FStrks )
        			    {
						    char tempstr[25];
							sprintf (tempstr,"Proc:Clean Full %d",(int)FullStrokes.value - FStrks + 1);
							Display ( tempstr );
						    if (FStrks & 1 ) Move_Position = Cntr + FDist/2;
        				    else  Move_Position = Cntr - FDist/2 ;
        		            FStrks--;
							LA_Moved=0;
						}
						else
						{
						    if (HdDirection == HdForward)
							{
							    char tempstr[25];
								sprintf (tempstr,"Proc:Reversing Head");
								Display ( tempstr );
                		    }
						    StateTime = 0;
							State++;
						}
					}
				break;
				
				case ReverseHdState:
				    if ( HdDirection == HdForward )
					{
                        Move_Position = Cntr;
						           				
						BlowersOnOff.value = 1; 
						getstrval( &BlowersOnOff );
						strncpy(BlowersOnOff.str_value,"OFF",BlowersOnOff.len_str);
						getvalue(&BlowersOnOff,0);
						
                      	HeadCWOnOff.value = 1; 
						getstrval( &HeadCWOnOff );
						strncpy(HeadCWOnOff.str_value,"OFF",HeadCWOnOff.len_str);
						getvalue(&HeadCWOnOff,0);
					    
						if ( StateTime >= RTI_One_Sec * 14 )
						{
							CStrks = CntrStrokes.value;
                			FStrks = FullStrokes.value;
							HdDirection = HdReverse;
						    State = StartCleanState;
						}
					}
					else
					{
					    StateTime = 0;
						State++;
					}				
				break;

				case StopCleanState:
            		Move_Position = 0;
					
           			
           			SealsOnOff.value = 1; 
					getstrval( &SealsOnOff );
					strncpy(SealsOnOff.str_value,"OFF",SealsOnOff.len_str);
					getvalue(&SealsOnOff,0);
					
					BlowersOnOff.value = 1; 
					getstrval( &BlowersOnOff );
					strncpy(BlowersOnOff.str_value,"OFF",BlowersOnOff.len_str);
					getvalue(&BlowersOnOff,0);
    				
					HeadCWOnOff.value = 1; 
					getstrval( &HeadCWOnOff );
					strncpy(HeadCWOnOff.str_value,"OFF",HeadCWOnOff.len_str);
					getvalue(&HeadCWOnOff,0);	   
					                    
					HeadCCWOnOff.value = 1; 
					getstrval( &HeadCCWOnOff );
					strncpy(HeadCCWOnOff.str_value,"OFF",HeadCCWOnOff.len_str);
					getvalue(&HeadCCWOnOff,0);
				
					if ( !LA_Moving && StateTime >= RTI_One_Sec * 10 )
					{
					    Display ( "Proc:Cleaning Complete" );
					    StateTime = 0;
					    State++;
					}				    
				break;

				case CleanComplete:     //seperate cleaning complete message from starting vacuum motors
					if ( StateTime >= RTI_One_Sec * 1 )
					{
					    StateTime = 0;
					    State++;
					}				    
				break;

				/*******************************************************************************
				*                               FIRST MOVEMENT (- DIR)
				*******************************************************************************/
				case StartFirstVac:
					if ( VacDist1.value == 0 ) {
						State = StopState; // Skip to stop
						break;
					}
					
					VacuumOnOff.value = 2; 
					getstrval( &VacuumOnOff );
					strncpy(VacuumOnOff.str_value," ON",VacuumOnOff.len_str);
					getvalue(&VacuumOnOff,0);

						// Configure movement parameters (Negative Direction)
					{
						int travel_dist = (int)VacDist1.value * -10;
						gProcImg[IN_digi_3] = travel_dist;
						gProcImg[IN_digi_4] = travel_dist >> 8;
					}
					gProcImg[IN_digi_5] = 0x01; // Start command
					{
						int vacspeed;
						if (VacSpeed1.value==3) vacspeed = 120;
						else if (VacSpeed1.value==2) vacspeed = 80;
						else vacspeed = 40;
						gProcImg[IN_digi_6] = ~vacspeed;
						gProcImg[IN_digi_7] = ~vacspeed >> 8;
					}
					
					// Start the master watchdog timer for the entire operation
					SequenceTimer = VacDist1.value / 3 + 10;
					if ( SequenceTimer <= 0 ) { SequenceTimer = 1; } // Failsafe

					State++; // Advance to WaitingForFirstTravelConfirmation
					break;

				case FirstVacMoving:
					// Wait for CAN bus confirmation that movement has begun
					if ( gProcImg[OUT_digi_12] ) {
						State++; // Advance to FirstTravelInProgress
						StateTime = 0;
					}
					// If confirmation never arrives, master SequenceTimer will trigger ErrorState
					break;

				case FirstVacInProgress:
					// Monitor for movement completion
					if ( !gProcImg[OUT_digi_12] ) {
						SequenceTimer = 0; // Disable watchdog on success
						if ( StateTime > RTI_One_Sec ) {
							// Clean up registers
							gProcImg[IN_digi_3] = 0; gProcImg[IN_digi_4] = 0;
							gProcImg[IN_digi_5] = 0; gProcImg[IN_digi_6] = 0;
							gProcImg[IN_digi_7] = 0;
							State++; // Advance to StartSecondVacTravel
						}
					} else {
						StateTime = 0; // Reset settling timer
					}
					// If movement stalls, master SequenceTimer will trigger ErrorState
					break;

				/*******************************************************************************
				*                               SECOND MOVEMENT (+ DIR)
				*******************************************************************************/
				case StartSecondVac:
					if ( VacDist2.value == 0 ) {
						State = StopState; // Skip to stop
						break;
					}

					// Configure movement parameters (Positive Direction)
					{
						int travel_dist = (int)VacDist2.value * 10;
						gProcImg[IN_digi_3] = travel_dist;
						gProcImg[IN_digi_4] = travel_dist >> 8;
					}
					gProcImg[IN_digi_5] = 0x01; // Start command
					{
						int vacspeed;
						if (VacSpeed2.value==3) vacspeed = 120;
						else if (VacSpeed2.value==2) vacspeed = 80;
						else vacspeed = 40;
						gProcImg[IN_digi_6] = vacspeed;
						gProcImg[IN_digi_7] = vacspeed >> 8;
					}

					// Start the master watchdog timer for the entire operation
					SequenceTimer = VacDist2.value / 3 + 10;
					if ( SequenceTimer <= 0 ) { SequenceTimer = 1; } // Failsafe
					
					State++; // Advance to WaitingForSecondTravelConfirmation
					break;

				case SecondVacMoving:
					// Wait for CAN bus confirmation that movement has begun
					if ( gProcImg[OUT_digi_12] ) {
						State++; // Advance to SecondTravelInProgress
						StateTime = 0;
					}
					break;

				case SecondVacInProgress:
					// Monitor for movement completion
					if ( !gProcImg[OUT_digi_12] ) {
						SequenceTimer = 0; // Disable watchdog on success
						if ( StateTime > RTI_One_Sec ) {
							// Clean up registers
							gProcImg[IN_digi_3] = 0; gProcImg[IN_digi_4] = 0;
							gProcImg[IN_digi_5] = 0; gProcImg[IN_digi_6] = 0;
							gProcImg[IN_digi_7] = 0;
							State++; // Advance to StartThirdVacTravel
						}
					} else {
						StateTime = 0; // Reset settling timer
					}
					break;

				/*******************************************************************************
				*                               THIRD MOVEMENT (- DIR)
				*******************************************************************************/
				case StartThirdVac:
					if ( VacDist3.value == 0 ) {
						State = StopState; // Skip to stop
						break;
					}
					
					// Configure movement parameters (Negative Direction)
					{
						int travel_dist = (int)VacDist3.value * -10;
						gProcImg[IN_digi_3] = travel_dist;
						gProcImg[IN_digi_4] = travel_dist >> 8;
					}
					gProcImg[IN_digi_5] = 0x01; // Start command
					{
						int vacspeed;
						if (VacSpeed3.value==3) vacspeed = 120;
						else if (VacSpeed3.value==2) vacspeed = 80;
						else vacspeed = 40;
						gProcImg[IN_digi_6] = ~vacspeed;
						gProcImg[IN_digi_7] = ~vacspeed >> 8;
					}
					
					// Start the master watchdog timer for the entire operation
					SequenceTimer = VacDist3.value / 3 + 10;
					if ( SequenceTimer <= 0 ) { SequenceTimer = 1; } // Failsafe

					State++; // Advance to WaitingForThirdTravelConfirmation
					break;

				case ThirdVacMoving:
					// Wait for CAN bus confirmation that movement has begun
					if ( gProcImg[OUT_digi_12] ) {
						State++; // Advance to ThirdTravelInProgress
						StateTime = 0;
					}
					break;

				case ThirdVacInProgress:
					// Monitor for movement completion
					if ( !gProcImg[OUT_digi_12] ) {
						SequenceTimer = 0; // Disable watchdog on success
						if ( StateTime > RTI_One_Sec ) {
							// Clean up registers
							gProcImg[IN_digi_3] = 0; gProcImg[IN_digi_4] = 0;
							gProcImg[IN_digi_5] = 0; gProcImg[IN_digi_6] = 0;
							gProcImg[IN_digi_7] = 0;
							State++; // Advance to StartFourthVacTravel
						}
					} else {
						StateTime = 0; // Reset settling timer
					}
					break;

				/*******************************************************************************
				*                               FOURTH MOVEMENT (+ DIR)
				*******************************************************************************/
				case StartFourthVac:
					if ( VacDist4.value == 0 ) {
						State = StopState; // Skip to stop
						break;
					}

					// Configure movement parameters (Positive Direction)
					{
						int travel_dist = (int)VacDist4.value * 10;
						gProcImg[IN_digi_3] = travel_dist;
						gProcImg[IN_digi_4] = travel_dist >> 8;
					}
					gProcImg[IN_digi_5] = 0x01; // Start command
					{
						int vacspeed;
						if (VacSpeed4.value==3) vacspeed = 120;
						else if (VacSpeed4.value==2) vacspeed = 80;
						else vacspeed = 40;
						gProcImg[IN_digi_6] = vacspeed;
						gProcImg[IN_digi_7] = vacspeed >> 8;
					}

					// Start the master watchdog timer for the entire operation
					SequenceTimer = VacDist4.value / 3 + 10;
					if ( SequenceTimer <= 0 ) { SequenceTimer = 1; } // Failsafe
					
					State++; // Advance to WaitingForFourthTravelConfirmation
					break;

				case FourthVacMoving:
					// Wait for CAN bus confirmation that movement has begun
					if ( gProcImg[OUT_digi_12] ) {
						State++; // Advance to FourthTravelInProgress
						StateTime = 0;
					}
					break;

				case FourthVacInProgress:
					// Monitor for movement completion
					if ( !gProcImg[OUT_digi_12] ) {
						SequenceTimer = 0; // Disable watchdog on success
						if ( StateTime > RTI_One_Sec ) {
							// Clean up registers
							gProcImg[IN_digi_3] = 0; gProcImg[IN_digi_4] = 0;
							gProcImg[IN_digi_5] = 0; gProcImg[IN_digi_6] = 0;
							gProcImg[IN_digi_7] = 0;
							State++; // Advance to StartFifthVacTravel
						}
					} else {
						StateTime = 0; // Reset settling timer
					}
					break;

				/*******************************************************************************
				*                               FIFTH MOVEMENT (- DIR)
				*******************************************************************************/
				case StartFifthVac:
					if ( VacDist5.value == 0 ) {
						State = StopState; // End of all sequences
						break;
					}
					
					// Configure movement parameters (Negative Direction)
					{
						int travel_dist = (int)VacDist5.value * -10;
						gProcImg[IN_digi_3] = travel_dist;
						gProcImg[IN_digi_4] = travel_dist >> 8;
					}
					gProcImg[IN_digi_5] = 0x01; // Start command
					{
						int vacspeed;
						if (VacSpeed5.value==3) vacspeed = 120;
						else if (VacSpeed5.value==2) vacspeed = 80;
						else vacspeed = 40;
						gProcImg[IN_digi_6] = ~vacspeed;
						gProcImg[IN_digi_7] = ~vacspeed >> 8;
					}
					
					// Start the master watchdog timer for the entire operation
					SequenceTimer = VacDist5.value / 3 + 10;
					if ( SequenceTimer <= 0 ) { SequenceTimer = 1; } // Failsafe

					State++; // Advance to WaitingForFifthTravelConfirmation
					break;

				case FifthVacMoving:
					// Wait for CAN bus confirmation that movement has begun
					if ( gProcImg[OUT_digi_12] ) {
						State++; // Advance to FifthTravelInProgress
						StateTime = 0;
					}
					break;

				case FifthVacInProgress:
					// Monitor for movement completion
					if ( !gProcImg[OUT_digi_12] ) {
						SequenceTimer = 0; // Disable watchdog on success
						if ( StateTime > RTI_One_Sec ) {
							// Clean up registers
							gProcImg[IN_digi_3] = 0; gProcImg[IN_digi_4] = 0;
							gProcImg[IN_digi_5] = 0; gProcImg[IN_digi_6] = 0;
							gProcImg[IN_digi_7] = 0;
							State = StopState; // End of all sequences
						}
					} else {
						StateTime = 0; // Reset settling timer
					}
					break;

			    case StopState:
				    StateTime = 0;
            		Move_Position = 0;
					SequenceTimer = 0;
								
					gProcImg[IN_digi_3] = 0;
					gProcImg[IN_digi_4] = 0;
					gProcImg[IN_digi_5] = 0;
					gProcImg[IN_digi_6] = 0;
					gProcImg[IN_digi_7] = 0;

           			SealsOnOff.value = 1; 
					getstrval( &SealsOnOff );
					strncpy(SealsOnOff.str_value,"OFF",SealsOnOff.len_str);
					getvalue(&SealsOnOff,0);
    				       			
					BlowersOnOff.value = 1; 
					getstrval( &BlowersOnOff );
					strncpy(BlowersOnOff.str_value,"OFF",BlowersOnOff.len_str);
					getvalue(&BlowersOnOff,0);
					
					VacuumOnOff.value = 1; 
					getstrval( &VacuumOnOff );
					strncpy(VacuumOnOff.str_value,"OFF",VacuumOnOff.len_str);
					getvalue(&VacuumOnOff,0);
					    				
					HeadCWOnOff.value = 1; 
					getstrval( &HeadCWOnOff );
					strncpy(HeadCWOnOff.str_value,"OFF",HeadCWOnOff.len_str);
					getvalue(&HeadCWOnOff,0);
					                   
					HeadCCWOnOff.value = 1; 
					getstrval( &HeadCCWOnOff );
					strncpy(HeadCCWOnOff.str_value,"OFF",HeadCCWOnOff.len_str);
					getvalue(&HeadCCWOnOff,0);

				    //MCO_InitTPDO(4,0x318,0,100,5,IN_digi_3); 
					
					if ( !LA_Moving )
					{
					    Display ( "Proc:Vacuuming Complete" );
						Update_Menu_Timer = 5 * RTI_One_Sec;
				    	State++;
					}
				break;
				
			    case FinishState:
				    State = FinishState;
					gProcImg[IN_digi_15]&=~(1<<0);
					
				break;
				
				case ErrorState:
				    StateTime = 0;
				    Display ( "Warn:TIMEOUT ERROR" );
					Update_Menu_Timer = 5 * RTI_One_Sec;
            		Move_Position = 0;
					SequenceTimer = 0;
								
					gProcImg[IN_digi_3] = 0;
					gProcImg[IN_digi_4] = 0;
					gProcImg[IN_digi_5] = 0;
					gProcImg[IN_digi_6] = 0;
					gProcImg[IN_digi_7] = 0;

           			SealsOnOff.value = 1; 
					getstrval( &SealsOnOff );
					strncpy(SealsOnOff.str_value,"OFF",SealsOnOff.len_str);
					getvalue(&SealsOnOff,0);
					           			
					BlowersOnOff.value = 1; 
					getstrval( &BlowersOnOff );
					strncpy(BlowersOnOff.str_value,"OFF",BlowersOnOff.len_str);
					getvalue(&BlowersOnOff,0);
					
					VacuumOnOff.value = 1; 
					getstrval( &VacuumOnOff );
					strncpy(VacuumOnOff.str_value,"OFF",VacuumOnOff.len_str);
					getvalue(&VacuumOnOff,0);
					
    				
					HeadCWOnOff.value = 1; 
					getstrval( &HeadCWOnOff );
					strncpy(HeadCWOnOff.str_value,"OFF",HeadCWOnOff.len_str);
					getvalue(&HeadCWOnOff,0);
					                    
					HeadCCWOnOff.value = 1; 
					getstrval( &HeadCCWOnOff );
					strncpy(HeadCCWOnOff.str_value,"OFF",HeadCCWOnOff.len_str);
					getvalue(&HeadCCWOnOff,0);

				    //MCO_InitTPDO(4,0x318,0,100,5,IN_digi_3); 

					State = FinishState;
				break;
				
				default:
				    State = FinishState;
            	break;
            }       
    }	
	
	 // Operate on CANopen protocol stack
        i = MCO_ProcessStack();
        //End MicroCanOpen Stack
}




void CompressorMain ( void )
{
    {
        char Tempstr[] = "   0";
		int ATDValue;
		static int Prev_LowSetPoint = 0,Prev_HighSetPoint = 0;

		if ( HighSetPoint.value - LowSetPoint.value < 10 )//see if upper and lower setpoints are too close
		{
		   if ( Prev_LowSetPoint != LowSetPoint.value )//see if lower setpoint changed, adjust upper setpoint if it did
		   {
		       HighSetPoint.value = LowSetPoint.value + 10;
			   getstrval (&HighSetPoint);
			   UpdateMenu = 1;
		   }
		   else if ( Prev_HighSetPoint != HighSetPoint.value )//see if upper setpoint changed, adjust lower setpoint if it did
		   {
		       LowSetPoint.value = HighSetPoint.value - 10;
			   getstrval (&LowSetPoint);
			   UpdateMenu = 1;
		   }
		}
		Prev_HighSetPoint = HighSetPoint.value;
		Prev_LowSetPoint = LowSetPoint.value;
		
		ATDValue = ATDGetLevel ( 0 );
		
		if ( ATDValue > pressure_zero )     
		    sprintf (Tempstr, "%3d", (int)((ATDValue - pressure_zero)/pressure_range * 100 ));
		else
		    sprintf (Tempstr, "%3d", 0 );
			
        if ( atoi ( Tempstr ) != Pressure.value )
        {
           
            Pressure.value = atoi(Tempstr); 
			getstrval( &Pressure );
			strncpy(Pressure.str_value,Tempstr,Pressure.len_str);
			getvalue(&Pressure,0);
			
			if ( MenuStackc[StackPointer].Index[0] == 0 && MenuStackc[StackPointer].Index[1] == 0 && 
            MenuStackc[StackPointer].Index[2] == 0 && MenuStackc[StackPointer].Index[3] == 5 
			&& !updatePressureTimer )
        	{
            	UpdateMenu = 1;
				updatePressureTimer = 5;	  //menu is already active so only impacts if menu does not change
            }
            if ( MenuStackc[StackPointer].Index[0] == 0 && MenuStackc[StackPointer].Index[1] == 0 && 
            MenuStackc[StackPointer].Index[2] == 3 && MenuStackc[StackPointer].Index[3] == 1
			&& !updatePressureTimer )
        	{
            	UpdateMenu = 1;
				updatePressureTimer = 5;	  //menu is already active so only impacts if menu does not change
            }
            //gProcImg[IN_digi_1 ] = atoi ( Pressure );
        }
    
	}

        //turn ON: run compressor: if ON in settings, below low limit and not running
		if( Pressure.value <= LowSetPoint.value  && (CompressorOnOff.value==2) 
            && !(PORTB & 0x80) )
  		{
            CompressorTimer = CompressorTime; 				//start timer, limit run-time to 60 seconds
      	    PORTB |= 0x80;                                  //turn compressor on
  		}
		//if it's running, it may need to be turned off
		if( PORTB & 0x80 )
		{
    		//OFF: if above high setpoint and running
            if ( Pressure.value >= HighSetPoint.value )		//pressure switch turns compressor OFF
            {
                PORTB &= ~0x80;
				compTimedOutflag = 0;		  					//do NOT save variable flag
            }
            //OFF when user turns it off
            if ( CompressorOnOff.value==1 )			//user turns compressor OFF
            {
                PORTB &= ~0x80;
            }
    		//OFF: if running more than comressorTime
            if ( !CompressorTimer )					 			//timer turns compressor OFF
            {
                PORTB &= ~0x80;	   				  				//if it ran too long
                CompressorOnOff.value = 1;    
				getstrval( &CompressorOnOff );
				strncpy(CompressorOnOff.str_value,"OFF",CompressorOnOff.len_str);
				getvalue(&CompressorOnOff,0);				//turn OFF in settings
				compTimedOutflag = 1;		  					//do NOT save variable flag
            }
        }

}

void CameraMain ( void )
{
    int i;
	
	//light value is set in settings menu 0 - 100% duty
    PWMDTY7 = LightLevel.value * LightLevel.value;

    ++ran_num;      //random number used for camera address

	    sprintf ( disp_add.str_value, "%04X", cam_add );    //for video diplay of camera address
        
        if ( (gProcImg[OUT_digi_6] & 0x08) &&              //command to activate menu
            (gProcImg[OUT_digi_7] == (cam_add & 0x00FF)) &&         //lsb - old address
                (gProcImg[OUT_digi_8]<< 8 ==  (cam_add & 0xFF00)) &&
                 !(Gen_Flags & GEN_FLAGS_MENU_ACTIVE) )
        {
            gProcImg[OUT_digi_6] = 0x00;
            gProcImg[OUT_digi_7] = 0x00;
            gProcImg[OUT_digi_8] = 0x00;
            gProcImg[OUT_digi_4] = (cam_add & 0x00FF);
	        gProcImg[OUT_digi_5] = (cam_add & 0xFF00)>>8;
            VSEL_PORT |= CAM_ON;       //turn camera on, portA bit 0x10 high
            
            //turn off other cameras
			gTxMsg.ID = 0x421;
            gTxMsg.LEN = 2; 
            gTxMsg.BUF[0] = cam_add;
            gTxMsg.BUF[1] = cam_add >> 8;      
            if (!MCOHW_PushMessage(&gTxMsg))
            {
            // failed to transmit
            MCOUSER_FatalError(0x8801);
            }
            //! Transmit this without using the TPDO
            
/*            Timer1 = RTI_One_Sec * .10;
            while ( Timer1 );
            gProcImg[IN_digi_0] |= 0x01;
            i = MCO_ProcessStack();
            Timer1 = RTI_One_Sec * .10;
            while ( Timer1 );*/
			Send_Menu_Status (0x01);
            
            MenuTimer = MenuTime * 2; //briefly disable up/down after menu is brought up
			CursorDownFlag = 0;
			CursorUpFlag = 0;
			SelectFlag = 0;
            AcceptKeys = 0;
			
            StackPointer = 0;
            MenuStackc[StackPointer].Index[0] = 0;
            MenuStackc[StackPointer].Index[1] = 0;
            MenuStackc[StackPointer].Index[2] = 0;
            MenuStackc[StackPointer].Index[3] = 4;
            MenuStackc[StackPointer].CursorPos = 1;
            MenuStackc[StackPointer].FirstLine = 0;
            Gen_Flags |= GEN_FLAGS_MENU_ACTIVE;
            
			TC0_RCVD_Data &= ~0x07;  //Make sure up/down/select not active
			LoadMenu ( MenuStackc[StackPointer].Index );
            InsertCursor ();
            //DisplayTitler ();
			UpdateMenu = 1;
            
        }

    if ( gProcImg[OUT_digi_4] || gProcImg[OUT_digi_5])
    {
        ActCam4 = gProcImg[OUT_digi_4];
        ActCam5 = gProcImg[OUT_digi_5];
    }
	
    if ( gProcImg[OUT_digi_4] == (cam_add & 0x00FF) &&
        gProcImg[OUT_digi_5]<< 8 == (cam_add & 0xFF00) )    //compare
	{
    	char tempstr[18];
		gProcImg[OUT_digi_4] = gProcImg[OUT_digi_5] = 0;
		VSEL_PORT |= CAM_ON;       //turn camera on
		sprintf (tempstr,"Proc:%s",CamTag.str_value); 
		Display ( tempstr );
	}
	else if ( gProcImg[OUT_digi_4] || gProcImg[OUT_digi_5] )
    {
    	VSEL_PORT &= ~CAM_ON;       //turn camera off, portA bit 0x10 low
    }

    if ( gProcImg[OUT_digi_6] & 0x01 )   //command to generate random address
    {
        srand(ran_num);               //seed the random number      
        cam_add = rand();
        gProcImg[OUT_digi_6] = 0x00;
        cam_addx[1] = cam_add>>8;
        cam_addx[0] = cam_add;     
        Save_Camera_Add();
    }

    //command to transmit address
    if ( gProcImg[OUT_digi_6] & 0x02)   //called by scan_camera in 2-wire
    {
        gProcImg[OUT_digi_6] = 0x00;             
    	//VSEL_PORT &= ~CAM_ON;           //camera off, portA bit 0x10 low

        //make delay proportional to camera address so cameras report in ascending order
		Timer1 = cam_add/100;
		while(Timer1);
        
        gTxMsg.ID = 0x2a1;
        gTxMsg.LEN = 2; 
        gTxMsg.BUF[0] = cam_add;
        gTxMsg.BUF[1] = cam_add >> 8;      
        if (!MCOHW_PushMessage(&gTxMsg))
        {
            // failed to transmit
            MCOUSER_FatalError(0x8801);
        }
         //! Transmit this without using the TPDO
    }

     if ( (gProcImg[OUT_digi_6] & 0x04) &&              //command to store address 
            (gProcImg[OUT_digi_7] == (cam_add & 0x00FF)) &&         //lsb - old address
                ( (gProcImg[OUT_digi_8]<< 8) ==  (cam_add & 0xFF00)) ) //msb - old address
    {   //change to new address
        cam_add = gProcImg[OUT_digi_9] + (gProcImg[OUT_digi_10]<<8);
        gProcImg[OUT_digi_6] = 0x00;             
        //send new address            
        cam_addx[0] = cam_add;     
        cam_addx[1] = cam_add>>8;
        Save_Camera_Add();
   } 
   /*     if ( (gProcImg[OUT_digi_6] & 0x10) &&              //command to return menu string
            (gProcImg[OUT_digi_7] == (cam_add & 0x00FF)) &&         //lsb - old address
                (gProcImg[OUT_digi_8]<< 8 ==  (cam_add & 0xFF00)) ) //&&
                 //!(Gen_Flags & GEN_FLAGS_MENU_ACTIVE) )
        {
            gProcImg[OUT_digi_6] = 0x00;    //reset command
            //format "1i 1234 xx xx xx xx xx " (8 bytes)
            gTxMsg.ID = 0x3a1;
            gTxMsg.LEN = 8; 
            gTxMsg.BUF[0] = 1;

            for(i=0; i<4; i++) 
            {
                gTxMsg.BUF[0] = i+0x10;
                gTxMsg.BUF[2] = cam_add>>8;
                gTxMsg.BUF[1] = cam_add;
                gTxMsg.BUF[3] = cam_menu_entry[0];
                gTxMsg.BUF[4] = cam_menu_entry[1];
                gTxMsg.BUF[5] = cam_menu_entry[2];
                gTxMsg.BUF[6] = cam_menu_entry[3];
                gTxMsg.BUF[7] = cam_menu_entry[4];

               //! Transmit this without using the TPDO
               if (!MCOHW_PushMessage(&gTxMsg))
               {
                   // failed to transmit
                   MCOUSER_FatalError(0x8801);
               }
            	Timer1 = RTI_One_Sec * .05;     //delay
                while(Timer1);
        }
    }
*/

    //send new address 
    //gProcImg[IN_digi_1] = cam_add;     //lsb 
    //gProcImg[IN_digi_2] = cam_add >> 8; //msb

	//Advance film when PLC_Trig and Cam_Tog2 pressed
    if ( !(Gen_Flags & Gen_Flags_Menu_Active) && (TC0_RCVD_Data & TeleData_PLCTrig) && (TC0_RCVD_Data & TeleData_CamTog2) )
    {
      Advance ();
    }	
}

void extend_LA(float desired_speed)
{
    
	if(direction!=-1)
	{
    	direction=1;
		LA_Moving=1;
		
		//Timer1 = RTI_One_Sec *.25;
		//while (Timer1);
        
		if (desired_speed>97)desired_speed=97;
		PB1_PWM = 0;
		PB3_PWM = desired_speed;
		PTP |= 0x05;

        gProcImg[IN_digi_8]=1;
	}
}

void retract_LA(float desired_speed)
{
	if(direction!=1)
	{
     	direction=-1;
    	LA_Moving=1;
		
		//Timer1 = RTI_One_Sec *.25;
		//while (Timer1);

		if (desired_speed>97)desired_speed=97;
		PB3_PWM = 0;
		PB1_PWM = desired_speed;
		PTP |= 0x05;
		
        gProcImg[IN_digi_8]=1;
	}
}

void stop_LA(void)
{
	LA_Moving=0;
	direction=0;

	//PORTB |= (0x02 | 0x08);
	//PWMDTY0 = PWMDTY2 = 100;
    
	//PTP |= 0x05;
	PB1_PWM = PB3_PWM = 0;
	
    gProcImg[IN_digi_8]=0;
	
	Timer1 = RTI_One_Sec *.01; //wait until PWM outputs become inactive
	while (Timer1);

	spdPID->iState=0;
	spdPID->iState_sgn=0;

}

void Startup(int Move_Speed)
{
 	//Note PTT&0x08, PTT&0x02 are active high
    //if(laSwitchPol)	 		  //extend/retract are normally high
    if(laSwitchPol.value==2)	 		  //extend/retract are normally high
    {
        if(start_sequence==0 && (PORTA & 0x02))  //1st sequence: if not extended
        {
            desired_position=2591;	 //255*encoder_resolution=2590.8
    		desired_speed=Move_Speed;
    		start_sequence=1;
        }
        if(start_sequence==2 && (PORTA & 0x01))		 	  //3rd sequence: if not retracted
        {
            desired_position=0;
    		desired_speed=Move_Speed;
    		start_sequence=3;
        }
    	if((start_sequence==1 && direction==0) || !(PORTA & 0x02))	//2nd sequence: if moved forward or fully extended
    	{
    		desired_speed=Move_Speed;
    	    start_sequence=2;
    	}
    	if(start_sequence==3 && !(PORTA & 0x01))			  //done, at home (fully retracted)
        {
    	    stop_LA();
    		desired_speed=0;
        	LA_position=0;
    		start_sequence=-1;
    		done=5;
    	}
    }
    else
    {
        if(start_sequence==0 && !(PORTA & 0x02))  //1st sequence: if not extended
        {
            desired_position=2591;	 //255*encoder_resolution=2590.8
    		desired_speed=Move_Speed;
    		start_sequence=1;
        }
        if(start_sequence==2 && !(PORTA & 0x01))		 	  //3rd sequence: if not retracted
        {
            desired_position=0;
    		desired_speed=Move_Speed;
    		start_sequence=3;
        }
    	if((start_sequence==1 && direction==0) || (PORTA & 0x02))	//2nd sequence: if moved forward or fully extended
    	{
    		desired_speed=Move_Speed;
    	    start_sequence=2;
    	}
    	if(start_sequence==3 && (PORTA & 0x01))			  //done, at home (fully retracted)
        {
    	    stop_LA();
    		desired_speed=0;
        	LA_position=0;
    		start_sequence=-1;
    		done=5;
    	}
    }
}


int myspd = 0;

void LAMain ( int Move_Position, int Move_Speed)
{
        
	prev_desired_position=desired_position;	

	//find home if just powered up, 
    if(start_sequence>=0 && Move_Position>-1)		//if not yet run startup sequence and gets an input
    {
	    done=0;
		Startup(Move_Speed);
    }

    //convert input (in 10ths of inches) to next_desired_position (in encoder steps):
    //the next_desired position and speed always represent what is currently in the process image
    next_desired_position=encoder_resolution*Move_Position;
    next_desired_speed=Move_Speed;
    
    //Do next movement, this will either do the initial movement after finding home, or do
	//  the next movement if a second movement is sent before the current movement is finished
    if(start_sequence==-1 && done && next_desired_position!=desired_position)
    {
        desired_position=next_desired_position;
        //if (desired_speed!=next_desired_speed)
		{
			spdPID->iState = 0;			
		}	
		desired_speed=next_desired_speed;
    }
    
    //done if no other movements were sent 
    if(desired_position!=prev_desired_position) done=0;
    
	//see if we've reached the desire location +/- margin
    if(desired_position<=LA_position+(margin*desired_speed) && desired_position>=LA_position-(margin*desired_speed))	//have reached desired_position
    {
        if(desired_position!=0 && !done)
        {
            stop_LA();
            done=2;
        }
    }
	
    if(!PID_Timer)
    {
		LA_Moved = 1;
		//extend or continue to extend if not at desired position
		if((desired_position>LA_position && !done) || (extend_test && !retract_test))
    	{
			UDSPD = UDPID(spdPID, (desired_speed-(float)(LA_speed)) , LA_speed);
    		if(UDSPD>90)
    			UDSPD=90;
    		if(UDSPD<20)
    		    UDSPD=20;
		    if (!myspd)
			    extend_LA(UDSPD);
			else
				extend_LA(myspd);
			done=0;
    	}
    	//retract or continue to retract if not at desired position
        if((desired_position<LA_position && !done) || (retract_test && !extend_test))
    	{
			UDSPD = UDPID(spdPID, (desired_speed-(float)(LA_speed)) , LA_speed);
    		if(UDSPD>90)
    			UDSPD=90;
    		if(UDSPD<20)
    		    UDSPD=20;
		    if (!myspd)
			    retract_LA(UDSPD);
			else
		        retract_LA(myspd);
			done=0;
    	}  
		PID_Timer = RTI_One_Sec * .05;
	}
    //if(laSwitchPol)		 //extend/retract switches are normally high
    if(laSwitchPol.value==2)	 		  //extend/retract are normally high
    {
    	//see if retracted stop was reached
        if(!(PORTA & 0x01) && PB1_PWM && (!retract_test && !extend_test))		//retracted
        {
            LA_position=0;
            stop_LA();
            if(desired_position==0)
            {
                done=3;
                start_sequence=-1;
            }
        }
    	//see if extended stop was reached
        if(!(PORTA & 0x02) && PB3_PWM && (!retract_test && !extend_test))		//extended
        {
            stop_LA();
            done=4;
        }
    }
    else 	//switches are normally low
    {
    	//see if retracted stop was reached
        if((PORTA & 0x01) && PB1_PWM && (!retract_test && !extend_test))		//retracted
        {
            LA_position=0;
            stop_LA();
            if(desired_position==0)
            {
                done=3;
                start_sequence=-1;
            }
        }
    	//see if extended stop was reached
        if((PORTA & 0x02) && PB3_PWM && (!retract_test && !extend_test))		//extended
        {
            stop_LA();
            done=4;
        }
    }
}
