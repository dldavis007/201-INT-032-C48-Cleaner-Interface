Project:      CLEANER
Build Number: 1692
Date:         Fri Jun 19 11:16:19 2026
Compiler:     ICC12
Version:      7.50


Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                            text   4000   192E =   6446. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       4000  __start
       402B  _exit
       402D  __text_start
       402D  _SDOResponseTable
       40AD  _DUMMY_ENTRY
       40AE  _CANRxISR
       416C  _IRQ_Int_Handler
       416D  _TC0_Int_Handler
       4173  _TC1_Int_Handler
       4179  _TC2_Int_Handler
       4270  _TC3_Int_Handler
       43F5  _TC5_Int_Handler
       4408  _TC6_Int_Handler
       450F  _RTI_Int_Handler
       4761  _SCI0_Int_Handler
       47E2  _SCI1_Int_Handler
       47E3  _enum_NULL_str
       47E4  _enum_off_on_str
       47EC  _enum_cln_vac_str
       47F4  _enum_pos_neg_str
       47FC  _enum_slow_fast_str
       480E  _enum_stop_retract_str
       4826  _enum_base_iso_str
       4835  _enum_lin_act_str
       4845  _enum_machinesize_str
       485D  _enum_alpha_str
       48BB  _enum_number_str
       48D1  _getchar$device_specific$
       48DB  _putchar$device_specific$
       4900  _RetractLA
       491C  _CenterLA
       4951  _ExtendLA
       4986  _Advance
       49AD  _ZoomInFunct
       49CB  _ZoomOutFunct
       49F6  _FocusFarFunct
       4A14  _FocusNearFunct
       4A3F  _RestoreDefaults
       4A57  _GetTrigCam
       4C37  _NullFunction
       4C3B  _StdVarFunction
       4D25  _ExitMenu
       4D48  _main
       4DAC  lsl16
       4DB6  fp2int
       4DC9  fp2long
       4E48  int2fp
       4E66  uint2fp
       4E79  ulong2fp
       4E8C  long2fp
       4EEB  cmp4
       4F0A  add4
       4F1F  sub4
       4F34  and4
       4F4B  or4
       4F62  xor4
       4F79  com4
       4F82  asl4
       4F82  lsl4
       4F94  asr4
       4FA6  lsr4
       4FB8  div4s
       4FC5  div4u
       4FCD  mod4s
       4FD3  mod4u
       4FE5  divmod4s
       4FED  divmod4u
       5147  int2long
       515A  lret
       5165  lret_paged
       5178  subf4
       517F  addf4
       522D  cmpf4
       5266  divf4
       5330  mulf4
       5402  __fp_is_zero
       5409  __unpack_u
       542D  __unpack_s
       5446  __pack
       546E  __normalize
       54B3  __fp_neg
       54BF  negf4
       54C6  __HC12Setup
       54CB  __ctype
       55CC  __sdepi
       563C  _atof
       588D  _powi
       58CC  _isdigit
       58E4  _islower
       58FC  _isspace
       5914  _toupper
       592E  __text_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                           idata   592E   0783 =   1923. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       592E  __idata_start
       60B1  __idata_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                            data   2000   0783 =   1923. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       2000  __data_start
       2000  _FlashCmd
       200E  _No2WireCnt
       2010  _gTPDONr
       2011  _clearProc
       2012  _gTimCnt
       2014  _gCANFilter
       2015  _setFilters
       201D  _Seconds
       201E  _Tick
       2020  _SIN0Buf
       20B6  _SIN0Bufptr
       20B8  _SOUT0Buf
       2108  _SOUT0Bufptr
       210A  _RampTimer
       210C  _fast_inc
       210D  _resolver
       210E  _phase
       210F  _prev_phase
       2110  _count
       2111  _LA_position
       2113  _prevLA_position
       2115  _direction
       2116  Interrupts.c:LA_speed_array_ptr
       2117  _TC_6410_PWM
       21C3  Interrupts.c:abs_hdspd
       21C5  _ran_num
       21C7  _margin
       21CB  _done
       21CC  _desired_position
       21CE  _next_desired_position
       21D0  _prev_desired_position
       21D2  _start_sequence
       21D3  _desired_speed
       21D5  _next_desired_speed
       21D7  _extend_test
       21D8  _retract_test
       21D9  _LA_Moving
       21DA  _Move_Position
       21DC  _Move_Speed
       21DE  _LA_Moved
       21DF  _HeadRampCW
       21E0  _HeadRampCCW
       21E1  _State
       21E2  _compTimedOutflag
       21E3  _Use_IN_digi_15
       21E4  _CompressorOnOff
       2206  _CntrStrokes
       2228  _FullStrokes
       224A  _CntrDist
       226C  _FullDist
       228E  _LACntr
       22B0  _LASpeed
       22D2  _LineUpDist
       22F4  _LineupSpeed
       2316  _SealTime
       2338  _TestModeOnOff
       235A  _LineUpClnVac
       237C  _LineupTimeOnOff
       239E  _laSwitchPol
       23C0  _VacDist1
       23E2  _VacDist2
       2404  _VacDist3
       2426  _VacDist4
       2448  _VacDist5
       246A  _VacSpeed1
       248C  _VacSpeed2
       24AE  _VacSpeed3
       24D0  _VacSpeed4
       24F2  _VacSpeed5
       2514  _LowSetPoint
       2536  _HighSetPoint
       2558  _MachineSize
       257A  _ZoomSpeed
       259C  _FocusSpeed
       25BE  _LightLevel
       25E0  _AdvanceTime
       2602  _CamTag
       2624  _disp_add
       2646  _SerialNum
       2668  _TrigCam4
       2669  _TrigCam5
       266A  _HeadCWOnOff
       268C  _HeadCCWOnOff
       26AE  _BlowersOnOff
       26D0  _VacuumOnOff
       26F2  _SealsOnOff
       2714  _Pressure
       2736  _Rev
       2758  _MenuStackc
       2776  _StackPointer
       2777  _VariableFlag
       2778  Subroutines.c:Prev_LowSetPoint
       277A  Subroutines.c:Prev_HighSetPoint
       277C  _myspd
       277E  _UpdateArrayVar
       277F  _StoreFlag
       2780  _initPID
       2783  __data_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                             bss   2783   0330 =    816. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       2783  __bss_start
       2783  _gTxMonitor
       278F  _gTxNMT
       279B  _gTxSDO
       27A7  _gRxCAN
       27B3  _gRPDOConfig
       27D3  _gTPDOConfig
       2883  _gMCOConfig
       2898  _RamCkSum
       2899  _RamData
       289A  _RamAddress
       289C  _StartAddress
       289E  _gProcImg
       28C0  Interrupts.c:LA_speed_array
       28D0  _LA_speed
       28D4  _TC2_cap
       28D6  _TC2_prev
       28D8  _LA_speed_timer
       28DA  _HdOffTimer
       28DC  _PID_Timer
       28DE  _HD_PWM_Out
       28DF  _HD_PWM_Bit
       28E0  _LA_PWM_Out
       28E1  _LAspd
       28E2  _LA_PWM_Bit
       28E3  _IncSpeedUpCntr
       28E4  _IncSpeedUpTimer
       28E6  _StateTime
       28EA  _updatePressureTimer
       28EC  _CompressorTimer
       28EE  _SequenceTimer
       28F0  _Update_Menu_Timer
       28F2  _AdvanceTimer
       28F4  _FocusZoomTimer
       28F6  _MenuTimer
       28F8  _LineupTimeCapture
       28FC  _LineupTimer
       2900  _LA_Wait_Timer
       2902  _Timer2
       2904  _Timer1
       2906  _Gen_Flags
       2907  _TC0_RCVD_Data
       2909  _Menu
       2A05  _updateSpd
       2A09  _UDSPD
       2A0D  _NullVar
       2A2F  _cam_addx
       2A31  _PB3_PWM
       2A32  _PB1_PWM
       2A33  _laSwitch
       2A34  _ActCam5
       2A35  _ActCam4
       2A36  _CamAddressXmitd
       2A37  _PressureMsgSent
       2A38  _Multi_Var_ptr
       2A39  _String_Var_ptr
       2A3A  _Variable_flag
       2A3B  _FractionFlag
       2A3C  _HdDirection
       2A3D  _HeadSpeed
       2A3F  _Cntr
       2A41  _FDist
       2A43  _CDist
       2A45  _FStrks
       2A47  _CStrks
       2A49  _cursor_row
       2A4A  _UpdateMenu
       2A4B  _gTxMsg
       2A57  _cam_add
       2A59  _save_serial_flag
       2A5A  Subroutines1.c:i
       2A5C  Subroutines1.c:j
       2A5E  _InProcess
       2A5F  _AcceptKeys
       2A60  _SelectFlag
       2A61  _CursorUpFlag
       2A62  _CursorDownFlag
       2A63  _speedPID
       2A83  _spdPID
       2AAF  __textmode
       2AB3  __bss_end

Area   [ Extended Code Page ]      Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                         extcode   E0000   7D69 =  32105. bytes (rel,con,rom)

CPU ExtAddr  Global Symbol
      -----  --------------------------------
      38:8000 $_FlashInit
      38:8006 $_FlashWrite
      38:81BA $_EEInit
      38:81C5 $_EEWrite
      38:835E $_MCO_Search_OD
      38:83D3 $_MCO_Send_SDO_Abort
      38:8425 $_MCO_Handle_SDO_Request
      38:871F $_MCO_Prepare_TPDOs
      38:8800 $_MCO_TransmitPDO
      38:88CB $_MCO_Init
      38:898E $_MCO_InitRPDO
      38:8A53 $_MCO_InitTPDO
      38:8B6D $_MCO_ProcessStack
      38:8F7B $_Reset_Max33011
      38:8FF1 $_MCOUSER_FatalError
      38:8FF9 $_MCOUSER_ResetApplication
      38:9001 $_MCOUSER_ResetCommunication
      38:9143 $_set_screener_std
      38:9227 $_MCOHW_PullMessage
      38:92DB $_MCOHW_PushMessage
      38:93C1 $_MCOHW_GetTime
      38:93D1 $_MCOHW_IsTimeExpired
      38:940F $_MCOHW_TimerISR
      38:9417 $_MCOHW_Init
      38:94C2 $_MCOHW_SetCANFilter
      38:9541 $_getVariable
      38:95C5 $_StdVarFunc_String
      38:963F $_next_variable
      38:96D1 $_Next_Char_In_String_Var
      38:970E $_ArrayVarFunction
      38:9717 $_UpdateArrayVariables
      38:97AE $_SkipVarFunction
      38:982A $_CursorUp
      38:9897 $_CursorDown
      38:9904 $_getvalue
      38:9AD0 $_getstrval
      38:9DD6 $_FindMenu
      38:9E92 $_IncVariable
      38:9EBC $_incvar
      38:9FA8 $_DecVariable
      38:9FD2 $_decvar
      38:A0BE $_Select
      38:A3E1 $_DeSelect
      38:A4C5 $_LoadMenu
      38:ACC1 $_InsertCursor
      38:ACF8 $_DisplayTitler
      38:AE32 $_Display
      38:AF5A $_PositionDisplay
      38:AFAD $_ClearTitler
      38:AFFE $_menu_function
      38:B2B4 $_Send_Menu_Status
      38:B2DB $_UDPID
      38:B480 $__print
      38:BC1D $_atoi
      38:BCA7 $_itoa
      38:BDE3 $_ltoa
      38:BF81 $_isdigit
      38:BF99 $_islower
      38:BFB1 $_isspace
      38:BFC9 $_toupper
      38:BFE4 $_printf
      39:8000 $_InitPorts
      39:806C $_InitInterrupts
      39:8099 $_InitPLL
      39:80AD $_InitSCI
      39:80CE $_PWMInit
      39:812D $_AtoDInit
      39:8145 $_InitCANopen
      39:814E $_Load_Variables
      39:82B1 $_Save_Variables
      39:83CD $_Load_Camera_Add
      39:8406 $_Save_Camera_Add
      39:8433 $_Load_TrigCamera_Add
      39:844C $_Save_TrigCamera_Add
      39:8466 $_Load_Serial_Num
      39:84D7 $_Save_Serial_Num
      39:84F1 $_ResetProc
      39:84F9 $_InitXmit
      39:850C $_ATDGetLevel
      39:852A $_doevents
      39:9F05 $_CompressorMain
      39:A245 $_CameraMain
      39:A56F $_extend_LA
      39:A5B8 $_retract_LA
      39:A601 $_stop_LA
      39:A64F $_Startup
      39:A774 $_LAMain
      39:AB13 $_ultoa
      39:ABF7 $_utoa
      39:ACB0 $_ftoa
      39:AFE9 $_sprintf
      39:B03C $__FormatFP_1
      39:BA5D $_abs
      39:BA7A $_srand
      39:BA83 $_rand
      39:BA9C $_memcmp
      39:BAF9 $_memcpy
      39:BB3D $_strcmp
      39:BB8E $_strcspn
      39:BBD9 $_strlen
      39:BBFE $_strncpy
      39:BC69 $_strpbrk
      39:BC92 $_strspn
      39:BCF6 $_strtok
      39:BD6D __extcode_end

Area                               Start  End    Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                          memory   DA00   10000 =  65536. bytes (abs,ovr,rom)

       Addr  Global Symbol
      -----  --------------------------------
       DA00  _Menuc
       FF80  _interrupt_vectors

Files Linked      [ module(s) ]

C:\iccv712\lib\crt12initrm.o	[ crt12initrm.s ]
Flash.o	[ Flash.c ]
EEProm.o	[ EEProm.c ]
mco.o	[ mco.c ]
user.o	[ user.c ]
mcohw.o	[ mcohw.c ]
Interrupts.o	[ Interrupts.c ]
Subroutines.o	[ Subroutines.c ]
Subroutines1.o	[ Subroutines1.c ]
PID.o	[ PID.c ]
Controller.o	[ Controller.c ]
<library>	[ _printf.s, lsl16.s, fp2long.s, long2fp.s, longcmp.s, ladd.s, lbits.s, lshift.s, ldiv.s, int2long.s ]
[ lret.s, lret_paged.s, fpadd.s, fpcmp.s, fpdiv.s, fpmul.s, fputil.s, setup.s, atoi.s, itoa.s, ltoa.s, ultoa.s ]
[ utoa.s, ftoa.s, isdigit.s, islower.s, isspace.s, ctype.s, toupper.s, printf.s, sprintf.s, textmode.s ]
[ formatfp1.s, abs.s, rand.s, memcmp.s, memcpy.s, strcmp.s, strcspn.s, strlen.s, strncpy.s, strpbrk.s ]
[ strspn.s, strtok.s, atof.s, isdigit.s, islower.s, isspace.s, toupper.s ]

User Global Definitions

init_sp = 0x4000
initrm = 0x21

Area Definitions

-btext:0x4000.0x7fff:0xc000.0xffff
-bdata:0x2000.0xffff
-bextcode:0xe0000.0xfffff

