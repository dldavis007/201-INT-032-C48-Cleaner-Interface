#ifndef Subroutines_H
#define Subroutines_H

#define Revision "3.25"
#define _SCI
#define STR_VALUE_LEN 12


struct menu_var{
float value;            //actual value of the variable, or pointer to enum list if an enum type variable
float inc;              //increment/decrement value, may be int or float, must be 1 for enum type variable
float min;              //minimum value of variable, may be int or float, must point to first enum in list for enum type variable
float max;              //maximum value of variable, may be int or float, must point to last enum in list for enum type variable
char dec_pos;            //decimal position, zero if variable is an int or an enum
signed char len_str;			//length of str_value, pads left with spaces
char str_value[STR_VALUE_LEN];     //string equivalent of value, or current enum pointed to by value
const char *str_enum;         //pointer to comma separated enum list, must be NULL for non-enum variable types
struct menu_var *next_var; //pointer to then next variable if more than one per line
};


#pragma nonpaged_function NullFunction
#pragma nonpaged_function StdVarFunction
#pragma nonpaged_function SerVarFunction
#pragma nonpaged_function ExitMenu
#pragma nonpaged_function RestoreDefaults
#pragma nonpaged_function RetractLA
#pragma nonpaged_function CenterLA
#pragma nonpaged_function ExtendLA
#pragma nonpaged_function Advance
#pragma nonpaged_function ZoomInFunct
#pragma nonpaged_function ZoomOutFunct
#pragma nonpaged_function FocusFarFunct
#pragma nonpaged_function FocusNearFunct
#pragma nonpaged_function GetTrigCam


//Subroutines.c
void InitPorts ( void );
void InitInterrupts ( void );
void InitPLL ( void );
void InitSCI ( void );
void PWMInit ( void );
void AtoDInit ( void );
int getchar(void);
int putchar(char c);
void InitCANopen ( void );
int RetractLA ( void );
int CenterLA ( void );
int ExtendLA ( void );
int Advance(void);
int ZoomInFunct ( void );
int ZoomOutFunct ( void );
int FocusNearFunct ( void );
int FocusFarFunct ( void );
void Xmit_SPI ( void );
void mmenu ( void );
void Load_Variables ( void );
void Save_Variables ( void );
int RestoreDefaults ( void );
void Load_Camera_Add ( void );
void Save_Camera_Add ( void );
void Load_TrigCamera_Add ( void );
void Save_TrigCamera_Add ( void );
void Load_Serial_Num ( void );
void Save_Serial_Num ( void );
int ResetProc ( void );
void InitXmit ( void );
int ATDGetLevel ( char ATD_Num );
void doevents ( void );
void CompressorMain ( void );
void CameraMain ( void );
void extend_LA(float desired_speed);
void retract_LA(float desired_speed);
void stop_LA(void);
void Startup(int Move_Speed);
void LAMain ( int Move_Position, int Move_Speed);
int GetTrigCam (void);


//Subroutines1.c
int NullFunction ( void );
struct menu_var *getVariable( void ); 
void StdVarFunc_String ( struct menu_var *var ); 
void next_variable ( struct menu_var *var );
void Next_Char_In_String_Var ( struct menu_var *var ); 
int ArrayVarFunction ( void );
void UpdateArrayVariables ( struct menu_var *var, char num );
int SkipVarFunction ( void );
int StdVarFunction ( void );
int ExitMenu ( void );
void CursorUp( void );
void CursorDown( void );
float getvalue (struct menu_var* var, char index);
char * getstrval (struct menu_var* var);
char FindMenu ( void );
void IncVariable ( void );
char *incvar ( struct menu_var *var );
void DecVariable ( void );
char *decvar ( struct menu_var *var );
void Select ( void );
void DeSelect ( void );
void LoadMenu ( char Index[] );
void InsertCursor ( void );
void DisplayTitler ( void );
void Display ( char buff[] );
void PositionDisplay ( void );
void ClearTitler ( void );
void Send_Can_msg ( struct CAN_Msg *txMsg );
int menu_function (void);
void Send_Menu_Status (char stat);






//PLL OFF
//#define Tbus .543
//#define BusClk 1.8432

//PLL ON 22.118	 3.6864MHz Crystal
//PLL loop components, high stability = 3300pF, .033uf, 2K 
//#define REFDV_Init 0
//#define SYNR_Init 5
//#define Tbus .0452
//#define BusClk 22.118
//#define OscClk 3.6864

//PLL ON 24.576	 3.6864MHz Crystal
//PLL loop components, high stability = .01uf, .1uf, 2K 
//#define REFDV_Init 2
//#define SYNR_Init 19
//#define Tbus .0407
//#define BusClk 24.576
//#define OscClk 3.6864

//PLL ON 24.000	 4.0MHz Crystal
//PLL loop components, high stability = .01uf, .1uf, 2K 
//#define REFDV_Init 2
//#define SYNR_Init 17
//#define Tbus .0417
//#define BusClk 24.000
//#define OscClk 4.0

//PLL ON 24.000	 8.0MHz Crystal
//PLL loop components, high stability = .01uf, .1uf, 2K 
#define REFDV_Init 5
#define SYNR_Init 17
#define Tbus .0417
#define BusClk 24.000
#define OscClk 8.0


#define DDRA_Init 0b11111100
#define DDRB_Init 0b11111111
#define DDRE_Init 0b11111100
#define DDRJ_Init 0b11000000
#define DDRM_Init 0b00111100
#define DDRP_Init 0b00001111
#define DDRS_Init 0b00001111
#define DDRT_Init 0b00100000


#define PORTA_Init 0b00000000
#define PORTB_Init 0b00000000
#define PORTE_Init 0b00000000
#define PTJ_Init 0b00000000
#define PTM_Init 0b00000000
#define PTP_Init 0b00000000
#define PTS_Init 0b00000000
#define PTT_Init 0b00000000


#define ATD0DIEN_Init 0x00
#define ATD0CTL2_Init 0x80
#define ATD0CTL3_Init 0x23
#define ATD0CTL4_Init 0x45
#define ATD0CTL5_Init 0x80


#define PUCR_Init 0x91
#define PPSJ_Init 0x00
#define PPSP_Init 0x00
#define PIEP_Init 0x00

#define PERM_Init 0x00
#define PPSM_Init 0x00
#define PERT_Init 0x00

//#define PERS_Init 0x00
#define PERS_Init 0xff

//#define WOMS_Init 0x08
#define WOMS_Init 0x00

#define CRGINT_Init 0x80
#define RTICTL_Init 0x40

#define MODRR_Init 0x10



//SPI Control Register 1
#define SPI0CR1_Init 0xd0
//SPI Control Register 2
#define SPI0CR2_Init 0x00
//SPI Baud Rate Register  (24MHz / 2 = 12MHz)
#define SPI0BR_Init 0x00


#define SPISR_SPTEF 0x20
#define SPICR1_SPTIE 0x20
#define SPISR_SPIF 0X80

#define TieInCamSet   0x04
#define TieInCamReset 0x08

#define PWME_Init 0b10110000
#define PWMPOL_Init 0xff
#define PWMCLK_Init 0x4f
#define PWMPRCLK_Init 0x33

#define PWMPER0_Init 100
#define PWMPER1_Init 100
#define PWMPER2_Init 100
#define PWMPER3_Init 100
#define PWMPER4_Init 100
#define PWMPER5_Init 100
#define PWMPER6_Init 100
#define PWMPER7_Init 100

#define PWMDTY0_Init 0
#define PWMDTY1_Init 0
#define PWMDTY2_Init 0
#define PWMDTY3_Init 0
#define PWMDTY4_Init 0
#define PWMDTY5_Init 0
#define PWMDTY6_Init 0
#define PWMDTY7_Init 0

//#define PWMSCLA_Init 6
//#define PWMSCLB_Init 6
//adjust pre-scale to get period of 1500 useconds
//RC time constant = 1500R x 0.0000001C = 0.00015 seconds
//0.00015 x 5 = 0.00075
#define PWMSCLA_Init 0x15
#define PWMSCLB_Init 0x15




typedef struct MenuStruct 
{
char Index[4];
char Entry[12][21];
char Pos[11];
struct menu_var *VarPntr[11];
int (*FunctPtr[11])( void );
};

extern struct MenuStruct Menuc[];

typedef struct MenuStack 
{
char Index[4];
char CursorPos;
char FirstLine;
};

#define MenuSize 17
#define MenuStackSize 5

#define	VM0_Write	0x00
#define	VM1_Write	0x01
#define	HOS_Write	0x02
#define	VOS_Write	0x03
#define	DMM_Write	0x04
#define	DMAH_Write	0x05
#define	DMAL_Write	0x06
#define	DMDI_Write	0x07
#define	CMM_Write	0x08
#define	CMAH_Write	0x09
#define	CMAL_Write	0x0A
#define	CMDI_Write	0x0B
#define	OSDM_Write	0x0C
#define	RB0_Write	0x10
#define	RB1_Write	0x11
#define	RB2_Write	0x12
#define	RB3_Write	0x13
#define	RB4_Write	0x14
#define	RB5_Write	0x15
#define	RB6_Write	0x16
#define	RB7_Write	0x17
#define	RB8_Write	0x18
#define	RB9_Write	0x19
#define	RB10_Write	0x1A
#define	RB11_Write	0x1B
#define	RB12_Write	0x1C
#define	RB13_Write	0x1D
#define	RB14_Write	0x1E
#define	RB15_Write	0x1F
#define	OSDBL_Write	0x6C
		
#define	VM0_Read	0x80
#define	VM1_Read	0x81
#define	HOS_Read	0x82
#define	VOS_Read	0x83
#define	DMM_Read	0x84
#define	DMAH_Read	0x85
#define	DMAL_Read	0x86
#define	DMDI_Read	0x87
#define	CMM_Read	0x88
#define	CMAH_Read	0x89
#define	CMAL_Read	0x8A
#define	CMDI_Read	0x8B
#define	OSDM_Read	0x8C
#define	RB0_Read	0x90
#define	RB1_Read	0x91
#define	RB2_Read	0x92
#define	RB3_Read	0x93
#define	RB4_Read	0x94
#define	RB5_Read	0x95
#define	RB6_Read	0x96
#define	RB7_Read	0x97
#define	RB8_Read	0x98
#define	RB9_Read	0x99
#define	RB10_Read	0x9A
#define	RB11_Read	0x9B
#define	RB12_Read	0x9C
#define	RB13_Read	0x9D
#define	RB14_Read	0x9E
#define	RB15_Read	0x9F
#define	OSDBL_Read	0xEC
#define	STAT_Read	0xA0
#define	DMDO_Read	0xB0
#define	CMDO_Read	0xC0

#define VideoSw_Port PORTA
#define VideoSw 0x20

#define HeadBlower_Port PORTB
#define HeadBlower 0x0c

#define Head_Sensor_Port PTT
#define Head_Sensor 0x04

#define CW 0
#define CCW 1

#define WIM_ID 0x310
#define TxPump 0x26c
#define TxLA 0x26a

#define RotateTimeOut 90

#define Low_Batt_Level 21

#define CamIndexTime (2 * RTI_One_Sec)

#define Cam_Index_Port PORTB 
#define Cam_Index 0x10



#define Head_Dir_Port PORTA
#define Head_Dir_Bit 0x08
#define Head_Run_Port PORTA
#define Head_Run_Bit 0x04

#define VSEL_PORT PORTA
#define CAM_ON  0x10

//encoder resolution is number of 'Q' transitions per tenth inch (averaged)
//or 1/4th the period of 'A' in tenths of inches  ->  = 25.4*4/10
//#define encoder_resolution 10.16
#define encoder_resolution 5.9

// pressure_range = 1024/5V * 4V = 819.2
// pressure_zero = 1024/5V * .5V = 102.4
// pressure = (ATD - zero)/range * 100
#define pressure_range ((1024/5) * 4)
#define pressure_zero  ((1024/5) * .5)


#define TrigState			   	   1
#define TrigRetractLA			   2
#define TrigState2                 3 
#define WaitingForMoving           4
#define LineUpInProgress           5
#define LineUpComplete             6
#define StartSealState			   7
#define SealWaitState			   8
#define StartExtendState		   9
#define StartCleanState	   	   	   10
#define RampUpState				   11
#define StartCenterCleanState	   12
#define CenterCleanState		   13
#define StartFullCleanState		   14
#define FullCleanState			   15
#define ReverseHdState			   16
#define StopCleanState			   17
#define CleanComplete              18
#define StartFirstVac		       19
#define FirstVacMoving             20
#define FirstVacInProgress		   21
#define StartSecondVac	           22
#define SecondVacMoving            23
#define SecondVacInProgress		   24
#define StartThirdVac		       25
#define ThirdVacMoving             26
#define ThirdVacInProgress		   27
#define StartFourthVac		       28
#define FourthVacMoving            29
#define FourthVacInProgress		   30
#define StartFifthVac		       31
#define FifthVacMoving             32                                   
#define FifthVacInProgress		   33

#define StopState				   34
#define FinishState				   35
#define ErrorState				   99

#define HdForward				   1
#define HdReverse				   0

#define NODE_ID 0x48

#endif