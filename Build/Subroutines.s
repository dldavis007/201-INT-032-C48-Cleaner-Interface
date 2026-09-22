	.module Subroutines.c
	.area text
	.dbfile ..\..\REV3~1.25\SOURCE~1\Subroutines.c
	.area data
	.dbfile ..\..\REV3~1.25\SOURCE~1\Subroutines.c
_ran_num::
	.blkb 2
	.area idata
	.word 0
	.area data
	.dbfile ..\..\REV3~1.25\SOURCE~1\Subroutines.c
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.dbsym e ran_num _ran_num i
_margin::
	.blkb 4
	.area idata
	.word 0x3ca3,0xd70a
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.dbsym e margin _margin D
_done::
	.blkb 1
	.area idata
	.byte 1
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.dbsym e done _done c
_desired_position::
	.blkb 2
	.area idata
	.word 0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.dbsym e desired_position _desired_position I
_next_desired_position::
	.blkb 2
	.area idata
	.word 0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.dbsym e next_desired_position _next_desired_position I
_prev_desired_position::
	.blkb 2
	.area idata
	.word 0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.dbsym e prev_desired_position _prev_desired_position I
_start_sequence::
	.blkb 1
	.area idata
	.byte 1
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.dbsym e start_sequence _start_sequence C
_desired_speed::
	.blkb 2
	.area idata
	.word 0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.dbsym e desired_speed _desired_speed I
_next_desired_speed::
	.blkb 2
	.area idata
	.word 0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.dbsym e next_desired_speed _next_desired_speed I
_extend_test::
	.blkb 1
	.area idata
	.byte 0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.dbsym e extend_test _extend_test c
_retract_test::
	.blkb 1
	.area idata
	.byte 0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.dbsym e retract_test _retract_test c
_LA_Moving::
	.blkb 1
	.area idata
	.byte 0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.dbsym e LA_Moving _LA_Moving c
_Move_Position::
	.blkb 2
	.area idata
	.word -1
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.dbsym e Move_Position _Move_Position I
_Move_Speed::
	.blkb 2
	.area idata
	.word 0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.dbsym e Move_Speed _Move_Speed I
_LA_Moved::
	.blkb 1
	.area idata
	.byte 0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.dbsym e LA_Moved _LA_Moved c
_HeadRampCW::
	.blkb 1
	.area idata
	.byte 0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.dbsym e HeadRampCW _HeadRampCW C
_HeadRampCCW::
	.blkb 1
	.area idata
	.byte 0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.dbsym e HeadRampCCW _HeadRampCCW C
_State::
	.blkb 1
	.area idata
	.byte 35
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.dbsym e State _State c
_compTimedOutflag::
	.blkb 1
	.area idata
	.byte 0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.dbsym e compTimedOutflag _compTimedOutflag c
_Use_IN_digi_15::
	.blkb 1
	.area idata
	.byte 0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.dbsym e Use_IN_digi_15 _Use_IN_digi_15 c
	.area text
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
_enum_NULL_str::
	.byte 0
	.dbsym e enum_NULL_str _enum_NULL_str A[1:1]c
_enum_off_on_str::
	.byte 'O,'F,'F,44,32,'O,'N,0
	.dbsym e enum_off_on_str _enum_off_on_str A[8:8]c
_enum_cln_vac_str::
	.byte 'C,'L,'N,44,'V,'A,'C,0
	.dbsym e enum_cln_vac_str _enum_cln_vac_str A[8:8]c
_enum_pos_neg_str::
	.byte 'P,'O,'S,44,'N,'E,'G,0
	.dbsym e enum_pos_neg_str _enum_pos_neg_str A[8:8]c
_enum_slow_fast_str::
	.byte 'E,'X,'S,'L,'W,44,32,'S,'L,'O,'W,44,32,'F,'A,'S
	.byte 'T,0
	.dbsym e enum_slow_fast_str _enum_slow_fast_str A[18:18]c
_enum_stop_retract_str::
	.byte 32,32,32,'S,'T,'O,'P,44,32,'E,'X,'T,'E,'N,'D,44
	.byte 'R,'E,'T,'R,'A,'C,'T,0
	.dbsym e enum_stop_retract_str _enum_stop_retract_str A[24:24]c
_enum_base_iso_str::
	.byte 'B,'A,'S,'E,44,32,'I,'S,'O,44,32,'O,'F,'F,0
	.dbsym e enum_base_iso_str _enum_base_iso_str A[15:15]c
_enum_lin_act_str::
	.byte 'C,'L,'E,'A,'N,'E,'R,44,'L,'I,'N,32,'A,'C,'T,0
	.dbsym e enum_lin_act_str _enum_lin_act_str A[16:16]c
_enum_machinesize_str::
	.byte 48,56,45,49,48,44,49,50,45,50,50,44,50,52,45,51
	.byte 52,44,51,54,45,52,56,0
	.dbsym e enum_machinesize_str _enum_machinesize_str A[24:24]c
_enum_alpha_str::
	.byte 32,44,'A,44,'B,44,'C,44,'D,44,'E,44,'F,44,'G,44
	.byte 'H,44,'I,44,'J,44,'K,44,'L,44,'M,44,'N,44,'O,44
	.byte 'P,44,'Q,44,'R,44,'S,44,'T,44,'U,44,'V,44,'W,44
	.byte 'X,44,'Y,44,'Z,44,48,44,49,44,50,44,51,44,52,44
	.byte 53,44,54,44,55,44,56,44,57,44,46,44,60,44,62,44
	.byte 59,44,58,44,64,44,40,44,41,44,45,44,45,0
	.dbsym e enum_alpha_str _enum_alpha_str A[94:94]c
_enum_number_str::
	.byte 48,44,49,44,50,44,51,44,52,44,53,44,54,44,55,44
	.byte 56,44,57,44,45,0
	.dbsym e enum_number_str _enum_number_str A[22:22]c
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
_CompressorOnOff::
	.blkb 4
	.area idata
	.word 0x4000,0x0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 4
	.area idata
	.word 0x3f80,0x0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 4
	.area idata
	.word 0x3f80,0x0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 4
	.area idata
	.word 0x4000,0x0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 1
	.area idata
	.byte 0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 1
	.area idata
	.byte 3
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 4
	.area idata
	.byte 32,'O,'N,0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 8
	.area idata
	.byte 0,0,0,0,0,0,0,0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkw 1
	.area idata
	.word _enum_off_on_str
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 2
	.area idata
	.byte 0,0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.dbstruct 0 34 menu_var
	.dbfield 0 value D
	.dbfield 4 inc D
	.dbfield 8 min D
	.dbfield 12 max D
	.dbfield 16 dec_pos c
	.dbfield 17 len_str C
	.dbfield 18 str_value A[12:12]c
	.dbfield 30 str_enum pc
	.dbfield 32 next_var pS[menu_var]
	.dbend
	.dbsym e CompressorOnOff _CompressorOnOff S[menu_var]
_CntrStrokes::
	.blkb 4
	.area idata
	.word 0x40c0,0x0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 4
	.area idata
	.word 0x3f80,0x0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 4
	.area idata
	.word 0x0,0x0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 4
	.area idata
	.word 0x41a0,0x0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 1
	.area idata
	.byte 0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 1
	.area idata
	.byte 2
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 3
	.area idata
	.byte 32,54,0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 9
	.area idata
	.byte 0,0,0,0,0,0,0,0,0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkw 1
	.area idata
	.word _enum_NULL_str
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 2
	.area idata
	.byte 0,0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.dbsym e CntrStrokes _CntrStrokes S[menu_var]
_FullStrokes::
	.blkb 4
	.area idata
	.word 0x40c0,0x0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 4
	.area idata
	.word 0x3f80,0x0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 4
	.area idata
	.word 0x0,0x0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 4
	.area idata
	.word 0x41a0,0x0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 1
	.area idata
	.byte 0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 1
	.area idata
	.byte 2
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 3
	.area idata
	.byte 32,54,0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 9
	.area idata
	.byte 0,0,0,0,0,0,0,0,0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkw 1
	.area idata
	.word _enum_NULL_str
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 2
	.area idata
	.byte 0,0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.dbsym e FullStrokes _FullStrokes S[menu_var]
_CntrDist::
	.blkb 4
	.area idata
	.word 0x4080,0x0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 4
	.area idata
	.word 0x3dcc,0xcccd
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 4
	.area idata
	.word 0x3f80,0x0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 4
	.area idata
	.word 0x41a0,0x0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 1
	.area idata
	.byte 1
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 1
	.area idata
	.byte 4
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 5
	.area idata
	.byte 32,52,46,48,0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 7
	.area idata
	.byte 0,0,0,0,0,0,0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkw 1
	.area idata
	.word _enum_NULL_str
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 2
	.area idata
	.byte 0,0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.dbsym e CntrDist _CntrDist S[menu_var]
_FullDist::
	.blkb 4
	.area idata
	.word 0x4100,0x0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 4
	.area idata
	.word 0x3dcc,0xcccd
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 4
	.area idata
	.word 0x3f80,0x0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 4
	.area idata
	.word 0x41a0,0x0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 1
	.area idata
	.byte 1
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 1
	.area idata
	.byte 4
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 5
	.area idata
	.byte 32,56,46,48,0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 7
	.area idata
	.byte 0,0,0,0,0,0,0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkw 1
	.area idata
	.word _enum_NULL_str
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 2
	.area idata
	.byte 0,0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.dbsym e FullDist _FullDist S[menu_var]
_LACntr::
	.blkb 4
	.area idata
	.word 0x4080,0x0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 4
	.area idata
	.word 0x3dcc,0xcccd
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 4
	.area idata
	.word 0x3f80,0x0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 4
	.area idata
	.word 0x41a0,0x0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 1
	.area idata
	.byte 1
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 1
	.area idata
	.byte 4
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 5
	.area idata
	.byte 32,52,46,48,0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 7
	.area idata
	.byte 0,0,0,0,0,0,0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkw 1
	.area idata
	.word _enum_NULL_str
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 2
	.area idata
	.byte 0,0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.dbsym e LACntr _LACntr S[menu_var]
_LASpeed::
	.blkb 4
	.area idata
	.word 0x42c8,0x0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 4
	.area idata
	.word 0x3f80,0x0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 4
	.area idata
	.word 0x41c8,0x0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 4
	.area idata
	.word 0x42c8,0x0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 1
	.area idata
	.byte 0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 1
	.area idata
	.byte 3
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 4
	.area idata
	.byte 49,48,48,0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 8
	.area idata
	.byte 0,0,0,0,0,0,0,0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkw 1
	.area idata
	.word _enum_NULL_str
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 2
	.area idata
	.byte 0,0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.dbsym e LASpeed _LASpeed S[menu_var]
_LineUpDist::
	.blkb 4
	.area idata
	.word 0x4296,0x0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 4
	.area idata
	.word 0x3dcc,0xcccd
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 4
	.area idata
	.word 0x0,0x0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 4
	.area idata
	.word 0x4396,0x0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 1
	.area idata
	.byte 1
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 1
	.area idata
	.byte 5
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 6
	.area idata
	.byte 32,55,53,46,48,0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 6
	.area idata
	.byte 0,0,0,0,0,0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkw 1
	.area idata
	.word _enum_NULL_str
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 2
	.area idata
	.byte 0,0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.dbsym e LineUpDist _LineUpDist S[menu_var]
_LineupSpeed::
	.blkb 4
	.area idata
	.word 0x3f28,0xf5c3
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 4
	.area idata
	.word 0x3c23,0xd70a
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 4
	.area idata
	.word 0x3e80,0x0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 4
	.area idata
	.word 0x3f66,0x6666
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 1
	.area idata
	.byte 2
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 1
	.area idata
	.byte 4
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 5
	.area idata
	.byte 48,46,54,54,0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 7
	.area idata
	.byte 0,0,0,0,0,0,0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkw 1
	.area idata
	.word _enum_NULL_str
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 2
	.area idata
	.byte 0,0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.dbsym e LineupSpeed _LineupSpeed S[menu_var]
_SealTime::
	.blkb 4
	.area idata
	.word 0x4120,0x0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 4
	.area idata
	.word 0x3f80,0x0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 4
	.area idata
	.word 0x0,0x0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 4
	.area idata
	.word 0x41a0,0x0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 1
	.area idata
	.byte 0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 1
	.area idata
	.byte 2
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 3
	.area idata
	.byte 49,48,0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 9
	.area idata
	.byte 0,0,0,0,0,0,0,0,0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkw 1
	.area idata
	.word _enum_NULL_str
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 2
	.area idata
	.byte 0,0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.dbsym e SealTime _SealTime S[menu_var]
_TestModeOnOff::
	.blkb 4
	.area idata
	.word 0x3f80,0x0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 4
	.area idata
	.word 0x3f80,0x0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 4
	.area idata
	.word 0x3f80,0x0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 4
	.area idata
	.word 0x4000,0x0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 1
	.area idata
	.byte 0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 1
	.area idata
	.byte 3
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 4
	.area idata
	.byte 'O,'F,'F,0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 8
	.area idata
	.byte 0,0,0,0,0,0,0,0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkw 1
	.area idata
	.word _enum_off_on_str
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 2
	.area idata
	.byte 0,0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.dbsym e TestModeOnOff _TestModeOnOff S[menu_var]
_LineUpClnVac::
	.blkb 4
	.area idata
	.word 0x3f80,0x0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 4
	.area idata
	.word 0x3f80,0x0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 4
	.area idata
	.word 0x3f80,0x0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 4
	.area idata
	.word 0x4000,0x0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 1
	.area idata
	.byte 0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 1
	.area idata
	.byte 3
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 4
	.area idata
	.byte 'C,'L,'N,0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 8
	.area idata
	.byte 0,0,0,0,0,0,0,0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkw 1
	.area idata
	.word _enum_cln_vac_str
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 2
	.area idata
	.byte 0,0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.dbsym e LineUpClnVac _LineUpClnVac S[menu_var]
_LineupTimeOnOff::
	.blkb 4
	.area idata
	.word 0x3f80,0x0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 4
	.area idata
	.word 0x3f80,0x0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 4
	.area idata
	.word 0x3f80,0x0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 4
	.area idata
	.word 0x4000,0x0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 1
	.area idata
	.byte 0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 1
	.area idata
	.byte 3
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 4
	.area idata
	.byte 'O,'F,'F,0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 8
	.area idata
	.byte 0,0,0,0,0,0,0,0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkw 1
	.area idata
	.word _enum_off_on_str
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 2
	.area idata
	.byte 0,0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.dbsym e LineupTimeOnOff _LineupTimeOnOff S[menu_var]
_laSwitchPol::
	.blkb 4
	.area idata
	.word 0x4000,0x0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 4
	.area idata
	.word 0x3f80,0x0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 4
	.area idata
	.word 0x3f80,0x0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 4
	.area idata
	.word 0x4000,0x0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 1
	.area idata
	.byte 0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 1
	.area idata
	.byte 3
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 4
	.area idata
	.byte 'N,'E,'G,0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 8
	.area idata
	.byte 0,0,0,0,0,0,0,0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkw 1
	.area idata
	.word _enum_pos_neg_str
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 2
	.area idata
	.byte 0,0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.dbsym e laSwitchPol _laSwitchPol S[menu_var]
_VacDist1::
	.blkb 4
	.area idata
	.word 0x42c8,0x0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 4
	.area idata
	.word 0x3f80,0x0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 4
	.area idata
	.word 0x0,0x0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 4
	.area idata
	.word 0x4396,0x0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 1
	.area idata
	.byte 0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 1
	.area idata
	.byte 3
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 4
	.area idata
	.byte 49,48,48,0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 8
	.area idata
	.byte 0,0,0,0,0,0,0,0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkw 1
	.area idata
	.word _enum_NULL_str
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 2
	.area idata
	.byte 0,0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.dbsym e VacDist1 _VacDist1 S[menu_var]
_VacDist2::
	.blkb 4
	.area idata
	.word 0x42c8,0x0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 4
	.area idata
	.word 0x3f80,0x0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 4
	.area idata
	.word 0x0,0x0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 4
	.area idata
	.word 0x4396,0x0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 1
	.area idata
	.byte 0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 1
	.area idata
	.byte 3
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 4
	.area idata
	.byte 49,48,48,0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 8
	.area idata
	.byte 0,0,0,0,0,0,0,0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkw 1
	.area idata
	.word _enum_NULL_str
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 2
	.area idata
	.byte 0,0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.dbsym e VacDist2 _VacDist2 S[menu_var]
_VacDist3::
	.blkb 4
	.area idata
	.word 0x42c8,0x0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 4
	.area idata
	.word 0x3f80,0x0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 4
	.area idata
	.word 0x0,0x0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 4
	.area idata
	.word 0x4396,0x0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 1
	.area idata
	.byte 0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 1
	.area idata
	.byte 3
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 4
	.area idata
	.byte 49,48,48,0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 8
	.area idata
	.byte 0,0,0,0,0,0,0,0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkw 1
	.area idata
	.word _enum_NULL_str
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 2
	.area idata
	.byte 0,0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.dbsym e VacDist3 _VacDist3 S[menu_var]
_VacDist4::
	.blkb 4
	.area idata
	.word 0x0,0x0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 4
	.area idata
	.word 0x3f80,0x0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 4
	.area idata
	.word 0x0,0x0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 4
	.area idata
	.word 0x4396,0x0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 1
	.area idata
	.byte 0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 1
	.area idata
	.byte 3
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 4
	.area idata
	.byte 32,32,48,0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 8
	.area idata
	.byte 0,0,0,0,0,0,0,0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkw 1
	.area idata
	.word _enum_NULL_str
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 2
	.area idata
	.byte 0,0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.dbsym e VacDist4 _VacDist4 S[menu_var]
_VacDist5::
	.blkb 4
	.area idata
	.word 0x0,0x0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 4
	.area idata
	.word 0x3f80,0x0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 4
	.area idata
	.word 0x0,0x0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 4
	.area idata
	.word 0x4396,0x0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 1
	.area idata
	.byte 0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 1
	.area idata
	.byte 3
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 4
	.area idata
	.byte 32,32,48,0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 8
	.area idata
	.byte 0,0,0,0,0,0,0,0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkw 1
	.area idata
	.word _enum_NULL_str
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 2
	.area idata
	.byte 0,0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.dbsym e VacDist5 _VacDist5 S[menu_var]
_VacSpeed1::
	.blkb 4
	.area idata
	.word 0x3f80,0x0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 4
	.area idata
	.word 0x3f80,0x0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 4
	.area idata
	.word 0x3f80,0x0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 4
	.area idata
	.word 0x4040,0x0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 1
	.area idata
	.byte 0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 1
	.area idata
	.byte 5
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 6
	.area idata
	.byte 'E,'X,'S,'L,'W,0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 6
	.area idata
	.byte 0,0,0,0,0,0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkw 1
	.area idata
	.word _enum_slow_fast_str
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 2
	.area idata
	.byte 0,0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.dbsym e VacSpeed1 _VacSpeed1 S[menu_var]
_VacSpeed2::
	.blkb 4
	.area idata
	.word 0x3f80,0x0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 4
	.area idata
	.word 0x3f80,0x0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 4
	.area idata
	.word 0x3f80,0x0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 4
	.area idata
	.word 0x4040,0x0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 1
	.area idata
	.byte 0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 1
	.area idata
	.byte 5
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 6
	.area idata
	.byte 'E,'X,'S,'L,'W,0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 6
	.area idata
	.byte 0,0,0,0,0,0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkw 1
	.area idata
	.word _enum_slow_fast_str
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 2
	.area idata
	.byte 0,0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.dbsym e VacSpeed2 _VacSpeed2 S[menu_var]
_VacSpeed3::
	.blkb 4
	.area idata
	.word 0x3f80,0x0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 4
	.area idata
	.word 0x3f80,0x0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 4
	.area idata
	.word 0x3f80,0x0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 4
	.area idata
	.word 0x4040,0x0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 1
	.area idata
	.byte 0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 1
	.area idata
	.byte 5
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 6
	.area idata
	.byte 'E,'X,'S,'L,'W,0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 6
	.area idata
	.byte 0,0,0,0,0,0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkw 1
	.area idata
	.word _enum_slow_fast_str
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 2
	.area idata
	.byte 0,0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.dbsym e VacSpeed3 _VacSpeed3 S[menu_var]
_VacSpeed4::
	.blkb 4
	.area idata
	.word 0x3f80,0x0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 4
	.area idata
	.word 0x3f80,0x0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 4
	.area idata
	.word 0x3f80,0x0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 4
	.area idata
	.word 0x4040,0x0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 1
	.area idata
	.byte 0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 1
	.area idata
	.byte 5
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 6
	.area idata
	.byte 'E,'X,'S,'L,'W,0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 6
	.area idata
	.byte 0,0,0,0,0,0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkw 1
	.area idata
	.word _enum_slow_fast_str
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 2
	.area idata
	.byte 0,0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.dbsym e VacSpeed4 _VacSpeed4 S[menu_var]
_VacSpeed5::
	.blkb 4
	.area idata
	.word 0x3f80,0x0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 4
	.area idata
	.word 0x3f80,0x0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 4
	.area idata
	.word 0x3f80,0x0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 4
	.area idata
	.word 0x4040,0x0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 1
	.area idata
	.byte 0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 1
	.area idata
	.byte 5
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 6
	.area idata
	.byte 'E,'X,'S,'L,'W,0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 6
	.area idata
	.byte 0,0,0,0,0,0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkw 1
	.area idata
	.word _enum_slow_fast_str
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 2
	.area idata
	.byte 0,0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.dbsym e VacSpeed5 _VacSpeed5 S[menu_var]
_LowSetPoint::
	.blkb 4
	.area idata
	.word 0x42b4,0x0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 4
	.area idata
	.word 0x3f80,0x0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 4
	.area idata
	.word 0x4120,0x0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 4
	.area idata
	.word 0x42b4,0x0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 1
	.area idata
	.byte 0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 1
	.area idata
	.byte 2
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 3
	.area idata
	.byte 57,48,0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 9
	.area idata
	.byte 0,0,0,0,0,0,0,0,0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkw 1
	.area idata
	.word _enum_NULL_str
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 2
	.area idata
	.byte 0,0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.dbsym e LowSetPoint _LowSetPoint S[menu_var]
_HighSetPoint::
	.blkb 4
	.area idata
	.word 0x42c8,0x0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 4
	.area idata
	.word 0x3f80,0x0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 4
	.area idata
	.word 0x41a0,0x0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 4
	.area idata
	.word 0x42c8,0x0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 1
	.area idata
	.byte 0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 1
	.area idata
	.byte 3
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 4
	.area idata
	.byte 49,48,48,0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 8
	.area idata
	.byte 0,0,0,0,0,0,0,0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkw 1
	.area idata
	.word _enum_NULL_str
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 2
	.area idata
	.byte 0,0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.dbsym e HighSetPoint _HighSetPoint S[menu_var]
_MachineSize::
	.blkb 4
	.area idata
	.word 0x3f80,0x0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 4
	.area idata
	.word 0x3f80,0x0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 4
	.area idata
	.word 0x3f80,0x0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 4
	.area idata
	.word 0x4080,0x0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 1
	.area idata
	.byte 0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 1
	.area idata
	.byte 5
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 6
	.area idata
	.byte 48,56,45,49,48,0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 6
	.area idata
	.byte 0,0,0,0,0,0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkw 1
	.area idata
	.word _enum_machinesize_str
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 2
	.area idata
	.byte 0,0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.dbsym e MachineSize _MachineSize S[menu_var]
_ZoomSpeed::
	.blkb 4
	.area idata
	.word 0x42c8,0x0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 4
	.area idata
	.word 0x3f80,0x0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 4
	.area idata
	.word 0x0,0x0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 4
	.area idata
	.word 0x42c8,0x0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 1
	.area idata
	.byte 0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 1
	.area idata
	.byte 3
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 4
	.area idata
	.byte 49,48,48,0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 8
	.area idata
	.byte 0,0,0,0,0,0,0,0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkw 1
	.area idata
	.word _enum_NULL_str
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 2
	.area idata
	.byte 0,0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.dbsym e ZoomSpeed _ZoomSpeed S[menu_var]
_FocusSpeed::
	.blkb 4
	.area idata
	.word 0x42c8,0x0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 4
	.area idata
	.word 0x3f80,0x0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 4
	.area idata
	.word 0x0,0x0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 4
	.area idata
	.word 0x42c8,0x0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 1
	.area idata
	.byte 0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 1
	.area idata
	.byte 3
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 4
	.area idata
	.byte 49,48,48,0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 8
	.area idata
	.byte 0,0,0,0,0,0,0,0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkw 1
	.area idata
	.word _enum_NULL_str
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 2
	.area idata
	.byte 0,0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.dbsym e FocusSpeed _FocusSpeed S[menu_var]
_LightLevel::
	.blkb 4
	.area idata
	.word 0x42c8,0x0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 4
	.area idata
	.word 0x3f80,0x0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 4
	.area idata
	.word 0x0,0x0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 4
	.area idata
	.word 0x42c8,0x0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 1
	.area idata
	.byte 0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 1
	.area idata
	.byte 3
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 4
	.area idata
	.byte 49,48,48,0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 8
	.area idata
	.byte 0,0,0,0,0,0,0,0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkw 1
	.area idata
	.word _enum_NULL_str
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 2
	.area idata
	.byte 0,0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.dbsym e LightLevel _LightLevel S[menu_var]
_AdvanceTime::
	.blkb 4
	.area idata
	.word 0x3f80,0x0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 4
	.area idata
	.word 0x3f80,0x0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 4
	.area idata
	.word 0x3f80,0x0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 4
	.area idata
	.word 0x40a0,0x0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 1
	.area idata
	.byte 0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 1
	.area idata
	.byte 1
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 2
	.area idata
	.byte 49,0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 10
	.area idata
	.byte 0,0,0,0,0,0,0,0,0,0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkw 1
	.area idata
	.word _enum_NULL_str
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 2
	.area idata
	.byte 0,0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.dbsym e AdvanceTime _AdvanceTime S[menu_var]
_CamTag::
	.blkb 4
	.area idata
	.word 0x3f80,0x0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 4
	.area idata
	.word 0x3f80,0x0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 4
	.area idata
	.word 0x3f80,0x0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 4
	.area idata
	.word 0x4238,0x0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 1
	.area idata
	.byte 0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 1
	.area idata
	.byte 245
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 12
	.area idata
	.byte 'C,'L,'E,'A,'N,'E,'R,32,'C,'A,'M,0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkw 1
	.area idata
	.word _enum_alpha_str
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 2
	.area idata
	.byte 0,0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.dbsym e CamTag _CamTag S[menu_var]
_disp_add::
	.blkb 4
	.area idata
	.word 0x3f80,0x0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 4
	.area idata
	.word 0x3f80,0x0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 4
	.area idata
	.word 0x3f80,0x0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 4
	.area idata
	.word 0x4238,0x0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 1
	.area idata
	.byte 0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 1
	.area idata
	.byte 252
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 5
	.area idata
	.byte 49,50,51,52,0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 7
	.area idata
	.byte 0,0,0,0,0,0,0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkw 1
	.area idata
	.word _enum_alpha_str
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 2
	.area idata
	.byte 0,0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.dbsym e disp_add _disp_add S[menu_var]
_SerialNum::
	.blkb 4
	.area idata
	.word 0x3f80,0x0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 4
	.area idata
	.word 0x3f80,0x0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 4
	.area idata
	.word 0x3f80,0x0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 4
	.area idata
	.word 0x4120,0x0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 1
	.area idata
	.byte 0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 1
	.area idata
	.byte 250
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 7
	.area idata
	.byte 45,45,45,45,45,45,0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 5
	.area idata
	.byte 0,0,0,0,0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkw 1
	.area idata
	.word _enum_number_str
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 2
	.area idata
	.byte 0,0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.dbsym e SerialNum _SerialNum S[menu_var]
_TrigCam4::
	.blkb 1
	.area idata
	.byte 123
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.dbsym e TrigCam4 _TrigCam4 c
_TrigCam5::
	.blkb 1
	.area idata
	.byte 45
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.dbsym e TrigCam5 _TrigCam5 c
_HeadCWOnOff::
	.blkb 4
	.area idata
	.word 0x3f80,0x0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 4
	.area idata
	.word 0x3f80,0x0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 4
	.area idata
	.word 0x3f80,0x0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 4
	.area idata
	.word 0x4000,0x0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 1
	.area idata
	.byte 0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 1
	.area idata
	.byte 3
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 4
	.area idata
	.byte 'O,'F,'F,0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 8
	.area idata
	.byte 0,0,0,0,0,0,0,0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkw 1
	.area idata
	.word _enum_off_on_str
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 2
	.area idata
	.byte 0,0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.dbsym e HeadCWOnOff _HeadCWOnOff S[menu_var]
_HeadCCWOnOff::
	.blkb 4
	.area idata
	.word 0x3f80,0x0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 4
	.area idata
	.word 0x3f80,0x0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 4
	.area idata
	.word 0x3f80,0x0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 4
	.area idata
	.word 0x4000,0x0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 1
	.area idata
	.byte 0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 1
	.area idata
	.byte 3
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 4
	.area idata
	.byte 'O,'F,'F,0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 8
	.area idata
	.byte 0,0,0,0,0,0,0,0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkw 1
	.area idata
	.word _enum_off_on_str
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 2
	.area idata
	.byte 0,0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.dbsym e HeadCCWOnOff _HeadCCWOnOff S[menu_var]
_BlowersOnOff::
	.blkb 4
	.area idata
	.word 0x3f80,0x0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 4
	.area idata
	.word 0x3f80,0x0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 4
	.area idata
	.word 0x3f80,0x0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 4
	.area idata
	.word 0x4000,0x0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 1
	.area idata
	.byte 0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 1
	.area idata
	.byte 3
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 4
	.area idata
	.byte 'O,'F,'F,0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 8
	.area idata
	.byte 0,0,0,0,0,0,0,0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkw 1
	.area idata
	.word _enum_off_on_str
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 2
	.area idata
	.byte 0,0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.dbsym e BlowersOnOff _BlowersOnOff S[menu_var]
_VacuumOnOff::
	.blkb 4
	.area idata
	.word 0x3f80,0x0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 4
	.area idata
	.word 0x3f80,0x0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 4
	.area idata
	.word 0x3f80,0x0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 4
	.area idata
	.word 0x4000,0x0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 1
	.area idata
	.byte 0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 1
	.area idata
	.byte 3
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 4
	.area idata
	.byte 'O,'F,'F,0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 8
	.area idata
	.byte 0,0,0,0,0,0,0,0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkw 1
	.area idata
	.word _enum_off_on_str
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 2
	.area idata
	.byte 0,0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.dbsym e VacuumOnOff _VacuumOnOff S[menu_var]
_SealsOnOff::
	.blkb 4
	.area idata
	.word 0x3f80,0x0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 4
	.area idata
	.word 0x3f80,0x0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 4
	.area idata
	.word 0x3f80,0x0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 4
	.area idata
	.word 0x4000,0x0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 1
	.area idata
	.byte 0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 1
	.area idata
	.byte 3
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 4
	.area idata
	.byte 'O,'F,'F,0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 8
	.area idata
	.byte 0,0,0,0,0,0,0,0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkw 1
	.area idata
	.word _enum_off_on_str
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 2
	.area idata
	.byte 0,0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.dbsym e SealsOnOff _SealsOnOff S[menu_var]
_Pressure::
	.blkb 4
	.area idata
	.word 0x42c8,0x0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 4
	.area idata
	.word 0x3f80,0x0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 4
	.area idata
	.word 0x0,0x0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 4
	.area idata
	.word 0x447a,0x0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 1
	.area idata
	.byte 0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 1
	.area idata
	.byte 4
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 5
	.area idata
	.byte 32,49,48,48,0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 7
	.area idata
	.byte 0,0,0,0,0,0,0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkw 1
	.area idata
	.word _enum_NULL_str
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 2
	.area idata
	.byte 0,0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.dbsym e Pressure _Pressure S[menu_var]
_Rev::
	.blkb 4
	.area idata
	.word 0x3f80,0x0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 4
	.area idata
	.word 0x3f80,0x0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 4
	.area idata
	.word 0x3f80,0x0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 4
	.area idata
	.word 0x4238,0x0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 1
	.area idata
	.byte 0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 1
	.area idata
	.byte 252
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 5
	.area idata
	.byte 51,46,50,53,0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 7
	.area idata
	.byte 0,0,0,0,0,0,0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkw 1
	.area idata
	.word _enum_alpha_str
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 2
	.area idata
	.byte 0,0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.dbsym e Rev _Rev S[menu_var]
	.area memory(abs)
	.org 0xda00
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
_Menuc::
	.byte 0,0
	.byte 0,0
	.byte 32,32,32,'C,'L,'E,'A,'N,'E,'R,45,'V,'A,'C,'U,'U
	.byte 'M,32,32,32,0
	.byte 32,'C,'L,'E,'A,'N,'E,'R,32,32,32,32,32,32,32,32
	.byte 32,32,32,32,0
	.byte 32,'V,'A,'C,'U,'U,'M,32,32,32,32,32,32,32,32,32
	.byte 32,32,32,32,0
	.byte 32,'C,'O,'M,'P,'R,'E,'S,'S,'O,'R,32,32,32,32,32
	.byte 32,32,32,32,0
	.byte 32,'C,'A,'M,'E,'R,'A,32,32,32,32,32,32,32,32,32
	.byte 32,32,32,32,0
	.byte 32,'S,'T,'A,'T,'U,'S,32,32,32,32,32,32,32,32,32
	.byte 32,32,32,32,0
	.byte 32,'M,'A,'C,'H,'I,'N,'E,32,'S,'I,'Z,'E,32,32,32
	.byte 32,32,32,32,0
	.byte 32,'D,'E,'F,'A,'U,'L,'T,'S,32,32,32,32,32,32,32
	.byte 32,32,32,32,0
	.byte 32,'E,'X,'I,'T,32,32,32,32,32,32,32,32,32,32,32
	.byte 32,32,32,32,0
	.byte 32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32
	.byte 32,32,32,32,0
	.byte 32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32
	.byte 32,32,32,32,0
	.byte 32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32
	.byte 32,32,32,32,0
	.byte 15,0
	.byte 0,0
	.byte 0,15
	.byte 0,0
	.byte 0,0
	.byte 0
	.word _NullVar
	.word _NullVar
	.word _NullVar
	.word _NullVar
	.word _NullVar
	.word _MachineSize
	.word _NullVar
	.word _NullVar
	.word _NullVar
	.word _NullVar
	.word _NullVar
	.word _NullFunction
	.word _NullFunction
	.word _NullFunction
	.word _NullFunction
	.word _NullFunction
	.word _StdVarFunction
	.word _NullFunction
	.word _ExitMenu
	.word _NullFunction
	.word _NullFunction
	.word _NullFunction
	.byte 0,0
	.byte 0,1
	.byte 32,32,32,32,32,32,32,'C,'L,'E,'A,'N,'E,'R,32,32
	.byte 32,32,32,32,0
	.byte 32,'S,'E,'T,'T,'I,'N,'G,'S,32,32,32,32,32,32,32
	.byte 32,32,32,32,0
	.byte 32,'S,'E,'T,'T,'I,'N,'G,'S,32,50,32,32,32,32,32
	.byte 32,32,32,32,0
	.byte 32,'D,'I,'A,'G,'N,'O,'S,'T,'I,'C,'S,32,32,32,32
	.byte 32,32,32,32,0
	.byte 32,'E,'X,'I,'T,32,32,32,32,32,32,32,32,32,32,32
	.byte 32,32,32,32,0
	.byte 32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32
	.byte 32,32,32,32,0
	.byte 32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32
	.byte 32,32,32,32,0
	.byte 32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32
	.byte 32,32,32,32,0
	.byte 32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32
	.byte 32,32,32,32,0
	.byte 32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32
	.byte 32,32,32,32,0
	.byte 32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32
	.byte 32,32,32,32,0
	.byte 32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32
	.byte 32,32,32,32,0
	.byte 0,0
	.byte 0,0
	.byte 0,0
	.byte 0,0
	.byte 0,0
	.byte 0
	.word _NullVar
	.word _NullVar
	.word _NullVar
	.word _NullVar
	.word _NullVar
	.word _NullVar
	.word _NullVar
	.word _NullVar
	.word _NullVar
	.word _NullVar
	.word _NullVar
	.word _NullFunction
	.word _NullFunction
	.word _NullFunction
	.word _ExitMenu
	.word _NullFunction
	.word _NullFunction
	.word _NullFunction
	.word _NullFunction
	.word _NullFunction
	.word _NullFunction
	.word _NullFunction
	.byte 0,0
	.byte 1,1
	.byte 32,32,'C,'L,'E,'A,'N,'E,'R,32,'S,'E,'T,'T,'I,'N
	.byte 'G,'S,32,32,0
	.byte 32,'C,'E,'N,'T,'E,'R,32,'S,'T,'R,'O,'K,'E,'S,32
	.byte 32,32,32,32,0
	.byte 32,'F,'U,'L,'L,32,'S,'T,'R,'O,'K,'E,'S,32,32,32
	.byte 32,32,32,32,0
	.byte 32,'C,'E,'N,'T,'E,'R,32,'D,'I,'S,'T,32,32,32,32
	.byte 32,32,32,32,0
	.byte 32,'F,'U,'L,'L,32,'D,'I,'S,'T,32,32,32,32,32,32
	.byte 32,32,32,32,0
	.byte 32,'L,'A,32,'C,'E,'N,'T,'E,'R,32,32,32,32,32,32
	.byte 32,32,32,32,0
	.byte 32,'L,'A,32,'S,'P,'E,'E,'D,32,32,32,32,32,32,32
	.byte 32,32,32,32,0
	.byte 32,'L,'I,'N,'E,45,'U,'P,32,'D,'I,'S,'T,32,32,32
	.byte 32,32,32,32,0
	.byte 32,'S,'E,'A,'L,32,'T,'I,'M,'E,32,32,32,32,32,32
	.byte 32,32,32,32,0
	.byte 32,'T,'E,'S,'T,32,'M,'O,'D,'E,32,32,32,32,32,32
	.byte 32,32,32,32,0
	.byte 32,'L,'A,32,'S,'W,'I,'T,'C,'H,32,32,32,32,32,32
	.byte 32,32,32,32,0
	.byte 32,'E,'X,'I,'T,32,32,32,32,32,32,32,32,32,32,32
	.byte 32,32,32,32,0
	.byte 18,18
	.byte 16,16
	.byte 16,17
	.byte 15,18
	.byte 17,17
	.byte 0
	.word _CntrStrokes
	.word _FullStrokes
	.word _CntrDist
	.word _FullDist
	.word _LACntr
	.word _LASpeed
	.word _LineUpDist
	.word _SealTime
	.word _TestModeOnOff
	.word _laSwitchPol
	.word _NullVar
	.word _StdVarFunction
	.word _StdVarFunction
	.word _StdVarFunction
	.word _StdVarFunction
	.word _StdVarFunction
	.word _StdVarFunction
	.word _StdVarFunction
	.word _StdVarFunction
	.word _StdVarFunction
	.word _StdVarFunction
	.word _ExitMenu
	.byte 0,0
	.byte 1,2
	.byte 32,32,32,32,32,'S,'E,'T,'T,'I,'N,'G,'S,32,50,32
	.byte 32,32,32,32,0
	.byte 32,'S,'E,'L,32,'T,'R,'I,'G,32,'C,'A,'M,32,32,32
	.byte 32,32,32,32,0
	.byte 32,'L,'I,'N,'E,32,'U,'P,32,'O,'N,32,32,32,32,32
	.byte 32,32,32,32,0
	.byte 32,'L,'I,'N,'E,'U,'P,32,'T,'I,'M,'E,'R,32,32,32
	.byte 32,32,32,32,0
	.byte 32,'L,'I,'N,'E,'U,'P,32,'S,'P,'E,'E,'D,32,32,32
	.byte 32,32,32,32,0
	.byte 32,'E,'X,'I,'T,32,32,32,32,32,32,32,32,32,32,32
	.byte 32,32,32,32,0
	.byte 32,32,32,32,32,32,'W,'A,'R,'N,'I,'N,'G,32,32,32
	.byte 32,32,32,32,0
	.byte 'T,'H,'E,32,'C,'U,'R,'R,'E,'N,'T,32,'C,'A,'M,'E
	.byte 'R,'A,32,32,0
	.byte 'W,'I,'L,'L,32,'B,'E,32,'S,'E,'L,'E,'C,'T,'E,'D
	.byte 32,'A,'S,32,0
	.byte 'T,'H,'E,32,'T,'R,'I,'G,'G,'E,'R,32,'C,'A,'M,'E
	.byte 'R,'A,32,32,0
	.byte 32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32
	.byte 32,32,32,32,0
	.byte 32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32
	.byte 32,32,32,32,0
	.byte 0,16
	.byte 16,15
	.byte 0,0
	.byte 0,0
	.byte 0,0
	.byte 0
	.word _NullVar
	.word _LineUpClnVac
	.word _LineupTimeOnOff
	.word _LineupSpeed
	.word _NullVar
	.word _NullVar
	.word _NullVar
	.word _NullVar
	.word _NullVar
	.word _NullVar
	.word _NullVar
	.word _GetTrigCam
	.word _StdVarFunction
	.word _StdVarFunction
	.word _StdVarFunction
	.word _ExitMenu
	.word _NullFunction
	.word _NullFunction
	.word _NullFunction
	.word _NullFunction
	.word _NullFunction
	.word _NullFunction
	.byte 0,0
	.byte 1,3
	.byte 32,'C,'L,'E,'A,'N,'E,'R,32,'D,'I,'A,'G,'N,'O,'S
	.byte 'T,'I,'C,'S,0
	.byte 32,'R,'E,'T,'R,'A,'C,'T,32,'L,'A,32,32,32,32,32
	.byte 32,32,32,32,0
	.byte 32,'C,'E,'N,'T,'E,'R,32,'L,'A,32,32,32,32,32,32
	.byte 32,32,32,32,0
	.byte 32,'E,'X,'T,'E,'N,'D,32,'L,'A,32,32,32,32,32,32
	.byte 32,32,32,32,0
	.byte 32,'H,'E,'A,'D,32,'C,'W,32,32,32,32,32,32,32,32
	.byte 32,32,32,32,0
	.byte 32,'H,'E,'A,'D,32,'C,'C,'W,32,32,32,32,32,32,32
	.byte 32,32,32,32,0
	.byte 32,'S,'E,'A,'L,'S,32,32,32,32,32,32,32,32,32,32
	.byte 32,32,32,32,0
	.byte 32,'G,'R,'I,'T,32,32,32,32,32,32,32,32,32,32,32
	.byte 32,32,32,32,0
	.byte 32,'V,'A,'C,'U,'U,'M,32,32,32,32,32,32,32,32,32
	.byte 32,32,32,32,0
	.byte 32,'E,'X,'I,'T,32,32,32,32,32,32,32,32,32,32,32
	.byte 32,32,32,32,0
	.byte 32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32
	.byte 32,32,32,32,0
	.byte 32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32
	.byte 32,32,32,32,0
	.byte 0,0
	.byte 0,16
	.byte 16,16
	.byte 16,16
	.byte 0,0
	.byte 0
	.word _NullVar
	.word _NullVar
	.word _NullVar
	.word _HeadCWOnOff
	.word _HeadCCWOnOff
	.word _SealsOnOff
	.word _BlowersOnOff
	.word _VacuumOnOff
	.word _NullVar
	.word _NullVar
	.word _NullVar
	.word _RetractLA
	.word _CenterLA
	.word _ExtendLA
	.word _StdVarFunction
	.word _StdVarFunction
	.word _StdVarFunction
	.word _StdVarFunction
	.word _StdVarFunction
	.word _ExitMenu
	.word _NullFunction
	.word _NullFunction
	.byte 0,0
	.byte 0,2
	.byte 32,32,32,32,32,32,32,'V,'A,'C,'U,'U,'M,32,32,32
	.byte 32,32,32,32,0
	.byte 32,'S,'E,'T,'T,'I,'N,'G,'S,32,32,32,32,32,32,32
	.byte 32,32,32,32,0
	.byte 32,'D,'I,'A,'G,'N,'O,'S,'T,'I,'C,'S,32,32,32,32
	.byte 32,32,32,32,0
	.byte 32,'E,'X,'I,'T,32,32,32,32,32,32,32,32,32,32,32
	.byte 32,32,32,32,0
	.byte 32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32
	.byte 32,32,32,32,0
	.byte 32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32
	.byte 32,32,32,32,0
	.byte 32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32
	.byte 32,32,32,32,0
	.byte 32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32
	.byte 32,32,32,32,0
	.byte 32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32
	.byte 32,32,32,32,0
	.byte 32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32
	.byte 32,32,32,32,0
	.byte 32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32
	.byte 32,32,32,32,0
	.byte 32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32
	.byte 32,32,32,32,0
	.byte 0,0
	.byte 0,0
	.byte 0,0
	.byte 0,0
	.byte 0,0
	.byte 0
	.word _NullVar
	.word _NullVar
	.word _NullVar
	.word _NullVar
	.word _NullVar
	.word _NullVar
	.word _NullVar
	.word _NullVar
	.word _NullVar
	.word _NullVar
	.word _NullVar
	.word _NullFunction
	.word _NullFunction
	.word _ExitMenu
	.word _NullFunction
	.word _NullFunction
	.word _NullFunction
	.word _NullFunction
	.word _NullFunction
	.word _NullFunction
	.word _NullFunction
	.word _NullFunction
	.byte 0,0
	.byte 2,1
	.byte 32,32,32,'V,'A,'C,'U,'U,'M,32,'S,'E,'T,'T,'I,'N
	.byte 'G,'S,32,32,0
	.byte 32,49,'S,'T,32,'V,'A,'C,32,'D,'I,'S,'T,32,32,32
	.byte 32,32,32,32,0
	.byte 32,50,'N,'D,32,'V,'A,'C,32,'D,'I,'S,'T,32,32,32
	.byte 32,32,32,32,0
	.byte 32,51,'R,'D,32,'V,'A,'C,32,'D,'I,'S,'T,32,32,32
	.byte 32,32,32,32,0
	.byte 32,52,'T,'H,32,'V,'A,'C,32,'D,'I,'S,'T,32,32,32
	.byte 32,32,32,32,0
	.byte 32,53,'T,'H,32,'V,'A,'C,32,'D,'I,'S,'T,32,32,32
	.byte 32,32,32,32,0
	.byte 32,49,'S,'T,32,'V,'A,'C,32,'S,'P,'E,'E,'D,32,32
	.byte 32,32,32,32,0
	.byte 32,50,'N,'D,32,'V,'A,'C,32,'S,'P,'E,'E,'D,32,32
	.byte 32,32,32,32,0
	.byte 32,51,'R,'D,32,'V,'A,'C,32,'S,'P,'E,'E,'D,32,32
	.byte 32,32,32,32,0
	.byte 32,52,'T,'H,32,'V,'A,'C,32,'S,'P,'E,'E,'D,32,32
	.byte 32,32,32,32,0
	.byte 32,53,'T,'H,32,'V,'A,'C,32,'S,'P,'E,'E,'D,32,32
	.byte 32,32,32,32,0
	.byte 32,'E,'X,'I,'T,32,32,32,32,32,32,32,32,32,32,32
	.byte 32,32,32,32,0
	.byte 17,17
	.byte 17,17
	.byte 17,15
	.byte 15,15
	.byte 15,15
	.byte 0
	.word _VacDist1
	.word _VacDist2
	.word _VacDist3
	.word _VacDist4
	.word _VacDist5
	.word _VacSpeed1
	.word _VacSpeed2
	.word _VacSpeed3
	.word _VacSpeed4
	.word _VacSpeed5
	.word _NullVar
	.word _StdVarFunction
	.word _StdVarFunction
	.word _StdVarFunction
	.word _StdVarFunction
	.word _StdVarFunction
	.word _StdVarFunction
	.word _StdVarFunction
	.word _StdVarFunction
	.word _StdVarFunction
	.word _StdVarFunction
	.word _ExitMenu
	.byte 0,0
	.byte 2,2
	.byte 32,'V,'A,'C,'U,'U,'M,32,'D,'I,'A,'G,'N,'O,'S,'T
	.byte 'I,'C,'S,32,0
	.byte 32,'G,'R,'I,'T,32,32,32,32,32,32,32,32,32,32,32
	.byte 32,32,32,32,0
	.byte 32,'V,'A,'C,'U,'U,'M,32,32,32,32,32,32,32,32,32
	.byte 32,32,32,32,0
	.byte 32,'E,'X,'I,'T,32,32,32,32,32,32,32,32,32,32,32
	.byte 32,32,32,32,0
	.byte 32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32
	.byte 32,32,32,32,0
	.byte 32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32
	.byte 32,32,32,32,0
	.byte 32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32
	.byte 32,32,32,32,0
	.byte 32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32
	.byte 32,32,32,32,0
	.byte 32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32
	.byte 32,32,32,32,0
	.byte 32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32
	.byte 32,32,32,32,0
	.byte 32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32
	.byte 32,32,32,32,0
	.byte 32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32
	.byte 32,32,32,32,0
	.byte 16,16
	.byte 0,0
	.byte 0,0
	.byte 0,0
	.byte 0,0
	.byte 0
	.word _BlowersOnOff
	.word _VacuumOnOff
	.word _NullVar
	.word _NullVar
	.word _NullVar
	.word _NullVar
	.word _NullVar
	.word _NullVar
	.word _NullVar
	.word _NullVar
	.word _NullVar
	.word _StdVarFunction
	.word _StdVarFunction
	.word _ExitMenu
	.word _NullFunction
	.word _NullFunction
	.word _NullFunction
	.word _NullFunction
	.word _NullFunction
	.word _NullFunction
	.word _NullFunction
	.word _NullFunction
	.byte 0,0
	.byte 0,3
	.byte 32,32,32,32,32,'C,'O,'M,'P,'R,'E,'S,'S,'O,'R,32
	.byte 32,32,32,32,0
	.byte 32,'S,'E,'T,'T,'I,'N,'G,'S,32,32,32,32,32,32,32
	.byte 32,32,32,32,0
	.byte 32,'D,'I,'A,'G,'N,'O,'S,'T,'I,'C,'S,32,32,32,32
	.byte 32,32,32,32,0
	.byte 32,'E,'X,'I,'T,32,32,32,32,32,32,32,32,32,32,32
	.byte 32,32,32,32,0
	.byte 32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32
	.byte 32,32,32,32,0
	.byte 32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32
	.byte 32,32,32,32,0
	.byte 32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32
	.byte 32,32,32,32,0
	.byte 32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32
	.byte 32,32,32,32,0
	.byte 32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32
	.byte 32,32,32,32,0
	.byte 32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32
	.byte 32,32,32,32,0
	.byte 32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32
	.byte 32,32,32,32,0
	.byte 32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32
	.byte 32,32,32,32,0
	.byte 0,0
	.byte 0,0
	.byte 0,0
	.byte 0,0
	.byte 0,0
	.byte 0
	.word _NullVar
	.word _NullVar
	.word _NullVar
	.word _NullVar
	.word _NullVar
	.word _NullVar
	.word _NullVar
	.word _NullVar
	.word _NullVar
	.word _NullVar
	.word _NullVar
	.word _NullFunction
	.word _NullFunction
	.word _ExitMenu
	.word _NullFunction
	.word _NullFunction
	.word _NullFunction
	.word _NullFunction
	.word _NullFunction
	.word _NullFunction
	.word _NullFunction
	.word _NullFunction
	.byte 0,0
	.byte 3,1
	.byte 32,'C,'O,'M,'P,'R,'E,'S,'S,'O,'R,32,'S,'E,'T,'T
	.byte 'I,'N,'G,'S,0
	.byte 32,'C,'O,'M,'P,'R,'E,'S,'S,'O,'R,32,32,32,32,32
	.byte 32,32,32,32,0
	.byte 32,'L,'O,'W,32,'S,'E,'T,32,'P,'O,'I,'N,'T,32,32
	.byte 32,32,32,32,0
	.byte 32,'H,'I,'G,'H,32,'S,'E,'T,32,'P,'O,'I,'N,'T,32
	.byte 32,32,32,32,0
	.byte 32,'P,'R,'E,'S,'S,'U,'R,'E,32,32,32,32,32,32,32
	.byte 32,32,32,32,0
	.byte 32,'E,'X,'I,'T,32,32,32,32,32,32,32,32,32,32,32
	.byte 32,32,32,32,0
	.byte 32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32
	.byte 32,32,32,32,0
	.byte 32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32
	.byte 32,32,32,32,0
	.byte 32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32
	.byte 32,32,32,32,0
	.byte 32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32
	.byte 32,32,32,32,0
	.byte 32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32
	.byte 32,32,32,32,0
	.byte 32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32
	.byte 32,32,32,32,0
	.byte 17,18
	.byte 17,16
	.byte 0,0
	.byte 0,0
	.byte 0,0
	.byte 0
	.word _CompressorOnOff
	.word _LowSetPoint
	.word _HighSetPoint
	.word _Pressure
	.word _NullVar
	.word _NullVar
	.word _NullVar
	.word _NullVar
	.word _NullVar
	.word _NullVar
	.word _NullVar
	.word _StdVarFunction
	.word _StdVarFunction
	.word _StdVarFunction
	.word _NullFunction
	.word _ExitMenu
	.word _NullFunction
	.word _NullFunction
	.word _NullFunction
	.word _NullFunction
	.word _NullFunction
	.word _NullFunction
	.byte 0,0
	.byte 3,2
	.byte 32,32,32,'C,'O,'M,'P,'R,'E,'S,'S,'O,'R,32,'D,'I
	.byte 'A,'G,32,32,0
	.byte 32,'S,'E,'A,'L,'S,32,32,32,32,32,32,32,32,32,32
	.byte 32,32,32,32,0
	.byte 32,'E,'X,'I,'T,32,32,32,32,32,32,32,32,32,32,32
	.byte 32,32,32,32,0
	.byte 32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32
	.byte 32,32,32,32,0
	.byte 32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32
	.byte 32,32,32,32,0
	.byte 32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32
	.byte 32,32,32,32,0
	.byte 32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32
	.byte 32,32,32,32,0
	.byte 32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32
	.byte 32,32,32,32,0
	.byte 32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32
	.byte 32,32,32,32,0
	.byte 32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32
	.byte 32,32,32,32,0
	.byte 32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32
	.byte 32,32,32,32,0
	.byte 32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32
	.byte 32,32,32,32,0
	.byte 16,0
	.byte 0,0
	.byte 0,0
	.byte 0,0
	.byte 0,0
	.byte 0
	.word _SealsOnOff
	.word _NullVar
	.word _NullVar
	.word _NullVar
	.word _NullVar
	.word _NullVar
	.word _NullVar
	.word _NullVar
	.word _NullVar
	.word _NullVar
	.word _NullVar
	.word _StdVarFunction
	.word _ExitMenu
	.word _NullFunction
	.word _NullFunction
	.word _NullFunction
	.word _NullFunction
	.word _NullFunction
	.word _NullFunction
	.word _NullFunction
	.word _NullFunction
	.word _NullFunction
	.byte 0,0
	.byte 0,4
	.byte 32,32,32,32,32,32,32,'C,'A,'M,'E,'R,'A,32,32,32
	.byte 32,32,32,32,0
	.byte 32,'S,'E,'T,'T,'I,'N,'G,'S,32,32,32,32,32,32,32
	.byte 32,32,32,32,0
	.byte 32,'D,'I,'A,'G,'N,'O,'S,'T,'I,'C,'S,32,32,32,32
	.byte 32,32,32,32,0
	.byte 32,'S,'T,'A,'T,'U,'S,32,32,32,32,32,32,32,32,32
	.byte 32,32,32,32,0
	.byte 32,'E,'X,'I,'T,32,32,32,32,32,32,32,32,32,32,32
	.byte 32,32,32,32,0
	.byte 32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32
	.byte 32,32,32,32,0
	.byte 32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32
	.byte 32,32,32,32,0
	.byte 32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32
	.byte 32,32,32,32,0
	.byte 32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32
	.byte 32,32,32,32,0
	.byte 32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32
	.byte 32,32,32,32,0
	.byte 32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32
	.byte 32,32,32,32,0
	.byte 32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32
	.byte 32,32,32,32,0
	.byte 0,0
	.byte 0,0
	.byte 0,0
	.byte 0,0
	.byte 0,0
	.byte 0
	.word _NullVar
	.word _NullVar
	.word _NullVar
	.word _NullVar
	.word _NullVar
	.word _NullVar
	.word _NullVar
	.word _NullVar
	.word _NullVar
	.word _NullVar
	.word _NullVar
	.word _NullFunction
	.word _NullFunction
	.word _NullFunction
	.word _ExitMenu
	.word _NullFunction
	.word _NullFunction
	.word _NullFunction
	.word _NullFunction
	.word _NullFunction
	.word _NullFunction
	.word _NullFunction
	.byte 0,0
	.byte 4,1
	.byte 32,32,32,'C,'A,'M,'E,'R,'A,32,'S,'E,'T,'T,'I,'N
	.byte 'G,'S,32,32,0
	.byte 32,'L,'I,'G,'H,'T,'I,'N,'G,32,32,32,32,32,32,32
	.byte 32,32,32,32,0
	.byte 32,'Z,'O,'O,'M,32,'S,'P,'E,'E,'D,32,32,32,32,32
	.byte 32,32,32,32,0
	.byte 32,'F,'O,'C,'U,'S,32,'S,'P,'E,'E,'D,32,32,32,32
	.byte 32,32,32,32,0
	.byte 32,'F,'I,'L,'M,32,'A,'D,'V,'A,'N,'C,'E,32,32,32
	.byte 32,32,32,32,0
	.byte 32,'T,'A,'G,32,32,32,32,32,32,32,32,32,32,32,32
	.byte 32,32,32,32,0
	.byte 32,'E,'X,'I,'T,32,32,32,32,32,32,32,32,32,32,32
	.byte 32,32,32,32,0
	.byte 32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32
	.byte 32,32,32,32,0
	.byte 32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32
	.byte 32,32,32,32,0
	.byte 32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32
	.byte 32,32,32,32,0
	.byte 32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32
	.byte 32,32,32,32,0
	.byte 32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32
	.byte 32,32,32,32,0
	.byte 16,16
	.byte 16,18
	.byte 8,0
	.byte 0,0
	.byte 0,0
	.byte 0
	.word _LightLevel
	.word _ZoomSpeed
	.word _FocusSpeed
	.word _AdvanceTime
	.word _CamTag
	.word _NullVar
	.word _NullVar
	.word _NullVar
	.word _NullVar
	.word _NullVar
	.word _NullVar
	.word _StdVarFunction
	.word _StdVarFunction
	.word _StdVarFunction
	.word _StdVarFunction
	.word _StdVarFunction
	.word _ExitMenu
	.word _NullFunction
	.word _NullFunction
	.word _NullFunction
	.word _NullFunction
	.word _NullFunction
	.byte 0,0
	.byte 4,2
	.byte 32,'C,'A,'M,'E,'R,'A,32,'D,'I,'A,'G,'N,'O,'S,'T
	.byte 'I,'C,'S,32,0
	.byte 32,'A,'D,'V,'A,'N,'C,'E,32,'F,'I,'L,'M,32,32,32
	.byte 32,32,32,32,0
	.byte 32,'Z,'O,'O,'M,32,'I,'N,32,32,32,32,32,32,32,32
	.byte 32,32,32,32,0
	.byte 32,'Z,'O,'O,'M,32,'O,'U,'T,32,32,32,32,32,32,32
	.byte 32,32,32,32,0
	.byte 32,'F,'O,'C,'U,'S,32,'F,'A,'R,32,32,32,32,32,32
	.byte 32,32,32,32,0
	.byte 32,'F,'O,'C,'U,'S,32,'N,'E,'A,'R,32,32,32,32,32
	.byte 32,32,32,32,0
	.byte 32,'E,'X,'I,'T,32,32,32,32,32,32,32,32,32,32,32
	.byte 32,32,32,32,0
	.byte 32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32
	.byte 32,32,32,32,0
	.byte 32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32
	.byte 32,32,32,32,0
	.byte 32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32
	.byte 32,32,32,32,0
	.byte 32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32
	.byte 32,32,32,32,0
	.byte 32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32
	.byte 32,32,32,32,0
	.byte 0,0
	.byte 0,0
	.byte 0,0
	.byte 0,0
	.byte 0,0
	.byte 0
	.word _NullVar
	.word _NullVar
	.word _NullVar
	.word _NullVar
	.word _NullVar
	.word _NullVar
	.word _NullVar
	.word _NullVar
	.word _NullVar
	.word _NullVar
	.word _NullVar
	.word _Advance
	.word _ZoomInFunct
	.word _ZoomOutFunct
	.word _FocusFarFunct
	.word _FocusNearFunct
	.word _ExitMenu
	.word _NullFunction
	.word _NullFunction
	.word _NullFunction
	.word _NullFunction
	.word _NullFunction
	.byte 0,0
	.byte 4,3
	.byte 32,32,32,32,32,'S,'T,'A,'T,'U,'S,32,'M,'E,'N,'U
	.byte 32,32,32,32,0
	.byte 32,'S,'O,'F,'T,'W,'A,'R,'E,32,'R,'E,'V,32,32,32
	.byte 32,32,32,32,0
	.byte 32,'C,'A,'M,'E,'R,'A,32,'I,'D,32,32,32,32,32,32
	.byte 32,32,32,32,0
	.byte 32,'S,'E,'R,'I,'A,'L,32,'N,'U,'M,32,32,32,32,32
	.byte 32,32,32,32,0
	.byte 32,'E,'X,'I,'T,32,32,32,32,32,32,32,32,32,32,32
	.byte 32,32,32,32,0
	.byte 32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32
	.byte 32,32,32,32,0
	.byte 32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32
	.byte 32,32,32,32,0
	.byte 32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32
	.byte 32,32,32,32,0
	.byte 32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32
	.byte 32,32,32,32,0
	.byte 32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32
	.byte 32,32,32,32,0
	.byte 32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32
	.byte 32,32,32,32,0
	.byte 32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32
	.byte 32,32,32,32,0
	.byte 15,15
	.byte 13,0
	.byte 0,0
	.byte 0,0
	.byte 0,0
	.byte 0
	.word _Rev
	.word _disp_add
	.word _SerialNum
	.word _NullVar
	.word _NullVar
	.word _NullVar
	.word _NullVar
	.word _NullVar
	.word _NullVar
	.word _NullVar
	.word _NullVar
	.word _NullFunction
	.word _NullFunction
	.word _NullFunction
	.word _ExitMenu
	.word _NullFunction
	.word _NullFunction
	.word _NullFunction
	.word _NullFunction
	.word _NullFunction
	.word _NullFunction
	.word _NullFunction
	.byte 0,0
	.byte 0,5
	.byte 32,32,32,32,32,'S,'T,'A,'T,'U,'S,32,'M,'E,'N,'U
	.byte 32,32,32,32,0
	.byte 32,'S,'O,'F,'T,'W,'A,'R,'E,32,'R,'E,'V,32,32,32
	.byte 32,32,32,32,0
	.byte 32,'P,'R,'E,'S,'S,'U,'R,'E,32,32,32,32,32,32,32
	.byte 32,32,32,32,0
	.byte 32,'C,'A,'M,'E,'R,'A,32,'I,'D,32,32,32,32,32,32
	.byte 32,32,32,32,0
	.byte 32,'S,'E,'R,'I,'A,'L,32,'N,'U,'M,32,32,32,32,32
	.byte 32,32,32,32,0
	.byte 32,'E,'X,'I,'T,32,32,32,32,32,32,32,32,32,32,32
	.byte 32,32,32,32,0
	.byte 32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32
	.byte 32,32,32,32,0
	.byte 32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32
	.byte 32,32,32,32,0
	.byte 32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32
	.byte 32,32,32,32,0
	.byte 32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32
	.byte 32,32,32,32,0
	.byte 32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32
	.byte 32,32,32,32,0
	.byte 32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32
	.byte 32,32,32,32,0
	.byte 15,15
	.byte 15,13
	.byte 0,0
	.byte 0,0
	.byte 0,0
	.byte 0
	.word _Rev
	.word _Pressure
	.word _disp_add
	.word _SerialNum
	.word _NullVar
	.word _NullVar
	.word _NullVar
	.word _NullVar
	.word _NullVar
	.word _NullVar
	.word _NullVar
	.word _NullFunction
	.word _NullFunction
	.word _NullFunction
	.word _StdVarFunction
	.word _ExitMenu
	.word _NullFunction
	.word _NullFunction
	.word _NullFunction
	.word _NullFunction
	.word _NullFunction
	.word _NullFunction
	.byte 0,0
	.byte 0,7
	.byte 32,32,32,32,32,'D,'E,'F,'A,'U,'L,'T,'S,32,32,32
	.byte 32,32,32,32,0
	.byte 32,'E,'X,'I,'T,32,32,32,32,32,32,32,32,32,32,32
	.byte 32,32,32,32,0
	.byte 32,'R,'E,'S,'T,'O,'R,'E,32,'D,'E,'F,'A,'U,'L,'T
	.byte 'S,32,32,32,0
	.byte 32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32
	.byte 32,32,32,32,0
	.byte 32,32,32,32,32,32,'W,'A,'R,'N,'I,'N,'G,32,32,32
	.byte 32,32,32,32,0
	.byte 'Y,'O,'U,32,'W,'I,'L,'L,32,'L,'O,'S,'E,32,'A,'L
	.byte 'L,32,32,32,0
	.byte 'O,'F,32,'T,'H,'E,32,'C,'U,'R,'R,'E,'N,'T,32,32
	.byte 32,32,32,32,0
	.byte 'S,'E,'T,'T,'I,'N,'G,'S,32,'W,'H,'E,'N,32,32,32
	.byte 32,32,32,32,0
	.byte 'R,'E,'S,'T,'O,'R,'I,'N,'G,32,'D,'E,'F,'A,'U,'L
	.byte 'T,'S,32,32,0
	.byte 32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32
	.byte 32,32,32,32,0
	.byte 32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32
	.byte 32,32,32,32,0
	.byte 32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32
	.byte 32,32,32,32,0
	.byte 0,0
	.byte 0,0
	.byte 0,0
	.byte 0,0
	.byte 0,0
	.byte 0
	.word _NullVar
	.word _NullVar
	.word _NullVar
	.word _NullVar
	.word _NullVar
	.word _NullVar
	.word _NullVar
	.word _NullVar
	.word _NullVar
	.word _NullVar
	.word _NullVar
	.word _ExitMenu
	.word _RestoreDefaults
	.word _NullFunction
	.word _NullFunction
	.word _NullFunction
	.word _NullFunction
	.word _NullFunction
	.word _NullFunction
	.word _NullFunction
	.word _NullFunction
	.word _NullFunction
	.dbstruct 0 311 MenuStruct
	.dbfield 0 Index A[4:4]c
	.dbfield 4 Entry A[252:12:21]c
	.dbfield 256 Pos A[11:11]c
	.dbfield 267 VarPntr A[22:11]pS[menu_var]
	.dbfield 289 FunctPtr A[22:11]pfI
	.dbend
	.dbsym e Menuc _Menuc A[5287:17]S[MenuStruct]
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
_MenuStackc::
	.blkb 2
	.area idata
	.byte 0,0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 2
	.area idata
	.byte 0,0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 1
	.area idata
	.byte 1
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 1
	.area idata
	.byte 0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.blkb 24
	.area idata
	.word 0,0,0,0,0
	.word 0,0,0,0,0
	.byte 0,0,0,0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.dbstruct 0 6 MenuStack
	.dbfield 0 Index A[4:4]c
	.dbfield 4 CursorPos c
	.dbfield 5 FirstLine c
	.dbend
	.dbsym e MenuStackc _MenuStackc A[30:5]S[MenuStack]
_StackPointer::
	.blkb 1
	.area idata
	.byte 0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.dbsym e StackPointer _StackPointer c
_VariableFlag::
	.blkb 1
	.area idata
	.byte 0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.dbsym e VariableFlag _VariableFlag c
	.area extcode(paged)
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.dbfunc e InitPorts _InitPorts fV
$_InitPorts::
	.dbline -1
	.dbline 996
; #include <stdio.h>
; #include <string.h>
; #include <stdlib.h>
; 
; #include "Subroutines.h"
; #include "mc9s12a128.h"
; #include "Interrupts.h"
; #include "mcohw.h"
; #include "EEProm.h"
; #include "string.h"
; #include "PID.h"
; 
; char save_serial_flag;
; extern char Gen_Flags;
; 
; extern char SIN0Buf[SIN0BufLen];
; extern int SIN0Bufptr;
; extern char SOUT0Buf[SOUT0BufLen];
; extern int SOUT0Bufptr;
; 
; extern char SIN1Buf[SIN1BufLen];
; extern int SIN1Bufptr;
; extern char SOUT1Buf[SOUT1BufLen];
; extern int SOUT1Bufptr;
; 
; unsigned cam_add;
; unsigned ran_num = 0;  //used to create unique camera address  
; 
; extern unsigned int TC0_RCVD_Data;
; 
; extern CAN_MSG gTxNMT;
; 
; CAN_MSG gTxMsg;
; 
; extern unsigned int Timer1;
; extern unsigned int Timer2;
; extern int Update_Menu_Timer;
; extern unsigned int CompressorTimer;
; extern unsigned int FocusZoomTimer;
; extern unsigned int AdvanceTimer;
; extern unsigned int LA_Wait_Timer;
; extern int updatePressureTimer;	 //limit frequency of updates to menu
; extern unsigned int SequenceTimer;
; extern unsigned int HdOffTimer;
; extern unsigned long LineupTimer;
; extern unsigned long LineupTimeCapture;
; 
; char UpdateMenu;
; char cursor_row;    //row position of cursor, zero is at top of display
; extern char InProcess;
; extern char AcceptKeys;
; 
; extern unsigned int MenuTimer;
; 
; extern unsigned char StoreFlag;
; 
; float margin=0.02;
; char done=1;
; int desired_position=0;
; int next_desired_position=0;
; int prev_desired_position=0;  //this needs to initially be some invalid position, so the actuator can move to 0
; extern int LA_position;
; extern int prevLA_position;
; extern char phase;
; extern char prev_phase;
; extern char resolver;
; signed char start_sequence=1;
; int desired_speed=0;
; int next_desired_speed=0;
; extern signed char direction;
; char extend_test=0;
; char retract_test=0;
; char LA_Moving=0;
; int Move_Position=-1;
; int Move_Speed=0;
; char LA_Moved = 0;
; 
; int CStrks;
; int	FStrks;
; int	CDist;
; int	FDist;
; int	Cntr;
; 
; signed char HeadRampCW=0;
; signed char HeadRampCCW=0;
; int HeadSpeed;
; 
; char State = FinishState;
; extern unsigned long  StateTime;
; char HdDirection;
; 
; extern unsigned int PID_Timer;
; extern long LA_speed;
; 
; char FractionFlag;
; char compTimedOutflag = 0;
; 
; char Variable_flag;
; char String_Var_ptr;
; char Multi_Var_ptr;
; extern char CursorUpFlag;
; extern char CursorDownFlag;
; extern char SelectFlag;
; char PressureMsgSent;
; char CamAddressXmitd;
; 
; unsigned char ActCam4;
; unsigned char ActCam5;
; 
; 
; char laSwitch;
; 
; extern char fast_inc;
; extern unsigned int IncSpeedUpTimer;
; extern char LAspd;
; 
; char PB1_PWM, PB3_PWM;
; 
; unsigned char Use_IN_digi_15=0;
; 
; const char enum_NULL_str[]="";
; const char enum_off_on_str[]="OFF, ON";
; const char enum_cln_vac_str[]="CLN,VAC";
; const char enum_pos_neg_str[]="POS,NEG";
; const char enum_slow_fast_str[]="EXSLW, SLOW, FAST";
; const char enum_stop_retract_str[]="   STOP, EXTEND,RETRACT";
; const char enum_base_iso_str[]="BASE, ISO, OFF";
; const char enum_lin_act_str[]="CLEANER,LIN ACT";
; const char enum_machinesize_str[]="08-10,12-22,24-34,36-48";
; const char enum_alpha_str[]=" ,A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z,0,1,2,3,4,5,6,7,8,9,.,<,>,;,:,@,(,),-,-"; //last char is the cursor char, do not count for max
; const char enum_number_str[]="0,1,2,3,4,5,6,7,8,9,-";  //last char is the cursor char, do not count for max
; 
; 
; //The following Menu Variables are saved in EEPROM
; 
; struct menu_var  CompressorOnOff = {
; 	   2,1,1,2,0,3," ON",enum_off_on_str
; };
;  
; struct menu_var  CntrStrokes = {
; 	   6,1,0,20,0,2," 6",enum_NULL_str
; };
; 
; struct menu_var  FullStrokes = {
; 	   6,1,0,20,0,2," 6",enum_NULL_str
; };
; 
; struct menu_var  CntrDist = {
; 	   4.0,0.1,1.0,20.0,1,4," 4.0",enum_NULL_str
; };
; 
; struct menu_var  FullDist = {
; 	   8.0,0.1,1.0,20.0,1,4," 8.0",enum_NULL_str
; };
; 
; struct menu_var  LACntr = {
; 	   4.0,0.1,1.0,20.0,1,4," 4.0",enum_NULL_str
; };
; 
; struct menu_var  LASpeed = {
; 	   100,1,25,100,0,3,"100",enum_NULL_str
; };
; 
; struct menu_var  LineUpDist = {
; 	   75.0,0.1,0.0,300.0,1,5," 75.0",enum_NULL_str
; };
; 
; struct menu_var  LineupSpeed = {
; 	   0.66,0.01,0.25,0.90,2,4,"0.66",enum_NULL_str
; };
; 
; struct menu_var  SealTime = {
; 	   10,1,0,20,0,2,"10",enum_NULL_str
; };
; 
; struct menu_var TestModeOnOff = {
; 	   1,1,1,2,0,3,"OFF",enum_off_on_str
; };
; 
; struct menu_var  LineUpClnVac = { //TrigVacOnOff
; 	   1,1,1,2,0,3,"CLN",enum_cln_vac_str
; };
; 
; struct menu_var  LineupTimeOnOff = { 
; 	   1,1,1,2,0,3,"OFF",enum_off_on_str
; };
; 
; struct menu_var laSwitchPol = {
; 	   2,1,1,2,0,3,"NEG",enum_pos_neg_str
; };
; 
; struct menu_var  VacDist1 = {
; 	   100,1,0,300,0,3,"100",enum_NULL_str
; };
; 
; struct menu_var  VacDist2 = {
; 	   100,1,0,300,0,3,"100",enum_NULL_str
; };
; 
; struct menu_var  VacDist3 = {
; 	   100,1,0,300,0,3,"100",enum_NULL_str
; };
; 
; struct menu_var  VacDist4 = {
; 	   0,1,0,300,0,3,"  0",enum_NULL_str
; };
; 
; struct menu_var  VacDist5 = {
; 	   0,1,0,300,0,3,"  0",enum_NULL_str
; };
; 
; struct menu_var  VacSpeed1 = {
; 	   1,1,1,3,0,5,"EXSLW",enum_slow_fast_str
; };
; 
; struct menu_var  VacSpeed2 = {
; 	   1,1,1,3,0,5,"EXSLW",enum_slow_fast_str
; };
; 
; 
; struct menu_var  VacSpeed3 = {
; 	   1,1,1,3,0,5,"EXSLW",enum_slow_fast_str
; };
; 
; struct menu_var  VacSpeed4 = {
; 	   1,1,1,3,0,5,"EXSLW",enum_slow_fast_str
; };
; 
; struct menu_var  VacSpeed5 = {
; 	   1,1,1,3,0,5,"EXSLW",enum_slow_fast_str
; };
; 
; struct menu_var  LowSetPoint = {
; 	   90,1,10,90,0,2,"90",enum_NULL_str
; };
; 
; struct menu_var  HighSetPoint = {
; 	   100,1,20,100,0,3,"100",enum_NULL_str
; };
; 
; struct menu_var  MachineSize = {
; 	   1,1,1,4,0,5,"08-10",enum_machinesize_str
; };
; 
; struct menu_var  ZoomSpeed = {
; 	   100,1,0,100,0,3,"100",enum_NULL_str
; }; //0-100
; struct menu_var  FocusSpeed = {
; 	   100,1,0,100,0,3,"100",enum_NULL_str
; }; //0-100
; 
; struct menu_var  LightLevel = {
; 	   100,1,0,100,0,3,"100",enum_NULL_str
; };
; 
; struct menu_var  AdvanceTime = {
; 	   1,1,1,5,0,1,"1",enum_NULL_str
; }; //1-5
; 
; struct menu_var  CamTag = {
; 	   1,1,1,46,0,-11,"CLEANER CAM",enum_alpha_str
; };
; 
; struct menu_var  disp_add = {
; 	   1,1,1,46,0,-4,"1234",enum_alpha_str
; };
; 
; 
; //saved seperately at 0x0a00
; char cam_addx[2];      //unique camera address from ran_num
; 
; //saved seperately at 0x0b10
; struct menu_var SerialNum = {
; 	   1,1,1,10,0,-6,"------",enum_number_str
; };
; 
; //saved seperately at 0x0c50
; unsigned char TrigCam4 = 123;
; unsigned char TrigCam5 = 45;
; 
; 
; 
; 
; 
; //The following Menu Variables are NOT saved in EEPROM
; struct menu_var  NullVar;
; 
; struct menu_var HeadCWOnOff = {
; 	   1,1,1,2,0,3,"OFF",enum_off_on_str
; };
; 
; struct menu_var HeadCCWOnOff = {
; 	   1,1,1,2,0,3,"OFF",enum_off_on_str
; };
; 
; struct menu_var BlowersOnOff = {
; 	   1,1,1,2,0,3,"OFF",enum_off_on_str
; };
; 
; struct menu_var VacuumOnOff = {
; 	   1,1,1,2,0,3,"OFF",enum_off_on_str
; };
; 
; struct menu_var SealsOnOff = {
; 	   1,1,1,2,0,3,"OFF",enum_off_on_str
; };
; 
; struct menu_var  Pressure = {
; 	   100,1,0,1000,0,4," 100",enum_NULL_str
; };
; 
; struct menu_var Rev = {
; 	   1,1,1,46,0,-4,Revision,enum_alpha_str
; };
; 
; float UDSPD;
; float updateSpd;
; 
; extern SPid *spdPID;
; extern SPid speedPID;
; 
; extern initPID;
; 
; #pragma abs_address: 0xda00
; struct MenuStruct Menuc[MenuSize] = {     
;                                         0,0,0,0,
;                                         "   CLEANER-VACUUM   ",
;                                         " CLEANER            ",
; 										" VACUUM             ",
;                                         " COMPRESSOR         ",
;                                         " CAMERA             ",
;                                         " STATUS             ",
;                                         " MACHINE SIZE       ",
;                                         " DEFAULTS           ",
;                                         " EXIT               ",
;                                         "                    ",
;                                         "                    ",
;                                         "                    ",
;                                         15,0,0,0,0,15,0,0,0,0,0,
;                                         &NullVar,
;                                         &NullVar,
;                                         &NullVar,
;                                         &NullVar,
;                                         &NullVar,
;                                         &MachineSize,
;                                         &NullVar,
;                                         &NullVar,
;                                         &NullVar,
;                                         &NullVar,
;                                         &NullVar,
;                                         &NullFunction,
;                                         &NullFunction,
;                                         &NullFunction,
;                                         &NullFunction,
;                                         &NullFunction,
;                                         &StdVarFunction,
;                                         &NullFunction,
;                                         &ExitMenu,
;                                         &NullFunction,
;                                         &NullFunction,
;                                         &NullFunction,
;                                         
;                                         
;                                             0,0,0,1,
;                                             "       CLEANER      ",
; 											" SETTINGS           ",
;                                             " SETTINGS 2         ",
;                                             " DIAGNOSTICS        ",
; 											" EXIT               ",
;                                             "                    ",
;                                             "                    ",
;                                             "                    ",
;                                             "                    ",
;                                             "                    ",
;                                             "                    ",
;                                             "                    ",
;                                             0,0,0,0,0,0,0,0,0,0,0,
;                                             &NullVar,
;                                             &NullVar,
;                                             &NullVar,
;                                             &NullVar,
;                                             &NullVar,
;                                             &NullVar,
;                                             &NullVar,
;                                             &NullVar,
;                                             &NullVar,
;                                             &NullVar,
;                                             &NullVar,
;                                             &NullFunction,
;                                             &NullFunction,
;                                             &NullFunction,
;                                             &ExitMenu,
;                                             &NullFunction,
;                                             &NullFunction,
;                                             &NullFunction,
;                                             &NullFunction,
;                                             &NullFunction,
;                                             &NullFunction,
;                                             &NullFunction,
;                                      
;                             
;                                                 0,0,1,1,
;                                                 "  CLEANER SETTINGS  ",
;     											" CENTER STROKES     ",
;                                                 " FULL STROKES       ",
;     											" CENTER DIST        ",
;                                                 " FULL DIST          ",
;                                                 " LA CENTER          ",
;     											" LA SPEED           ",
;                                                 " LINE-UP DIST       ",
;                                                 " SEAL TIME          ",
;                                                 " TEST MODE          ",
;                                                 " LA SWITCH          ",
;     											" EXIT               ",
;                                                 18,18,16,16,16,17,15,18,17,17,0,
;                                                 &CntrStrokes,
;                                                 &FullStrokes,
;                                                 &CntrDist,
;                                                 &FullDist,
;                                                 &LACntr,
;                                                 &LASpeed,
;                                                 &LineUpDist,
;                                                 &SealTime,
;                                                 &TestModeOnOff,
;                                                 &laSwitchPol,
;                                                 &NullVar,
;                                                 &StdVarFunction,
;                                                 &StdVarFunction,
;                                                 &StdVarFunction,
;                                                 &StdVarFunction,
;                                                 &StdVarFunction,
;                                                 &StdVarFunction,
;                                                 &StdVarFunction,
;                                                 &StdVarFunction,
;                                                 &StdVarFunction,
;                                                 &StdVarFunction,
;                                                 &ExitMenu,
;                                          
;                                 
;                                                 0,0,1,2,
;                                                 "     SETTINGS 2     ",
;                                       			" SEL TRIG CAM       ",
;                                                 " LINE UP ON         ",
;                                                 " LINEUP TIMER       ",
;                                                 " LINEUP SPEED       ",
; 												" EXIT               ",
;                                                 "      WARNING       ",
;                                                 "THE CURRENT CAMERA  ",
;                                                 "WILL BE SELECTED AS ",
;                                                 "THE TRIGGER CAMERA  ",
;                                                 "                    ",
;                                                 "                    ",
;                                                 0,16,16,15,0,0,0,0,0,0,0,
;                                                 &NullVar,
;                                                 &LineUpClnVac,
;                                                 &LineupTimeOnOff,
;                                                 &LineupSpeed,
; 												&NullVar,
; 												&NullVar,
; 												&NullVar,
; 												&NullVar,
; 												&NullVar,
;                                                 &NullVar,
;                                                 &NullVar,
;                                                 &GetTrigCam,
; 												&StdVarFunction,
; 												&StdVarFunction,
; 												&StdVarFunction,
; 												&ExitMenu,
; 												&NullFunction,
; 												&NullFunction,
; 												&NullFunction,
; 												&NullFunction,
; 												&NullFunction,
; 												&NullFunction,
; 												
; 												
; 												
; 												0,0,1,3,
;                                                 " CLEANER DIAGNOSTICS",
;                                       			" RETRACT LA         ",
;                                       			" CENTER LA          ",
;                                       			" EXTEND LA          ",
;                                       			" HEAD CW            ",
;                                       			" HEAD CCW           ",
;                                       			" SEALS              ",
;                                       			" GRIT               ",
;                                                 " VACUUM             ",
;                                                 " EXIT               ",
;                                                 "                    ",
;                                                 "                    ",
;                                                 0,0,0,16,16,16,16,16,0,0,0,
;                                                 &NullVar,
;                                                 &NullVar,
;                                                 &NullVar,
;                                                 &HeadCWOnOff,
;                                                 &HeadCCWOnOff,
; 												&SealsOnOff,
;                                                 &BlowersOnOff,
;                                                 &VacuumOnOff,
;                                                 &NullVar,
;                                                 &NullVar,
;                                                 &NullVar,
;                                                 &RetractLA,
;                                                 &CenterLA,
;                                                 &ExtendLA,
;     											&StdVarFunction,
;     											&StdVarFunction,
; 												&StdVarFunction,
;                                                 &StdVarFunction,
;                                                 &StdVarFunction,
;                                                 &ExitMenu,
;                                                 &NullFunction,
;                                                 &NullFunction,
;                                                  
;                                                 
;                                             0,0,0,2,
;                                             "       VACUUM       ",
; 											" SETTINGS           ",
;                                             " DIAGNOSTICS        ",
; 											" EXIT               ",
;                                             "                    ",
;                                             "                    ",
;                                             "                    ",
;                                             "                    ",
;                                             "                    ",
;                                             "                    ",
;                                             "                    ",
;                                             "                    ",
;                                             0,0,0,0,0,0,0,0,0,0,0,
;                                             &NullVar,
;                                             &NullVar,
;                                             &NullVar,
;                                             &NullVar,
;                                             &NullVar,
;                                             &NullVar,
;                                             &NullVar,
;                                             &NullVar,
;                                             &NullVar,
;                                             &NullVar,
;                                             &NullVar,
;                                             &NullFunction,
;                                             &NullFunction,
;                                             &ExitMenu,
;                                             &NullFunction,
;                                             &NullFunction,
;                                             &NullFunction,
;                                             &NullFunction,
;                                             &NullFunction,
;                                             &NullFunction,
;                                             &NullFunction,
;                                             &NullFunction,
;                                      
;                             
;                                                 0,0,2,1,
;                                                 "   VACUUM SETTINGS  ",
;                                                 " 1ST VAC DIST       ",
;                                                 " 2ND VAC DIST       ",
;                                                 " 3RD VAC DIST       ",
;                                                 " 4TH VAC DIST       ",
;                                                 " 5TH VAC DIST       ",
;                                                 " 1ST VAC SPEED      ",
;                                                 " 2ND VAC SPEED      ",
;                                                 " 3RD VAC SPEED      ",
;                                                 " 4TH VAC SPEED      ",
;                                                 " 5TH VAC SPEED      ",
;                                                 " EXIT               ",
;                                                 17,17,17,17,17,15,15,15,15,15,0,
;                                                 &VacDist1,
;                                                 &VacDist2,
;                                                 &VacDist3,
;                                                 &VacDist4,
;                                                 &VacDist5,
;                                                 &VacSpeed1,
;                                                 &VacSpeed2,
;                                                 &VacSpeed3,
;                                                 &VacSpeed4,
;                                                 &VacSpeed5,
;                                                 &NullVar,
;                                                 &StdVarFunction,
;                                                 &StdVarFunction,
;                                                 &StdVarFunction,
;                                                 &StdVarFunction,
;                                                 &StdVarFunction,
;                                                 &StdVarFunction,
;                                                 &StdVarFunction,
;                                                 &StdVarFunction,
;                                                 &StdVarFunction,
;                                                 &StdVarFunction,
;                                                 &ExitMenu,
;                                          
;                                 
;                                                 0,0,2,2,
;                                                 " VACUUM DIAGNOSTICS ",
;                                       			" GRIT               ",
;                                                 " VACUUM             ",
;                                                 " EXIT               ",
;                                                 "                    ",
;                                                 "                    ",
;                                                 "                    ",
;                                                 "                    ",
;                                                 "                    ",
;                                                 "                    ",
;                                                 "                    ",
;                                                 "                    ",
;                                                 16,16,0,0,0,0,0,0,0,0,0,
;                                                 &BlowersOnOff,
;                                                 &VacuumOnOff,
;                                                 &NullVar,
;                                                 &NullVar,
;                                                 &NullVar,
;                                                 &NullVar,
;                                                 &NullVar,
;                                                 &NullVar,
;                                                 &NullVar,
;                                                 &NullVar,
;                                                 &NullVar,
;                                                 &StdVarFunction,
;                                                 &StdVarFunction,
;                                                 &ExitMenu,
;     											&NullFunction,
;     											&NullFunction,
;                                                 &NullFunction,
;                                                 &NullFunction,
;                                                 &NullFunction,
;                                                 &NullFunction,
;                                                 &NullFunction,
;                                                 &NullFunction,
;                                                  
;                                                 
;                                             0,0,0,3,
;                                             "     COMPRESSOR     ",
; 											" SETTINGS           ",
;                                             " DIAGNOSTICS        ",
; 											" EXIT               ",
;                                             "                    ",
;                                             "                    ",
;                                             "                    ",
;                                             "                    ",
;                                             "                    ",
;                                             "                    ",
;                                             "                    ",
;                                             "                    ",
;                                             0,0,0,0,0,0,0,0,0,0,0,
;                                             &NullVar,
;                                             &NullVar,
;                                             &NullVar,
;                                             &NullVar,
;                                             &NullVar,
;                                             &NullVar,
;                                             &NullVar,
;                                             &NullVar,
;                                             &NullVar,
;                                             &NullVar,
;                                             &NullVar,
;                                             &NullFunction,
;                                             &NullFunction,
;                                             &ExitMenu,
;                                             &NullFunction,
;                                             &NullFunction,
;                                             &NullFunction,
;                                             &NullFunction,
;                                             &NullFunction,
;                                             &NullFunction,
;                                             &NullFunction,
;                                             &NullFunction,
;                                      
;                             
;                                                 0,0,3,1,
;                                                 " COMPRESSOR SETTINGS",
;                                                 " COMPRESSOR         ",
;                                                 " LOW SET POINT      ",
;     											" HIGH SET POINT     ",
;                                                 " PRESSURE           ",
;                                             	" EXIT               ",
;                                                 "                    ",
;                                                 "                    ",
;                                                 "                    ",
;                                                 "                    ",
;                                                 "                    ",
;                                                 "                    ",
;                                                 17,18,17,16,0,0,0,0,0,0,0,
;                                                 &CompressorOnOff,
;                                                 &LowSetPoint,
;                                                 &HighSetPoint,
;                                                 &Pressure,
;                                             	&NullVar,
;                                             	&NullVar,
;                                                 &NullVar,
;                                                 &NullVar,
;                                                 &NullVar,
;                                                 &NullVar,
;                                                 &NullVar,
;                                                 &StdVarFunction,
;                                                 &StdVarFunction,
;                                                 &StdVarFunction,
;                                                 &NullFunction,
;                                                 &ExitMenu,
;                                                 &NullFunction,
;                                                 &NullFunction,
;                                                 &NullFunction,
;                                                 &NullFunction,
;                                                 &NullFunction,
;                                                 &NullFunction,
;                                          
;                                 
;                                                 0,0,3,2,
;                                                 "   COMPRESSOR DIAG  ",
;                                                 " SEALS              ",
;                                                 " EXIT               ",
;                                                 "                    ",
;                                                 "                    ",
;                                                 "                    ",
;                                                 "                    ",
;                                                 "                    ",
;                                                 "                    ",
;                                                 "                    ",
;                                                 "                    ",
;                                                 "                    ",
;                                                 16,0,0,0,0,0,0,0,0,0,0,
;                                                 &SealsOnOff,
;                                                 &NullVar,
;                                                 &NullVar,
;                                                 &NullVar,
;                                                 &NullVar,
;                                                 &NullVar,
;                                                 &NullVar,
;                                                 &NullVar,
;                                                 &NullVar,
;                                                 &NullVar,
;                                                 &NullVar,
;                                                 &StdVarFunction,
;                                                 &ExitMenu,
;                                                 &NullFunction,
;                                                 &NullFunction,
;                                                 &NullFunction,
;                                                 &NullFunction,
;                                                 &NullFunction,
;                                                 &NullFunction,
;                                                 &NullFunction,
;                                                 &NullFunction,
;                                                 &NullFunction,
;                                          
;                                 
;                                             0,0,0,4,
;                                             "       CAMERA       ",
; 											" SETTINGS           ",
;                                             " DIAGNOSTICS        ",
; 											" STATUS             ",
;                                             " EXIT               ",
;                                             "                    ",
;                                             "                    ",
;                                             "                    ",
;                                             "                    ",
;                                             "                    ",
;                                             "                    ",
;                                             "                    ",
;                                             0,0,0,0,0,0,0,0,0,0,0,
;                                             &NullVar,
;                                             &NullVar,
;                                             &NullVar,
;                                             &NullVar,
;                                             &NullVar,
;                                             &NullVar,
;                                             &NullVar,
;                                             &NullVar,
;                                             &NullVar,
;                                             &NullVar,
;                                             &NullVar,
;                                             &NullFunction,
;                                             &NullFunction,
;                                             &NullFunction,
;                                             &ExitMenu,
;                                             &NullFunction,
;                                             &NullFunction,
;                                             &NullFunction,
;                                             &NullFunction,
;                                             &NullFunction,
;                                             &NullFunction,
;                                             &NullFunction,
;                                      
;                             
;                                                 0,0,4,1,
;                                                 "   CAMERA SETTINGS  ",
;     											" LIGHTING           ",
;     											" ZOOM SPEED         ",
;     											" FOCUS SPEED        ",
;     											" FILM ADVANCE       ",
;                                                 " TAG                ",
;                                                 " EXIT               ",
;                                                 "                    ",
;                                                 "                    ",
;                                                 "                    ",
;                                                 "                    ",
;                                                 "                    ",
;                                                 16,16,16,18,8,0,0,0,0,0,0,
;                                                 &LightLevel,
;                                                 &ZoomSpeed,
;                                                 &FocusSpeed,
;                                                 &AdvanceTime,
;                                                 &CamTag,
;                                                 &NullVar,
;                                                 &NullVar,
;                                                 &NullVar,
;                                                 &NullVar,
;                                                 &NullVar,
;                                                 &NullVar,
;                                                 &StdVarFunction,
;                                                 &StdVarFunction,
;                                                 &StdVarFunction,
;                                                 &StdVarFunction,
;                                                 &StdVarFunction,
;                                                 &ExitMenu,
;                                                 &NullFunction,
;                                                 &NullFunction,
;                                                 &NullFunction,
;                                                 &NullFunction,
;                                                 &NullFunction,
;                                          
;                                 
;                                                 0,0,4,2,
;                                                 " CAMERA DIAGNOSTICS ",
;                                                 " ADVANCE FILM       ",
;                                                 " ZOOM IN            ",
;     											" ZOOM OUT           ",
;     											" FOCUS FAR          ",
;                                                 " FOCUS NEAR         ",
;     											" EXIT               ",
;                                                 "                    ",
;                                                 "                    ",
;                                                 "                    ",
;                                                 "                    ",
;                                                 "                    ",
;                                                 0,0,0,0,0,0,0,0,0,0,0,
;                                                 &NullVar,
;                                                 &NullVar,
;                                                 &NullVar,
;                                                 &NullVar,
;                                                 &NullVar,
;                                                 &NullVar,
;                                                 &NullVar,
;                                                 &NullVar,
;                                                 &NullVar,
;                                                 &NullVar,
;                                                 &NullVar,
;                                                 &Advance,
;                                                 &ZoomInFunct,
;                                                 &ZoomOutFunct,
;     											&FocusFarFunct,
;                                                 &FocusNearFunct,
;     											&ExitMenu,
;                                                 &NullFunction,
;                                                 &NullFunction,
;                                                 &NullFunction,
;                                                 &NullFunction,
;                                                 &NullFunction,
;                                                  
;                                                 
;                                                 0,0,4,3,
;                                                 "     STATUS MENU    ",
;                                                 " SOFTWARE REV       ",
;                                                 " CAMERA ID          ",
;                                                 " SERIAL NUM         ",
;                                                 " EXIT               ",
;                                                 "                    ",
;                                                 "                    ",
;                                                 "                    ",
;                                                 "                    ",
;                                                 "                    ",
;                                                 "                    ",
;                                                 "                    ",
;                                                 15,15,13,0,0,0,0,0,0,0,0,
;                                                 &Rev,
;                                                 &disp_add,
;                                                 &SerialNum,
;                                                 &NullVar,
;                                                 &NullVar,
;                                                 &NullVar,
;                                                 &NullVar,
;                                                 &NullVar,
;                                                 &NullVar,
;                                                 &NullVar,
;                                                 &NullVar,
;                                                 &NullFunction,
;                                                 &NullFunction,
;                                                 &NullFunction,
;                                                 &ExitMenu,
;                                                 &NullFunction,
;                                                 &NullFunction,
;                                                 &NullFunction,
;                                                 &NullFunction,
;                                                 &NullFunction,
;                                                 &NullFunction,
;                                                 &NullFunction,
;                                                 
;                                                 
;                                             0,0,0,5,
;                                             "     STATUS MENU    ",
;                                             " SOFTWARE REV       ",
;                                             " PRESSURE           ",
;                                             " CAMERA ID          ",
;                                             " SERIAL NUM         ",
;                                             " EXIT               ",
;                                             "                    ",
;                                             "                    ",
;                                             "                    ",
;                                             "                    ",
;                                             "                    ",
;                                             "                    ",
;                                             15,15,15,13,0,0,0,0,0,0,0,
;                                             &Rev,
;                                             &Pressure,
;                                             &disp_add,
;                                             &SerialNum,
;                                             &NullVar,
;                                             &NullVar,
;                                             &NullVar,
;                                             &NullVar,
;                                             &NullVar,
;                                             &NullVar,
;                                             &NullVar,
;                                             &NullFunction,
;                                             &NullFunction,
;                                             &NullFunction,
;                                             &StdVarFunction,//&VarSerNumFunct,
;                                             &ExitMenu,
;                                             &NullFunction,
;                                             &NullFunction,
;                                             &NullFunction,
;                                             &NullFunction,
;                                             &NullFunction,
;                                             &NullFunction,
;                                             
;                                             
;                                             0,0,0,7,
;                                             "     DEFAULTS       ",
;                                             " EXIT               ",
;                                             " RESTORE DEFAULTS   ",
;                                             "                    ",
;                                             "      WARNING       ",
;                                             "YOU WILL LOSE ALL   ",
;                                             "OF THE CURRENT      ",
;                                             "SETTINGS WHEN       ",
;                                             "RESTORING DEFAULTS  ",
;                                             "                    ",
;                                             "                    ",
;                                             "                    ",
;                                             0,0,0,0,0,0,0,0,0,0,0,
;                                             &NullVar,
;                                             &NullVar,
;                                             &NullVar,
;                                             &NullVar,
;                                             &NullVar,
;                                             &NullVar,
;                                             &NullVar,
;                                             &NullVar,
;                                             &NullVar,
;                                             &NullVar,
;                                             &NullVar,
;                                             &ExitMenu,
;                                             &RestoreDefaults,
;                                             &NullFunction,
;                                             &NullFunction,
;                                             &NullFunction,
;                                             &NullFunction,
;                                             &NullFunction,
;                                             &NullFunction,
;                                             &NullFunction,
;                                             &NullFunction,
;                                             &NullFunction
;  
; };
; #pragma end_abs_address
; 
; struct MenuStack MenuStackc[MenuStackSize] = {0,0,0,0,1,0};
; 
; char StackPointer = 0;
; 
; char Menu[12][21];
; 
; char VariableFlag = 0;
; 
; 
; 
; 
; /***************************************************************************/ 
; 
; // external declaration for the process image array
; extern UNSIGNED8 gProcImg[];
; 
; /**************************************************************************/
; 
; 
; 
; void InitPorts ( void )
; {
	.dbline 999
; 
; 
; 	DDRA = DDRA_Init;
	movb #252,0x2
	.dbline 1000
;     DDRB = DDRB_Init;
	movb #255,0x3
	.dbline 1001
; 	DDRE = DDRE_Init;
	movb #252,0x9
	.dbline 1002
; 	DDRJ = DDRJ_Init;
	movb #192,0x26a
	.dbline 1003
;     DDRM = DDRM_Init;
	movb #60,0x252
	.dbline 1004
;     DDRP = DDRP_Init;
	movb #15,0x25a
	.dbline 1005
;     DDRS = DDRS_Init;
	movb #15,0x24a
	.dbline 1006
;     DDRT = DDRT_Init;
	movb #32,0x242
	.dbline 1008
; 	
;     ATD0DIEN = ATD0DIEN_Init;
	clr 0x8d
	.dbline 1009
;     ATD0CTL2 = ATD0CTL2_Init;
	movb #128,0x82
	.dbline 1010
;     ATD0CTL3 = ATD0CTL3_Init;
	movb #35,0x83
	.dbline 1011
;     ATD0CTL5 = ATD0CTL5_Init;
	movb #128,0x85
	.dbline 1014
;     
;     
;     PUCR = PUCR_Init;
	movb #145,0xc
	.dbline 1015
; 	PERM = PERM_Init;
	clr 0x254
	.dbline 1016
;     PPSM = PPSM_Init;
	clr 0x255
	.dbline 1018
;     
;     PORTA = PORTA_Init;
	clr 0
	.dbline 1019
;     PORTB = PORTB_Init;
	clr 0x1
	.dbline 1020
; 	PORTE = PORTE_Init;	
	clr 0x8
	.dbline 1021
; 	PTJ = PTJ_Init;
	clr 0x268
	.dbline 1022
;     PTM = PTM_Init;
	clr 0x250
	.dbline 1023
; 	PTP = PTP_Init;
	clr 0x258
	.dbline 1024
; 	PTS = PTS_Init;
	clr 0x248
	.dbline 1025
;     PTT = PTT_Init;
	clr 0x240
	.dbline 1027
; 	
; 	PPSJ = PPSJ_Init;  		 		//Port J pulldowns
	clr 0x26d
	.dbline 1029
; 	
; 	PERS = PERS_Init;				//Port S pulldowns
	movb #255,0x24c
	.dbline 1030
; 	WOMS = WOMS_Init;				//Port S bit 3 (TXD1) Wired-OR
	clr 0x24e
	.dbline 1031
; 	PERT = PERT_Init;
	clr 0x244
	.dbline -2
L6:
	.dbline 0 ; func end
	rtc
	.dbend
	.dbfunc e InitInterrupts _InitInterrupts fV
$_InitInterrupts::
	.dbline -1
	.dbline 1035
; }
; 
; void InitInterrupts ( void )
; {	
	.dbline 1036
; 	CRGINT = CRGINT_Init;	 		//enable RTI
	movb #128,0x38
	.dbline 1037
; 	RTICTL = RTICTL_Init;
	movb #64,0x3b
	.dbline 1039
;     
;     PPSP = PPSP_Init;		  		//rising edge
	clr 0x25d
	.dbline 1040
;     PIEP = PIEP_Init;		  		//enable KW interrupts 
	clr 0x25e
	.dbline 1042
;     
; 	TSCR1 = TSCR1_Init;				//enable input capture
	movb #128,0x46
	.dbline 1043
;     TIOS = TIOS_Init;				//enable output compares
	movb #104,0x40
	.dbline 1044
; 	TIE = TIE_Init;
	movb #109,0x4c
	.dbline 1045
; 	TSCR2 = TSCR2_Init;
	movb #5,0x4d
	.dbline 1046
; 	TCTL3 = TCTL3_Init;
	clr 0x4a
	.dbline 1047
; 	TCTL4 = TCTL4_Init;
	movb #60,0x4b
	.dbline -2
L7:
	.dbline 0 ; func end
	rtc
	.dbend
	.dbfunc e InitPLL _InitPLL fV
$_InitPLL::
	.dbline -1
	.dbline 1052
; 	
; }
; 
; void InitPLL ( void )
; {	
	.dbline 1053
; 	REFDV = REFDV_Init;
	movb #5,0x35
	.dbline 1054
; 	SYNR = SYNR_Init;
	movb #17,0x34
L9:
	.dbline 1055
; 	while ( !(CRGFLG & 0x08) );
L10:
	.dbline 1055
	brclr 0x37,#8,L9
	.dbline 1056
; 	CLKSEL |= 0x80;
	bset 0x39,#128
	.dbline -2
L8:
	.dbline 0 ; func end
	rtc
	.dbend
	.dbfunc e InitSCI _InitSCI fV
$_InitSCI::
	.dbline -1
	.dbline 1062
; }
; 
; 
; 
; void InitSCI ( void )
; {
	.dbline 1063
; 	SCI0BD = (unsigned int)(BusClk / 16 / .0012);
	movw #1250,0xc8
	.dbline 1065
; 			   
; 	SCI0CR2 = SCI0CR2_TE | SCI0CR2_RE;
	movb #12,0xcb
	.dbline 1067
; 	
; 	SIN0Bufptr = 0;
	movw #0,_SIN0Bufptr
	.dbline 1069
; 	
; 	SCI0CR2 |=  SCI0CR2_RIE;
	bset 0xcb,#32
	.dbline 1071
; 	
; 	SOUT0Bufptr = 0;
	movw #0,_SOUT0Bufptr
	.dbline 1072
; 	SOUT0Buf[0] = '\r';
	movb #13,_SOUT0Buf
	.dbline -2
L12:
	.dbline 0 ; func end
	rtc
	.dbend
	.dbfunc e PWMInit _PWMInit fV
$_PWMInit::
	.dbline -1
	.dbline 1077
; 
; }
; 
; void PWMInit ( void )
; {
	.dbline 1078
; 	PWMPOL = PWMPOL_Init;
	movb #255,0xa1
	.dbline 1079
;     PWMCLK = PWMCLK_Init;
	movb #79,0xa2
	.dbline 1080
;     PWMPRCLK = PWMPRCLK_Init;
	movb #51,0xa3
	.dbline 1082
;     
;     PWMPER0 = PWMPER0_Init;
	movb #100,0xb4
	.dbline 1083
;     PWMPER1 = PWMPER1_Init;
	movb #100,0xb5
	.dbline 1084
;     PWMPER2 = PWMPER2_Init;
	movb #100,0xb6
	.dbline 1085
;     PWMPER3 = PWMPER3_Init;
	movb #100,0xb7
	.dbline 1086
;     PWMPER4 = PWMPER4_Init;
	movb #100,0xb8
	.dbline 1087
;     PWMPER5 = PWMPER5_Init;
	movb #100,0xb9
	.dbline 1088
;     PWMPER6 = PWMPER6_Init;
	movb #100,0xba
	.dbline 1089
;     PWMPER7 = PWMPER7_Init;
	movb #100,0xbb
	.dbline 1091
;     
;     PWMDTY0 = PWMDTY0_Init;
	clr 0xbc
	.dbline 1092
;     PWMDTY1 = PWMDTY1_Init;
	clr 0xbd
	.dbline 1093
;     PWMDTY2 = PWMDTY2_Init;
	clr 0xbe
	.dbline 1094
;     PWMDTY3 = PWMDTY3_Init;
	clr 0xbf
	.dbline 1095
;     PWMDTY4 = PWMDTY4_Init;
	clr 0xc0
	.dbline 1096
;     PWMDTY5 = PWMDTY5_Init;
	clr 0xc1
	.dbline 1097
;     PWMDTY6 = PWMDTY6_Init;
	clr 0xc2
	.dbline 1098
;     PWMDTY7 = PWMDTY7_Init;
	clr 0xc3
	.dbline 1101
; 
;     
;     PWMSCLA = PWMSCLA_Init;
	movb #21,0xa8
	.dbline 1102
;     PWMSCLB = PWMSCLB_Init;
	movb #21,0xa9
	.dbline 1103
;     PWME = PWME_Init;
	movb #176,0xa0
	.dbline -2
L13:
	.dbline 0 ; func end
	rtc
	.dbend
	.dbfunc e AtoDInit _AtoDInit fV
$_AtoDInit::
	.dbline -1
	.dbline 1108
;     
; }
; 
; void AtoDInit ( void )
; {
	.dbline 1109
;     ATD0DIEN = ATD0DIEN_Init;	  	 //Analog to Digital Registers
	clr 0x8d
	.dbline 1110
;     ATD0CTL2 = ATD0CTL2_Init;
	movb #128,0x82
	.dbline 1111
;     ATD0CTL3 = ATD0CTL3_Init;
	movb #35,0x83
	.dbline 1112
;     ATD0CTL4 = ATD0CTL4_Init;
	movb #69,0x84
	.dbline 1113
;     ATD0CTL5 = ATD0CTL5_Init;
	movb #128,0x85
	.dbline -2
L14:
	.dbline 0 ; func end
	rtc
	.dbend
	.area text
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.dbfunc e getchar _getchar$device_specific$ fI
_getchar$device_specific$::
	.dbline -1
	.dbline 1117
; }    
; 
; int getchar(void)
; 	{
L16:
	.dbline 1119
; 	while ((SCI0SR1 & SCI0SR1_RDRF) == 0)
; 		;
L17:
	.dbline 1118
	brclr 0xcc,#32,L16
	.dbline 1120
; 	return SCI0DRL;
	ldab 0xcf
	clra
	.dbline -2
L15:
	.dbline 0 ; func end
	rts
	.dbend
	.dbfunc e putchar _putchar$device_specific$ fI
;              c -> 1,SP
_putchar$device_specific$::
	pshd
	.dbline -1
	.dbline 1126
; 	}
; 
; extern int _textmode;
; 
; int putchar(char c)
; 	{
	.dbline 1127
; 	if (_textmode && c == '\n')
	ldy __textmode
	cpy #0
	beq L23
	ldab 1,S
	cmpb #10
	bne L23
	.dbline 1128
; 		putchar('\r');
	ldd #13
	jsr _putchar$device_specific$
L22:
	.dbline 1130
; 	while ((SCI0SR1 & SCI0SR1_TDRE) == 0)
; 		;
L23:
	.dbline 1129
	brclr 0xcc,#128,L22
	.dbline 1131
; 	SCI0DRL = c;
	movb 1,S,0xcf
	.dbline 1132
; 	return c;
	ldab 1,S
	clra
	.dbline -2
L19:
	.dbline 0 ; func end
	leas 2,S
	rts
	.dbsym l c 1 c
	.dbend
	.area extcode(paged)
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.dbfunc e InitCANopen _InitCANopen fV
$_InitCANopen::
	.dbline -1
	.dbline 1136
; 	}
; 
; void InitCANopen ( void )
; {
	.dbline 1138
; 
;   	Reset_Max33011();
	xcall $_Reset_Max33011
	.dbline 1140
; 	// Reset/Initialize CANopen communication
;   	MCOUSER_ResetCommunication();
	xcall $_MCOUSER_ResetCommunication
	.dbline -2
L25:
	.dbline 0 ; func end
	rtc
	.dbend
	.area text
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.dbfunc e RetractLA _RetractLA fI
_RetractLA::
	.dbline -1
	.dbline 1144
; }
; 
; int RetractLA ( void )
; {
	.dbline 1145
;     Move_Position = 0;
	movw #0,_Move_Position
	.dbline 1146
; 	Move_Speed = LASpeed.value;
	movw _LASpeed+2,2,-S
	movw _LASpeed,2,-S
	jsr fp2int
	tfr D,Y
	sty _Move_Speed
	.dbline 1147
; 	return 0;
	ldd #0
	.dbline -2
L26:
	.dbline 0 ; func end
	rts
	.dbend
	.dbfunc e CenterLA _CenterLA fI
_CenterLA::
	.dbline -1
	.dbline 1151
; }
; 
; int CenterLA ( void )
; {
	.dbline 1152
;     Move_Position = LACntr.value * 10;
	movw #0,2,-S
	movw #16672,2,-S
	movw _LACntr+2,2,-S
	movw _LACntr,2,-S
	jsr mulf4
	jsr fp2int
	tfr D,Y
	sty _Move_Position
	.dbline 1153
; 	Move_Speed = LASpeed.value;
	movw _LASpeed+2,2,-S
	movw _LASpeed,2,-S
	jsr fp2int
	tfr D,Y
	sty _Move_Speed
	.dbline 1154
; 	return 0;
	ldd #0
	.dbline -2
L27:
	.dbline 0 ; func end
	rts
	.dbend
	.dbfunc e ExtendLA _ExtendLA fI
_ExtendLA::
	.dbline -1
	.dbline 1158
; }
; 
; int ExtendLA ( void )
; {
	.dbline 1159
;     Move_Position = FullDist.value * 10;
	movw #0,2,-S
	movw #16672,2,-S
	movw _FullDist+2,2,-S
	movw _FullDist,2,-S
	jsr mulf4
	jsr fp2int
	tfr D,Y
	sty _Move_Position
	.dbline 1160
; 	Move_Speed = LASpeed.value;
	movw _LASpeed+2,2,-S
	movw _LASpeed,2,-S
	jsr fp2int
	tfr D,Y
	sty _Move_Speed
	.dbline 1161
;     return 0;
	ldd #0
	.dbline -2
L28:
	.dbline 0 ; func end
	rts
	.dbend
	.dbfunc e Advance _Advance fI
_Advance::
	.dbline -1
	.dbline 1165
; }
; 
; int Advance(void)       //function to advance camera film
; {   //advance timer is set 1 - 5 * 0.5 seconds (0.5 to 2.5 seconds)
	.dbline 1166
;     AdvanceTimer = AdvanceTime.value * RTI_One_Sec;
	movw #0,2,-S
	movw #17524,2,-S
	movw _AdvanceTime+2,2,-S
	movw _AdvanceTime,2,-S
	jsr mulf4
	jsr fp2int
	tfr D,Y
	sty _AdvanceTimer
	.dbline 1167
;     PORTA |= 0x80;
	bset 0,#128
	.dbline 1168
;     return 0;
	ldd #0
	.dbline -2
L29:
	.dbline 0 ; func end
	rts
	.dbend
	.dbfunc e ZoomInFunct _ZoomInFunct fI
_ZoomInFunct::
	.dbline -1
	.dbline 1172
; }
; 
; int ZoomInFunct ( void )
; {
	.dbline 1173
;     PWMDTY5 = ZoomSpeed.value;
	movw _ZoomSpeed+2,2,-S
	movw _ZoomSpeed,2,-S
	jsr fp2int
	stab 0xc1
	.dbline 1174
;     PORTA &= ~0x40;
	bclr 0,#64
	.dbline 1175
;     FocusZoomTimer = FocusZoomTime;
	movw #325,_FocusZoomTimer
	.dbline 1176
;     return 0;
	ldd #0
	.dbline -2
L30:
	.dbline 0 ; func end
	rts
	.dbend
	.dbfunc e ZoomOutFunct _ZoomOutFunct fI
_ZoomOutFunct::
	.dbline -1
	.dbline 1180
; }
; 
; int ZoomOutFunct ( void )
; {
	.dbline 1181
;     PWMDTY5 = 100 - ZoomSpeed.value;
	movw #0,2,-S
	movw #17096,2,-S
	movw _ZoomSpeed+2,2,-S
	movw _ZoomSpeed,2,-S
	jsr subf4
	jsr fp2int
	stab 0xc1
	.dbline 1182
;     PORTA |= 0x40;
	bset 0,#64
	.dbline 1183
;     FocusZoomTimer = FocusZoomTime;
	movw #325,_FocusZoomTimer
	.dbline 1184
;     return 0;
	ldd #0
	.dbline -2
L31:
	.dbline 0 ; func end
	rts
	.dbend
	.dbfunc e FocusFarFunct _FocusFarFunct fI
_FocusFarFunct::
	.dbline -1
	.dbline 1188
; }
; 
; int FocusFarFunct ( void )
; {
	.dbline 1189
;     PWMDTY4 = ZoomSpeed.value;
	movw _ZoomSpeed+2,2,-S
	movw _ZoomSpeed,2,-S
	jsr fp2int
	stab 0xc0
	.dbline 1190
;     PORTA &= ~0x20;
	bclr 0,#32
	.dbline 1191
;     FocusZoomTimer = FocusZoomTime;
	movw #325,_FocusZoomTimer
	.dbline 1192
;     return 0;
	ldd #0
	.dbline -2
L32:
	.dbline 0 ; func end
	rts
	.dbend
	.dbfunc e FocusNearFunct _FocusNearFunct fI
_FocusNearFunct::
	.dbline -1
	.dbline 1196
; }
; 
; int FocusNearFunct ( void )
; {
	.dbline 1197
;     PWMDTY4 = 100 - ZoomSpeed.value;
	movw #0,2,-S
	movw #17096,2,-S
	movw _ZoomSpeed+2,2,-S
	movw _ZoomSpeed,2,-S
	jsr subf4
	jsr fp2int
	stab 0xc0
	.dbline 1198
;     PORTA |= 0x20;
	bset 0,#32
	.dbline 1199
;     FocusZoomTimer = FocusZoomTime;
	movw #325,_FocusZoomTimer
	.dbline 1200
;     return 0;
	ldd #0
	.dbline -2
L33:
	.dbline 0 ; func end
	rts
	.dbend
	.area extcode(paged)
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.dbfunc e Load_Variables _Load_Variables fV
;      EE_offset -> 6,SP
;        tempstr -> 8,SP
;            var -> 138,SP
;           cptr -> 140,SP
;          token -> 142,SP
$_Load_Variables::
	leas -144,S
	.dbline -1
	.dbline 1204
; }
; 
; void Load_Variables ( void )
; {
	.dbline 1205
;  	int EE_offset=0;
	movw #0,6,S
	.dbline 1210
; 	char tempstr[130];
;     char *cptr,*token;
; 	struct menu_var *var;
; 
; 	if ( *(char *)EE_begin == 0xff )
	ldab 0x800
	cmpb #255
	bne L35
	.dbline 1211
; 	{
	.dbline 1212
; 	    Save_Variables();
	xcall $_Save_Variables
	.dbline 1213
; 		return;
	lbra L34
L35:
	.dbline 1216
; 	}
; 		
;     if (strlen((char *)EE_begin)>128)
	ldd #2048
	xcall $_strlen
	cpd #128
	bls L37
	.dbline 1217
; 	{
	.dbline 1218
; 	    tempstr[0] = 0xff;
	movb #255,8,S
	.dbline 1219
; 		EEWrite ( 1, tempstr,(int *)(EE_begin));//Put a 0xff in the beginning of EEPROM to force defaults
	ldy #2048
	sty 2,S
	leay 8,S
	sty 0,S
	ldd #1
	xcall $_EEWrite
	.dbline 1220
; 		ResetProc ();
	xcall $_ResetProc
	.dbline 1221
; 		return;
	lbra L34
L37:
	.dbline 1224
; 	}
; 	
; 	strncpy(tempstr,(char *)EE_begin,sizeof(tempstr));
	ldy #130
	sty 2,S
	ldy #2048
	sty 0,S
	leay 8,S
	tfr Y,D
	xcall $_strncpy
	.dbline 1225
;     token = strtok(tempstr, ",");
	ldy #L39
	sty 0,S
	leay 8,S
	tfr Y,D
	xcall $_strtok
	std 142,S
	.dbline 1227
; 
; 	for(cptr=(char *)&CompressorOnOff.str_value;  cptr<=(char *)&CamTag.str_value;  cptr=cptr+((char *)&CntrStrokes.str_value - (char *)&CompressorOnOff.str_value))
	ldy #_CompressorOnOff+18
	sty 140,S
	lbra L43
L40:
	.dbline 1228
; 	{
	.dbline 1229
; 		if (strlen(token)>STR_VALUE_LEN)
	ldd 142,S
	xcall $_strlen
	cpd #12
	bls L48
	.dbline 1230
;     	{
	.dbline 1231
; 	        tempstr[0] = 0xff;
	movb #255,8,S
	.dbline 1232
; 			EEWrite ( 1, tempstr,(int *)(EE_begin));//Put a 0xff in the beginning of EEPROM to force defaults
	ldy #2048
	sty 2,S
	leay 8,S
	sty 0,S
	ldd #1
	xcall $_EEWrite
	.dbline 1233
;     		ResetProc ();
	xcall $_ResetProc
	.dbline 1234
; 			return;
	lbra L34
L48:
	.dbline 1237
;     	}
; 		
; 		strncpy(cptr,token,STR_VALUE_LEN);
	ldy #12
	sty 2,S
	ldy 142,S
	sty 0,S
	ldd 140,S
	xcall $_strncpy
	.dbline 1238
; 		token = strtok(NULL, ",");
	ldy #L39
	sty 0,S
	ldd #0
	xcall $_strtok
	std 142,S
	.dbline 1239
; 		if ( token == NULL )
	cpd #0
	lbne L50
	.dbline 1240
; 		{
	.dbline 1241
; 		    EE_offset = EE_offset + 128;
	ldd 6,S
	addd #128
	std 6,S
	.dbline 1242
; 			if (!*(char *)(EE_begin + EE_offset))
	addd #2048
	tfr D,Y
	ldab 0,Y
	cmpb #0
	bne L52
	.dbline 1243
; 			    break; //Last variable loaded
	lbra L42
L52:
	.dbline 1244
;             if (strlen((char *)(EE_begin + EE_offset))>128)
	ldd 6,S
	addd #2048
	xcall $_strlen
	cpd #128
	bls L54
	.dbline 1245
;         	{
	.dbline 1246
;         	    tempstr[0] = 0xff;
	movb #255,8,S
	.dbline 1247
;         		EEWrite ( 1, tempstr,(int *)(EE_begin));//Put a 0xff in the beginning of EEPROM to force defaults
	ldy #2048
	sty 2,S
	leay 8,S
	sty 0,S
	ldd #1
	xcall $_EEWrite
	.dbline 1248
;         		ResetProc ();
	xcall $_ResetProc
	.dbline 1249
; 				return;
	lbra L34
L54:
	.dbline 1251
;         	}
; 			strncpy(tempstr,(char *)(EE_begin + EE_offset),sizeof(tempstr));
	ldy #130
	sty 2,S
	ldd 6,S
	addd #2048
	std 0,S
	leay 8,S
	tfr Y,D
	xcall $_strncpy
	.dbline 1252
; 			token = strtok(tempstr, ",");
	ldy #L39
	sty 0,S
	leay 8,S
	tfr Y,D
	xcall $_strtok
	std 142,S
	.dbline 1253
; 		}
L50:
	.dbline 1254
; 	}
L41:
	.dbline 1227
	ldd #_CntrStrokes+18
	ldy #_CompressorOnOff+18
	sty 4,S
	subd 4,S
	addd 140,S
	std 140,S
L43:
	.dbline 1227
	ldy #_CamTag+18
	cpy 140,S
	lbhs L40
L42:
	.dbline 1257
; 		
; 	//&CamTag
; 	for(var=&CompressorOnOff; var<=&CamTag; var=var+1)	
	ldy #_CompressorOnOff
	sty 138,S
	bra L59
L56:
	.dbline 1259
; 	//for(var=&CompressorOnOff; var<=&CntrStrokes; var=var+1)
; 	{
	.dbline 1260
; 	    getvalue(var,0);
	ldy #0
	sty 0,S
	ldd 138,S
	xcall $_getvalue
	leas 4,S
	.dbline 1261
; 	}
L57:
	.dbline 1257
	ldd 138,S
	addd #34
	std 138,S
L59:
	.dbline 1257
	ldy #_CamTag
	cpy 138,S
	bhs L56
	.dbline -2
L34:
	.dbline 0 ; func end
	leas 144,S
	rtc
	.dbsym l EE_offset 6 I
	.dbsym l tempstr 8 A[130:130]c
	.dbsym l var 138 pS[menu_var]
	.dbsym l cptr 140 pc
	.dbsym l token 142 pc
	.dbend
	.dbfunc e Save_Variables _Save_Variables fV
;       Null_Ptr -> 12,SP
;      Null_Char -> 14,SP
;      EE_offset -> 15,SP
;        tempstr -> 17,SP
;         offset -> 147,SP
;           cptr -> 149,SP
$_Save_Variables::
	leas -151,S
	.dbline -1
	.dbline 1266
; 
; }
; 
; void Save_Variables ( void )
; {
	.dbline 1267
;  	int offset=0,EE_offset=0;
	leay 147,S
	movw #0,0,y
	.dbline 1267
	movw #0,15,S
	.dbline 1270
; 	char *cptr;
;     char tempstr[130];
; 	char Null_Char = NULL;
	clr 14,S
	.dbline 1271
; 	char *Null_Ptr = &Null_Char;
	leay 14,S
	sty 12,S
	.dbline 1273
; 
; 	for(cptr=(char *)&CompressorOnOff.str_value;  cptr<=(char *)&CamTag.str_value;  cptr=cptr+((char *)&CntrStrokes.str_value - (char *)&CompressorOnOff.str_value))
	ldy #_CompressorOnOff+18
	sty 149,S
	lbra L64
L61:
	.dbline 1274
; 	{
	.dbline 1275
; 	    if ( (offset + strlen(cptr) + 1) < 128 )
	ldd 149,S
	xcall $_strlen
	tfr D,X
	stx 10,S
	ldd 147,S
	addd 10,S
	tfr D,Y
	iny
	cpy #128
	bhs L69
	.dbline 1276
; 		    sprintf(tempstr+offset,"%s,",cptr); //puts a comma
	ldy 149,S
	sty 4,S
	ldy #L71
	sty 2,S
	ldd 147,S
	leay 17,S
	sty 6,S
	addd 6,S
	std 0,S
	xcall $_sprintf
	bra L70
L69:
	.dbline 1278
; 		else
; 		    *(tempstr+offset-1)=NULL; //puts a null in place of the last comma
	ldd 147,S
	leay 16,S
	sty 6,S
	addd 6,S
	tfr D,Y
	ldd #0
	stab 0,Y
L70:
	.dbline 1279
; 		offset = offset + strlen(cptr) + 1;
	ldd 149,S
	xcall $_strlen
	tfr D,X
	stx 8,S
	ldd 147,S
	addd 8,S
	tfr D,Y
	iny
	sty 147,S
	.dbline 1281
; 		
; 		if (offset>127) //current variable will go over the buffer limit
	cpy #127
	ble L73
	.dbline 1282
; 		{
	.dbline 1283
; 			EEWrite ( 128, tempstr, (int *)(EE_begin + EE_offset));
	ldd 15,S
	addd #2048
	std 2,S
	leay 17,S
	sty 0,S
	ldd #128
	xcall $_EEWrite
	.dbline 1284
; 			EE_offset = EE_offset + 128;
	ldd 15,S
	addd #128
	std 15,S
	.dbline 1285
; 			sprintf(tempstr,"%s,",cptr); //starts back over by putting the current variable at beginning of tempstr
	ldy 149,S
	sty 4,S
	ldy #L71
	sty 2,S
	leay 17,S
	sty 0,S
	xcall $_sprintf
	.dbline 1286
; 			offset = strlen(cptr) + 1;
	ldd 149,S
	xcall $_strlen
	tfr D,Y
	iny
	sty 147,S
	.dbline 1287
; 		}
L73:
	.dbline 1289
; 		
; 	}
L62:
	.dbline 1273
	ldd #_CntrStrokes+18
	ldy #_CompressorOnOff+18
	sty 6,S
	subd 6,S
	addd 149,S
	std 149,S
L64:
	.dbline 1273
	ldy #_CamTag+18
	cpy 149,S
	lbhs L61
	.dbline 1290
; 	*(tempstr+offset-1)=NULL; //end the last string with a null
	ldd 147,S
	leay 16,S
	sty 6,S
	addd 6,S
	tfr D,Y
	ldd #0
	stab 0,Y
	.dbline 1291
; 	EEWrite ( 128, tempstr, (int *)(EE_begin + EE_offset));
	ldd 15,S
	addd #2048
	std 2,S
	leay 17,S
	sty 0,S
	ldd #128
	xcall $_EEWrite
	.dbline 1292
; 	EEWrite ( 1,Null_Ptr,(int *)(EE_begin + EE_offset + 128));//Put a Null in the first location of the next 128 byte block 
	ldd 15,S
	addd #2176
	std 2,S
	ldy 12,S
	sty 0,S
	ldd #1
	xcall $_EEWrite
	.dbline 1294
; 
; 	if(save_serial_flag==1){
	ldab _save_serial_flag
	cmpb #1
	bne L76
	.dbline 1294
	.dbline 1296
; 		 
; 		Save_Serial_Num();
	xcall $_Save_Serial_Num
	.dbline 1297
; 		save_serial_flag=0; 
	clr _save_serial_flag
	.dbline 1298
; 	}
L76:
	.dbline -2
L60:
	.dbline 0 ; func end
	leas 151,S
	rtc
	.dbsym l Null_Ptr 12 pc
	.dbsym l Null_Char 14 c
	.dbsym l EE_offset 15 I
	.dbsym l tempstr 17 A[130:130]c
	.dbsym l offset 147 I
	.dbsym l cptr 149 pc
	.dbend
	.area text
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.dbfunc e RestoreDefaults _RestoreDefaults fI
_RestoreDefaults::
	.dbline -1
	.dbline 1304
; 	
; }                                                                                        
; 
; 
; int RestoreDefaults ( void )
; {
	.dbline 1305
;     Send_Menu_Status (0x00);
	ldd #0
	xcall $_Send_Menu_Status
	.dbline 1306
; 	CompressorOnOff.str_value[0] = 0xFF;    
	movb #255,_CompressorOnOff+18
	.dbline 1307
; 	Save_Variables();
	xcall $_Save_Variables
	.dbline 1308
;     ResetProc ();
	xcall $_ResetProc
	.dbline 1309
; 	return 0;
	ldd #0
	.dbline -2
L78:
	.dbline 0 ; func end
	rts
	.dbend
	.dbfunc e GetTrigCam _GetTrigCam fI
_GetTrigCam::
	.dbline -1
	.dbline 1313
; }
; 
; int GetTrigCam (void)
; {
	.dbline 1314
; 	TrigCam4 = ActCam4;
	movb _ActCam4,_TrigCam4
	.dbline 1315
; 	TrigCam5 = ActCam5;
	movb _ActCam5,_TrigCam5
	.dbline 1316
; 	Display("Proc:Camera Selected");
	ldd #L81
	xcall $_Display
	.dbline 1317
; 	Save_TrigCamera_Add();
	xcall $_Save_TrigCamera_Add
	.dbline 1318
; 	return 0;
	ldd #0
	.dbline -2
L80:
	.dbline 0 ; func end
	rts
	.dbend
	.area extcode(paged)
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.dbfunc e Load_Camera_Add _Load_Camera_Add fV
; VarEEPROMPntr2 -> 6,SP
$_Load_Camera_Add::
	leas -8,S
	.dbline -1
	.dbline 1324
; }
; 
; 
; //retreive camera address from EEProm
; void Load_Camera_Add ( void )
; {
	.dbline 1326
;     char *VarEEPROMPntr2;
;     VarEEPROMPntr2 = (char *)0x0a00;
	movw #2560,6,S
	.dbline 1328
;     
;     cam_addx[0] = *VarEEPROMPntr2;
	ldy 6,S
	movb 0,Y,_cam_addx
	.dbline 1329
;     cam_addx[1] = *(VarEEPROMPntr2 + 1);   
	ldy 6,S
	iny
	movb 0,Y,_cam_addx+1
	.dbline 1330
;     cam_add = cam_addx[0] + (cam_addx[1]<<8); 
	ldab _cam_addx+1
	tfr B,D
	tfr B,A
	ldab _cam_addx
	std _cam_add
	.dbline 1332
; 	
; 	sprintf(disp_add.str_value,"04X",cam_add);
	ldy _cam_add
	sty 4,S
	ldy #L86
	sty 2,S
	ldy #_disp_add+18
	sty 0,S
	xcall $_sprintf
	.dbline -2
L82:
	.dbline 0 ; func end
	leas 8,S
	rtc
	.dbsym l VarEEPROMPntr2 6 pc
	.dbend
	.dbfunc e Save_Camera_Add _Save_Camera_Add fV
;      EEpromPtr -> 6,SP
$_Save_Camera_Add::
	leas -8,S
	.dbline -1
	.dbline 1337
; 	//disp_add.value              
; }
; 
; void Save_Camera_Add ( void )
; {
	.dbline 1340
;     char *EEpromPtr;
;     
;     sprintf(disp_add.str_value,"04X",cam_add);
	ldy _cam_add
	sty 4,S
	ldy #L86
	sty 2,S
	ldy #_disp_add+18
	sty 0,S
	xcall $_sprintf
	.dbline 1342
; 	
; 	EEpromPtr = &cam_addx[0];
	ldy #_cam_addx
	sty 6,S
	.dbline 1344
; 
;  	EEWrite ( 2, EEpromPtr, (int *)0x0a00 );
	ldy #2560
	sty 2,S
	ldy 6,S
	sty 0,S
	ldd #2
	xcall $_EEWrite
	.dbline -2
L87:
	.dbline 0 ; func end
	leas 8,S
	rtc
	.dbsym l EEpromPtr 6 pc
	.dbend
	.dbfunc e Load_TrigCamera_Add _Load_TrigCamera_Add fV
; VarEEPROMPntr2 -> 0,SP
$_Load_TrigCamera_Add::
	leas -2,S
	.dbline -1
	.dbline 1350
; }
; 
; 
; //retreive selected camera address from EEProm
; void Load_TrigCamera_Add ( void )
; {
	.dbline 1352
;     char *VarEEPROMPntr2;
;     VarEEPROMPntr2 = (char *)0x0c50;
	movw #3152,0,S
	.dbline 1354
;     
;     TrigCam4 = *VarEEPROMPntr2;
	ldy 0,S
	movb 0,Y,_TrigCam4
	.dbline 1355
;     TrigCam5 = *(VarEEPROMPntr2 + 1);   
	ldy 0,S
	iny
	movb 0,Y,_TrigCam5
	.dbline -2
L89:
	.dbline 0 ; func end
	leas 2,S
	rtc
	.dbsym l VarEEPROMPntr2 0 pc
	.dbend
	.dbfunc e Save_TrigCamera_Add _Save_TrigCamera_Add fV
;      EEpromPtr -> 4,SP
$_Save_TrigCamera_Add::
	leas -6,S
	.dbline -1
	.dbline 1363
;     //cam_add = cam_addx[0] + (cam_addx[1]<<8); 
; 	
; 	//sprintf(disp_add.str_value,"04X",cam_add);
; 	//disp_add.value              
; }
; 
; void Save_TrigCamera_Add ( void )
; {
	.dbline 1368
;     char *EEpromPtr;
;     
;     //sprintf(disp_add.str_value,"04X",cam_add);
; 	
; 	EEpromPtr = &TrigCam4;
	ldy #_TrigCam4
	sty 4,S
	.dbline 1370
; 
;  	EEWrite ( 2, EEpromPtr, (int *)0x0c50 );
	ldy #3152
	sty 2,S
	ldy 4,S
	sty 0,S
	ldd #2
	xcall $_EEWrite
	.dbline -2
L90:
	.dbline 0 ; func end
	leas 6,S
	rtc
	.dbsym l EEpromPtr 4 pc
	.dbend
	.dbfunc e Load_Serial_Num _Load_Serial_Num fV
;        tempstr -> 2,SP
; VarEEPROMPntr2 -> 132,SP
$_Load_Serial_Num::
	leas -134,S
	.dbline -1
	.dbline 1378
; }
; 
; 
; 
; 
; //retreive Serial Number from EEProm
; void Load_Serial_Num ( void )
; {
	.dbline 1382
;     char tempstr[130];
;     char *VarEEPROMPntr2;
; 	
;     VarEEPROMPntr2 = (char *)0x0b10;
	leay 132,S
	movw #2832,0,y
	.dbline 1384
;     
;     if ( *VarEEPROMPntr2 >= '0' && *VarEEPROMPntr2 <= '9')
	ldab [132,S]
	clra
	std 0,S
	cpd #48
	blt L92
	ldy 0,S
	cpy #57
	bgt L92
	.dbline 1385
; 	{
	.dbline 1386
;     	SerialNum.str_value[0] = *VarEEPROMPntr2;
	ldy 132,S
	movb 0,Y,_SerialNum+18
	.dbline 1387
;         SerialNum.str_value[1] = *(VarEEPROMPntr2 + 1);   
	ldy 132,S
	iny
	movb 0,Y,_SerialNum+18+1
	.dbline 1388
;         SerialNum.str_value[2] = *(VarEEPROMPntr2 + 2);   
	ldd 132,S
	addd #2
	tfr D,Y
	movb 0,Y,_SerialNum+18+2
	.dbline 1389
;         SerialNum.str_value[3] = *(VarEEPROMPntr2 + 3);   
	ldd 132,S
	addd #3
	tfr D,Y
	movb 0,Y,_SerialNum+18+3
	.dbline 1390
;         SerialNum.str_value[4] = *(VarEEPROMPntr2 + 4);   
	ldd 132,S
	addd #4
	tfr D,Y
	movb 0,Y,_SerialNum+18+4
	.dbline 1391
;         SerialNum.str_value[5] = *(VarEEPROMPntr2 + 5); 
	ldd 132,S
	addd #5
	tfr D,Y
	movb 0,Y,_SerialNum+18+5
	.dbline 1392
; 		SerialNum.str_value[6] = 0;
	clr _SerialNum+18+6
	.dbline 1393
; 	}
	bra L93
L92:
	.dbline 1394
; 	else{		   
	.dbline 1396
; 		
; 		save_serial_flag=1;   
	movb #1,_save_serial_flag
	.dbline 1397
; 	}  
L93:
	.dbline -2
L91:
	.dbline 0 ; func end
	leas 134,S
	rtc
	.dbsym l tempstr 2 A[130:130]c
	.dbsym l VarEEPROMPntr2 132 pc
	.dbend
	.dbfunc e Save_Serial_Num _Save_Serial_Num fV
;      EEpromPtr -> 4,SP
$_Save_Serial_Num::
	leas -6,S
	.dbline -1
	.dbline 1401
; }
; 
; void Save_Serial_Num ( void )
; {
	.dbline 1404
;     char *EEpromPtr;
;     
;     EEpromPtr = &SerialNum.str_value[0];
	ldy #_SerialNum+18
	sty 4,S
	.dbline 1406
; 
;  	EEWrite ( 7, EEpromPtr, (int *)0x0b10 );
	ldy #2832
	sty 2,S
	ldy 4,S
	sty 0,S
	ldd #7
	xcall $_EEWrite
	.dbline -2
L107:
	.dbline 0 ; func end
	leas 6,S
	rtc
	.dbsym l EEpromPtr 4 pc
	.dbend
	.dbfunc e ResetProc _ResetProc fI
$_ResetProc::
	.dbline -1
	.dbline 1410
; }
; 
; int ResetProc ( void )
; {
	.dbline 1411
;     COPCTL = 0x01;				//enable COP for shortest period 
	movb #1,0x3c
L110:
	.dbline 1412
;     while (1);					//wait for reset
L111:
	.dbline 1412
	bra L110
X0:
	.dbline -2
L109:
	.dbline 0 ; func end
	rtc
	.dbend
	.dbfunc e InitXmit _InitXmit fV
;          cksum -> 4,SP
$_InitXmit::
	leas -5,S
	.dbline -1
	.dbline 1417
;     return 0;
; }
;                    
; void InitXmit ( void )
; {
	.dbline 1419
;     char cksum;
;     printf ( "\r\nCRTS, Inc.\r\nCleaner Interface Controller\r\nRevision %s\r\n>", Revision );		
	ldy #L115
	sty 2,S
	ldy #L114
	sty 0,S
	xcall $_printf
	.dbline -2
L113:
	.dbline 0 ; func end
	leas 5,S
	rtc
	.dbsym l cksum 4 c
	.dbend
	.dbfunc e ATDGetLevel _ATDGetLevel fI
;        ATD_Num -> 1,SP
$_ATDGetLevel::
	pshd
	.dbline -1
	.dbline 1424
; //    ClearTitler ();
; }
; 	 
; int ATDGetLevel ( char ATD_Num )
; {
	.dbline 1425
;  	ATD0CTL5=ATD0CTL5_Init | ATD_Num;
	ldab 1,S
	orab #128
	stab 0x85
L117:
	.dbline 1426
; 	while ( !(ATD0STAT0 & 0x80) );
L118:
	.dbline 1426
	brclr 0x86,#128,L117
	.dbline 1428
; 	
; 	return (ATD0DR0+ATD0DR1+ATD0DR2+ATD0DR3)/4; 				
	ldd 0x90
	addd 0x92
	addd 0x94
	addd 0x96
	lsrd
	lsrd
	.dbline -2
L116:
	.dbline 0 ; func end
	leas 2,S
	rtc
	.dbsym l ATD_Num 1 c
	.dbend
	.area text
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
L272:
	.byte 'P,'r,'o,'c,58,'L,'i,'n,'e,'u,'p,32,'T,'i,'m,'e
	.byte 32,48,48,48,46,48,32,0
	.area extcode(paged)
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.dbfunc e doevents _doevents fV
	.area text
L552:
	.poff L217
	.poff L229
	.poff L239
	.poff L259
	.poff L263
	.poff L267
	.poff L281
	.poff L286
	.poff L289
	.poff L294
	.poff L309
	.poff L316
	.poff L319
	.poff L327
	.poff L330
	.poff L341
	.poff L351
	.poff L363
	.poff L366
	.poff L382
	.poff L386
	.poff L397
	.poff L411
	.poff L415
	.poff L426
	.poff L440
	.poff L444
	.poff L455
	.poff L469
	.poff L473
	.poff L484
	.poff L498
	.poff L502
	.poff L513
	.poff L532
	.area extcode(paged)
;       vacspeed -> 35,SP
;    travel_dist -> 35,SP
;       vacspeed -> 35,SP
;    travel_dist -> 35,SP
;       vacspeed -> 35,SP
;    travel_dist -> 35,SP
;       vacspeed -> 35,SP
;    travel_dist -> 35,SP
;       vacspeed -> 35,SP
;    travel_dist -> 35,SP
;        tempstr -> 12,SP
;        tempstr -> 12,SP
;        tempstr -> 12,SP
;  LineupTimeMsg -> 13,SP
;   lineup_speed -> 33,SP
;    travel_dist -> 35,SP
;   lineup_speed -> 33,SP
;    travel_dist -> 35,SP
;            var -> 37,SP
;            var -> 37,SP
;              j -> 39,SP
;              i -> 41,SP
$_doevents::
	leas -43,S
	.dbline -1
	.dbline 1546
; }
; 
; /*
; extern unsigned int LA_speed_timer;
; char ext_test = 0;
; char ret_test = 0;
; float interval_test = 0.1;
; char desired_speed_test = 95;
; int ext_pos_test = 100;
; int ret_pos_test = 10;
; 
; 
; void test (void)
; {
;  	static char test_once = 0, startup_test = 0;
; 	
; 	start_sequence = -1;
; 	
; 	if (!startup_test)
; 	{
;         // runs once after reset
; 		startup_test = 1;
; 		stop_LA();
;         desired_speed=0;
;         LA_position=0;
;         start_sequence=-1;
;         done=5;
; 	}		
; 	
; 	if (ext_test)
; 	{
; 		if (!test_once)
; 		{
; 		    test_once = 1;
; 			Timer2 = RTI_One_Sec * interval_test;
; 			
; 			// put code here that needs to run once
; 			ExtendLA();
; 			desired_position = ext_pos_test;
; 			desired_speed = desired_speed_test;
; 			direction = 1;
; 			LA_speed = 0;
; 		}
; 	    if (!Timer2)
; 	    {
; 	        Timer2 = RTI_One_Sec * interval_test;
; 			// put code here that needs to run at a constant rate
; 			
; 			if ( PB3_PWM > 30 )
; 			{
; 			    LA_speed = LA_speed + (((float)PB3_PWM-60)) ;
; 			}
;             if (LA_speed > 0) 
;                 LA_position = LA_position + LA_speed/50;
;             else
;                 LA_speed = 0;
; 				
; 		}
; 		
; 	    LA_speed_timer = 100;
; 		
;         if (!LA_Moving) 
;         {
;             ext_test = 0; 
;             ret_test = 1;
; 			test_once = 0;
; 			LA_Moving = 1;
;         }
; 		
; 	}
; 	else if (ret_test)
; 	{
; 		if (!test_once)
; 		{
; 		    test_once = 1;
; 			Timer2 = RTI_One_Sec * interval_test;
; 			
; 			// put code here that needs to run once
; 			RetractLA();
; 			desired_position = ret_pos_test;
; 			desired_speed = desired_speed_test;
; 			direction = -1;
; 			LA_speed = 0;
; 		}
; 	    if (!Timer2)
; 	    {
; 	        Timer2 = RTI_One_Sec * interval_test;
; 			// put code here that needs to run at a constant rate
; 			if ( PB1_PWM > 30 )
; 			{
; 			    LA_speed = LA_speed + (((float)PB1_PWM-60)) ;
; 			}
;             if (LA_speed > 0) 
;                 LA_position = LA_position - LA_speed/50;
;             else
;                 LA_speed = 0;
; 				
;     	}	
; 		
; 	    LA_speed_timer = 100; 
; 		
;         if (!LA_Moving) 
;         {
;             ext_test = 1; 
;             ret_test = 0;
; 			test_once = 0;
; 			LA_Moving = 1;
;         }
; 		
; 	}
; 	else
; 	{
; 	    test_once = 0;
; 	}
; }
; */
; void doevents ( void )
; {
	.dbline 1551
;     int i,j;
; 	
; 	
; 	
; 	spdPID = &speedPID;
	ldy #_speedPID
	sty _spdPID
	.dbline 1553
; 	
; 	if(initPID){		
	ldy _initPID
	cpy #0
	lbeq L121
	.dbline 1553
	.dbline 1555
; 		
; 		spdPID->pGain=0.5;
	ldd _spdPID
	addd #24
	tfr D,Y
	movw #0,2,-S
	movw #16128,2,-S
	pulx
	stx 0,Y
	pulx
	stx 2,Y
	.dbline 1556
; 		spdPID->iGain=0.2;
	ldd _spdPID
	addd #20
	tfr D,Y
	movw #52429,2,-S
	movw #15948,2,-S
	pulx
	stx 0,Y
	pulx
	stx 2,Y
	.dbline 1557
; 		spdPID->dGain=0.0;
	ldd _spdPID
	addd #28
	tfr D,Y
	movw #0,2,-S
	movw #0,2,-S
	pulx
	stx 0,Y
	pulx
	stx 2,Y
	.dbline 1558
; 		spdPID->iMax=500;
	ldd _spdPID
	addd #12
	tfr D,Y
	movw #0,2,-S
	movw #17402,2,-S
	pulx
	stx 0,Y
	pulx
	stx 2,Y
	.dbline 1559
; 		spdPID->iMin=0;
	ldd _spdPID
	addd #16
	tfr D,Y
	movw #0,2,-S
	movw #0,2,-S
	pulx
	stx 0,Y
	pulx
	stx 2,Y
	.dbline 1561
; 		
; 		initPID=0;		  
	movw #0,_initPID
	.dbline 1562
; 	}
L121:
	.dbline 1565
; 
; 	//Check FullDist to make sure it is no bigger than LA-Center times 2
; 	if (FullDist.value > LACntr.value * 2)
	movw _FullDist+2,2,-S
	movw _FullDist,2,-S
	movw #0,2,-S
	movw #16384,2,-S
	movw _LACntr+2,2,-S
	movw _LACntr,2,-S
	jsr mulf4
	jsr cmpf4
	ble L123
	.dbline 1566
; 	{
	.dbline 1567
; 	    struct menu_var* var = &FullDist;
	ldy #_FullDist
	sty 37,S
	.dbline 1568
; 		var->value = LACntr.value * 2;
	movw #0,2,-S
	movw #16384,2,-S
	movw _LACntr+2,2,-S
	movw _LACntr,2,-S
	jsr mulf4
	pulx
	stx 0,Y
	pulx
	stx 2,Y
	.dbline 1569
; 		getstrval (var);
	ldd 37,S
	xcall $_getstrval
	.dbline 1570
; 		UpdateMenu = 1;
	movb #1,_UpdateMenu
	.dbline 1571
; 	}
L123:
	.dbline 1573
; 	//Check CntrDist to make sure it is no bigger than LA-Center times 2
; 	if (CntrDist.value > LACntr.value * 2)
	movw _CntrDist+2,2,-S
	movw _CntrDist,2,-S
	movw #0,2,-S
	movw #16384,2,-S
	movw _LACntr+2,2,-S
	movw _LACntr,2,-S
	jsr mulf4
	jsr cmpf4
	ble L125
	.dbline 1574
; 	{
	.dbline 1575
; 	    struct menu_var* var = &CntrDist;
	ldy #_CntrDist
	sty 37,S
	.dbline 1576
; 		var->value = LACntr.value * 2;
	movw #0,2,-S
	movw #16384,2,-S
	movw _LACntr+2,2,-S
	movw _LACntr,2,-S
	jsr mulf4
	pulx
	stx 0,Y
	pulx
	stx 2,Y
	.dbline 1577
; 		getstrval (var);
	ldd 37,S
	xcall $_getstrval
	.dbline 1578
; 		UpdateMenu = 1;
	movb #1,_UpdateMenu
	.dbline 1579
; 	}
L125:
	.dbline 1581
; 	
;     if ( Gen_Flags & Gen_Flags_SIN0Rcvd )
	brclr _Gen_Flags,#2,L127
	.dbline 1582
;     {
	.dbline 1585
;         //Display ( SIN0Buf );
;         //command ( SIN0Buf );
;         SIN0Bufptr = 0;
	movw #0,_SIN0Bufptr
	.dbline 1586
;         Gen_Flags &= ~Gen_Flags_SIN0Rcvd;
	bclr _Gen_Flags,#2
	.dbline 1588
;         //printf ( "\r>" );
;     }
L127:
	.dbline 1592
;     
;     //if the 2-Wire system is working, start updating the 2-Wire Stack
; //    if ( !(Gen_Flags & Gen_Flags_No2Wire) )
;     {
	.dbline 1593
;         menu_function();          
	xcall $_menu_function
	.dbline 1596
;     
; 		//Internal H-Bridge & External Contactors
; 		if ( HeadSpeed >= 10 )
	ldy _HeadSpeed
	cpy #10
	blt L129
	.dbline 1597
; 		{
	.dbline 1601
; 
; 		    //PORTB &= ~0x04;	  		   //PB2 / High Left off
; 			//PWMDTY3 = 100;   	   	   //Lower Left On
; 			PTP |= 0x08;			   //PP3 on
	bset 0x258,#8
	.dbline 1605
; 
; 		    //PORTB |= 0x01;			   //PB0 / High Right on
; 			//PWMDTY1 = HeadSpeed;     //Upper Right PWM
; 			PTP |= 0x02;			   //PP1 on
	bset 0x258,#2
	.dbline 1607
; 
; 			PORTA |= 0x04;		   	   //External FET driver
	bset 0,#4
	.dbline 1608
; 		}
L129:
	.dbline 1610
; 
; 		if ( HeadSpeed <= -10 )
	ldy _HeadSpeed
	cpy #65526
	bgt L131
	.dbline 1611
; 		{
	.dbline 1614
; 		    //PORTB &= ~0x01;
; 			//PWMDTY1 = 100;  		   //Lower Right On
; 			PTP |= 0x08;			   //PP3 on
	bset 0x258,#8
	.dbline 1618
; 
; 		    //PORTB |= 0x04;
; 			//PWMDTY3 = abs(HeadSpeed);  //Upper Left On
; 			PTP |= 0x02;			   //PP1 on
	bset 0x258,#2
	.dbline 1620
; 
; 			PORTA |= 0x08;		   	   //External FET driver
	bset 0,#8
	.dbline 1621
; 		}
L131:
	.dbline 1622
; 		if ( HeadSpeed == 0 )
	ldy _HeadSpeed
	cpy #0
	bne L133
	.dbline 1623
; 		{
	.dbline 1628
; 			//PWMDTY3 = PWMDTY1 = 0;	   //Shutdown both
; 			//while ( PTIP & 0x02 || PTIP & 0x08 );  //wait till PWM is off
; 		    //PORTB &= ~0x05;
; 			
; 			PORTA &= ~0x0C;		   	   //External FET driver
	bclr 0,#12
	.dbline 1629
; 		}
L133:
	.dbline 1632
; 		
;         // Head On/Off for both internal H-Bridge and external Head Ramp
; 		if (HeadCWOnOff.value==2 && HeadRampCCW==1 )
	movw _HeadCWOnOff+2,2,-S
	movw _HeadCWOnOff,2,-S
	movw #0,2,-S
	movw #16384,2,-S
	jsr cmpf4
	bne L135
	ldab _HeadRampCCW
	cmpb #1
	bne L135
	.dbline 1633
; 		{ //CW on and CWW was on
	.dbline 1634
; 			    HeadCWOnOff.value=1;
	movw #16256,_HeadCWOnOff
	movw #0,_HeadCWOnOff+2
	.dbline 1635
; 				getstrval( &HeadCWOnOff );
	ldd #_HeadCWOnOff
	xcall $_getstrval
	.dbline 1636
; 				UpdateMenu = 1;
	movb #1,_UpdateMenu
	.dbline 1637
; 		}
	lbra L136
L135:
	.dbline 1638
; 		else if (HeadCWOnOff.value==2 && HeadCCWOnOff.value==1 )
	movw _HeadCWOnOff+2,2,-S
	movw _HeadCWOnOff,2,-S
	movw #0,2,-S
	movw #16384,2,-S
	jsr cmpf4
	bne L137
	movw _HeadCCWOnOff+2,2,-S
	movw _HeadCCWOnOff,2,-S
	movw #0,2,-S
	movw #16256,2,-S
	jsr cmpf4
	bne L137
	.dbline 1639
; 		{ //CW on and CCW off
	.dbline 1640
; 	        if (HdOffTimer)
	ldy _HdOffTimer
	cpy #0
	beq L139
	.dbline 1641
; 			{
	.dbline 1642
; 			    HeadCWOnOff.value=1;
	movw #16256,_HeadCWOnOff
	movw #0,_HeadCWOnOff+2
	.dbline 1643
; 				getstrval( &HeadCWOnOff );
	ldd #_HeadCWOnOff
	xcall $_getstrval
	.dbline 1644
; 				UpdateMenu = 1;
	movb #1,_UpdateMenu
	.dbline 1645
; 			}
	lbra L138
L139:
	.dbline 1647
; 			else
; 			{
	.dbline 1648
; 			    HeadRampCW = 1;
	movb #1,_HeadRampCW
	.dbline 1649
; 	        	HeadRampCCW = 0;
	clr _HeadRampCCW
	.dbline 1650
; 			}
	.dbline 1652
; 			
; 		}
	lbra L138
L137:
	.dbline 1653
; 		else if (HeadCCWOnOff.value==2 && HeadRampCW==1 )
	movw _HeadCCWOnOff+2,2,-S
	movw _HeadCCWOnOff,2,-S
	movw #0,2,-S
	movw #16384,2,-S
	jsr cmpf4
	bne L141
	ldab _HeadRampCW
	cmpb #1
	bne L141
	.dbline 1654
; 		{ //CCW On and CW was on
	.dbline 1655
; 			    HeadCCWOnOff.value=1;
	movw #16256,_HeadCCWOnOff
	movw #0,_HeadCCWOnOff+2
	.dbline 1656
; 				getstrval( &HeadCCWOnOff );
	ldd #_HeadCCWOnOff
	xcall $_getstrval
	.dbline 1657
; 				UpdateMenu = 1;
	movb #1,_UpdateMenu
	.dbline 1658
; 		}
	lbra L142
L141:
	.dbline 1659
; 		else if ( HeadCCWOnOff.value==2 && HeadCWOnOff.value==1 )
	movw _HeadCCWOnOff+2,2,-S
	movw _HeadCCWOnOff,2,-S
	movw #0,2,-S
	movw #16384,2,-S
	jsr cmpf4
	bne L143
	movw _HeadCWOnOff+2,2,-S
	movw _HeadCWOnOff,2,-S
	movw #0,2,-S
	movw #16256,2,-S
	jsr cmpf4
	bne L143
	.dbline 1660
; 		{ //CCW on and CW off
	.dbline 1661
; 	        if (HdOffTimer)
	ldy _HdOffTimer
	cpy #0
	beq L145
	.dbline 1662
; 			{
	.dbline 1663
; 			    HeadCCWOnOff.value=1;
	movw #16256,_HeadCCWOnOff
	movw #0,_HeadCCWOnOff+2
	.dbline 1664
; 				getstrval( &HeadCCWOnOff );
	ldd #_HeadCCWOnOff
	xcall $_getstrval
	.dbline 1665
; 				UpdateMenu = 1;
	movb #1,_UpdateMenu
	.dbline 1666
; 			}
	bra L144
L145:
	.dbline 1668
; 			else
; 			{
	.dbline 1669
; 			    HeadRampCCW = 1;
	movb #1,_HeadRampCCW
	.dbline 1670
; 	        	HeadRampCW = 0;
	clr _HeadRampCW
	.dbline 1671
; 			}
	.dbline 1672
; 		}
	bra L144
L143:
	.dbline 1673
; 		else if ( HeadRampCW == 1 )
	ldab _HeadRampCW
	cmpb #1
	bne L147
	.dbline 1674
; 		{
	.dbline 1675
; 		    HdOffTimer = RTI_One_Sec * 7;
	movw #6832,_HdOffTimer
	.dbline 1676
; 			HeadRampCW = -1;
	movb #65535,_HeadRampCW
	.dbline 1677
; 			HeadRampCCW = 0;
	clr _HeadRampCCW
	.dbline 1678
; 		}
	bra L148
L147:
	.dbline 1679
; 		else if ( HeadRampCCW == 1 )
	ldab _HeadRampCCW
	cmpb #1
	bne L149
	.dbline 1680
; 		{
	.dbline 1681
; 		    HdOffTimer = RTI_One_Sec * 7;
	movw #6832,_HdOffTimer
	.dbline 1682
; 			HeadRampCCW = -1;
	movb #65535,_HeadRampCCW
	.dbline 1683
; 	        HeadRampCW = 0;
	clr _HeadRampCW
	.dbline 1684
; 		}
	bra L150
L149:
	.dbline 1685
; 		else if ( HeadRampCW != 1 && HeadRampCCW != 1 && !HdOffTimer )
	ldab _HeadRampCW
	cmpb #1
	beq L151
	ldab _HeadRampCCW
	cmpb #1
	beq L151
	ldy _HdOffTimer
	cpy #0
	bne L151
	.dbline 1686
; 		{ //Both off and Timer expired
	.dbline 1687
; 		    PTP = PTP & ~0x0a;  // disable both drivers after timer expires
	bclr 0x258,#10
	.dbline 1688
; 		}
L151:
L150:
L148:
L144:
L142:
L138:
L136:
	.dbline 1690
; 		
; 		if ( BlowersOnOff.value==2 )
	movw _BlowersOnOff+2,2,-S
	movw _BlowersOnOff,2,-S
	movw #0,2,-S
	movw #16384,2,-S
	jsr cmpf4
	bne L153
	.dbline 1691
; 		    PORTB |= 0x10;
	bset 0x1,#16
	bra L154
L153:
	.dbline 1693
; 		else
; 		    PORTB &= ~0x10;
	bclr 0x1,#16
L154:
	.dbline 1695
; 
; 		if (VacuumOnOff.value==2 || ((TC0_RCVD_Data & TeleData_Cam1) && (TC0_RCVD_Data & TeleData_Cam2) && (TC0_RCVD_Data & TeleData_Cam3)))
	movw _VacuumOnOff+2,2,-S
	movw _VacuumOnOff,2,-S
	movw #0,2,-S
	movw #16384,2,-S
	jsr cmpf4
	beq L157
	ldd _TC0_RCVD_Data
	anda #0
	andb #-128
	cpd #0
	beq L155
	ldd _TC0_RCVD_Data
	anda #0
	andb #64
	cpd #0
	beq L155
	ldd _TC0_RCVD_Data
	anda #0
	andb #32
	cpd #0
	beq L155
L157:
	.dbline 1696
; 		    PORTB |= 0x40;
	bset 0x1,#64
	bra L156
L155:
	.dbline 1698
; 		else
; 		    PORTB &= ~0x40;
	bclr 0x1,#64
L156:
	.dbline 1700
; 
; 		if ( SealsOnOff.value==2 )
	movw _SealsOnOff+2,2,-S
	movw _SealsOnOff,2,-S
	movw #0,2,-S
	movw #16384,2,-S
	jsr cmpf4
	lbne L158
	.dbline 1701
; 		{
	.dbline 1702
;             if ( !(PORTB & 0x20) )
	ldab 0x1
	bitb #32
	lbne L159
	.dbline 1703
; 			{ 
	.dbline 1705
;             	//machine size enables/disables outboard seal controlled by compressor pack
;                 if ( MachineSize.value==1 || MachineSize.value==2 )
	movw _MachineSize+2,2,-S
	movw _MachineSize,2,-S
	movw #0,2,-S
	movw #16256,2,-S
	jsr cmpf4
	beq L164
	movw _MachineSize+2,2,-S
	movw _MachineSize,2,-S
	movw #0,2,-S
	movw #16384,2,-S
	jsr cmpf4
	bne L162
L164:
	.dbline 1706
;                 {
	.dbline 1707
;                     gTxMsg.ID = 0x438;
	movw #1080,_gTxMsg
	.dbline 1708
;                     gTxMsg.LEN = 1; 
	movb #1,_gTxMsg+2
	.dbline 1709
;                     gTxMsg.BUF[0] = 1;
	movb #1,_gTxMsg+4
	.dbline 1710
;                     if (!MCOHW_PushMessage(&gTxMsg))
	ldd #_gTxMsg
	xcall $_MCOHW_PushMessage
	clra
	cmpb #0
	bne L167
	.dbline 1711
;                     {
	.dbline 1713
;                         // failed to transmit
;                         MCOUSER_FatalError(0x8801);
	ldd #34817
	xcall $_MCOUSER_FatalError
	.dbline 1714
;                     }
L167:
	.dbline 1716
;                     //! Transmit this without using the TPDO
;     		    }
L162:
	.dbline 1717
;     			PORTB |= 0x20;
	bset 0x1,#32
	.dbline 1718
; 			}
	.dbline 1719
; 		}
	lbra L159
L158:
	.dbline 1721
; 		else
; 		{
	.dbline 1722
;             if ( PORTB & 0x20 )
	brclr 0x1,#32,X17
	bra X18
X17: lbra L169
X18:
	.dbline 1723
; 			{ 
	.dbline 1725
;             	//machine size enables/disables outboard seal controlled by compressor pack
;                 if ( MachineSize.value==1 || MachineSize.value==2 )
	movw _MachineSize+2,2,-S
	movw _MachineSize,2,-S
	movw #0,2,-S
	movw #16256,2,-S
	jsr cmpf4
	beq L173
	movw _MachineSize+2,2,-S
	movw _MachineSize,2,-S
	movw #0,2,-S
	movw #16384,2,-S
	jsr cmpf4
	bne L171
L173:
	.dbline 1726
;                 {
	.dbline 1727
;     			    gTxMsg.ID = 0x438;
	movw #1080,_gTxMsg
	.dbline 1728
;                     gTxMsg.LEN = 1; 
	movb #1,_gTxMsg+2
	.dbline 1729
;                     gTxMsg.BUF[0] = 0;
	clr _gTxMsg+4
	.dbline 1730
;                     if (!MCOHW_PushMessage(&gTxMsg))
	ldd #_gTxMsg
	xcall $_MCOHW_PushMessage
	clra
	cmpb #0
	bne L176
	.dbline 1731
;                     {
	.dbline 1733
;                         // failed to transmit
;                         MCOUSER_FatalError(0x8801);
	ldd #34817
	xcall $_MCOUSER_FatalError
	.dbline 1734
;                     }
L176:
	.dbline 1736
;                     //! Transmit this without using the TPDO
;     		    }
L171:
	.dbline 1737
;     			PORTB &= ~0x20;
	bclr 0x1,#32
	.dbline 1738
; 			}
L169:
	.dbline 1739
; 		}
L159:
	.dbline 1741
;         
;         if ( StoreFlag && State == FinishState)
	ldab _StoreFlag
	cmpb #0
	beq L178
	ldab _State
	cmpb #35
	bne L178
	.dbline 1742
;         {
	.dbline 1743
;             StoreFlag = 0;
	clr _StoreFlag
	.dbline 1744
;             Save_Variables();
	xcall $_Save_Variables
	.dbline 1745
;         }
L178:
	.dbline 1747
;   
;         if ( MenuStackc[StackPointer].Index[0] == 0 &&
	ldab _StackPointer
	clra
	tfr D,Y
	ldd #6
	emul
	std 10,S
	ldy #_MenuStackc
	sty 8,S
	addd 8,S
	tfr D,Y
	ldab 0,Y
	cmpb #0
	lbne L180
	ldd 10,S
	ldy #_MenuStackc+1
	sty 8,S
	addd 8,S
	tfr D,Y
	ldab 0,Y
	cmpb #0
	lbne L180
	ldd 10,S
	ldy #_MenuStackc+2
	sty 8,S
	addd 8,S
	tfr D,Y
	ldab 0,Y
	cmpb #0
	lbne L180
	ldd 10,S
	ldy #_MenuStackc+3
	sty 8,S
	addd 8,S
	tfr D,Y
	ldab 0,Y
	cmpb #4
	lbne L180
	ldd _cam_add
	anda #0
	andb #-1
	tfr D,Y
	ldab _gProcImg+18
	clra
	tfr D,X
	sty 8,S
	cpx 8,S
	bne L187
	ldd _cam_add
	tfr A,B
	clra
	tfr D,Y
	ldab _gProcImg+19
	clra
	tfr D,X
	sty 8,S
	cpx 8,S
	beq L180
L187:
	.dbline 1754
;              MenuStackc[StackPointer].Index[1] == 0 &&
;              MenuStackc[StackPointer].Index[2] == 0 &&
;              MenuStackc[StackPointer].Index[3] == 4 &&
;              ( gProcImg[OUT_digi_4] != ( cam_add & 0x00FF ) ||
;              gProcImg[OUT_digi_5] != cam_add>>8 ) ) 
; 			 
;         {
	.dbline 1755
;             if ( !CamAddressXmitd )
	ldab _CamAddressXmitd
	cmpb #0
	bne L188
	.dbline 1756
; 			{
	.dbline 1757
;     			gProcImg[OUT_digi_4] = cam_add & 0x00FF;
	ldd _cam_add
	anda #0
	andb #-1
	stab _gProcImg+18
	.dbline 1758
;                 gProcImg[OUT_digi_5] = cam_add>>8;			
	ldd _cam_add
	tfr A,B
	clra
	stab _gProcImg+19
	.dbline 1760
;                 
;                 gTxMsg.ID = 0x421;
	movw #1057,_gTxMsg
	.dbline 1761
;                 gTxMsg.LEN = 2; 
	movb #2,_gTxMsg+2
	.dbline 1762
;                 gTxMsg.BUF[0] = cam_add;
	ldab _cam_add+1
	stab _gTxMsg+4
	.dbline 1763
;                 gTxMsg.BUF[1] = cam_add >> 8;      
	ldd _cam_add
	tfr A,B
	clra
	stab _gTxMsg+4+1
	.dbline 1764
;                 if (!MCOHW_PushMessage(&gTxMsg))
	ldd #_gTxMsg
	xcall $_MCOHW_PushMessage
	clra
	cmpb #0
	bne L196
	.dbline 1765
;                 {
	.dbline 1767
;                 // failed to transmit
;                 MCOUSER_FatalError(0x8801);
	ldd #34817
	xcall $_MCOUSER_FatalError
	.dbline 1768
;                 }
L196:
	.dbline 1770
;                 //! Transmit this without using the TPDO
; 			}
L188:
	.dbline 1771
; 		    CamAddressXmitd = 1;
	movb #1,_CamAddressXmitd
	.dbline 1773
;             
;         }
	bra L181
L180:
	.dbline 1775
; 		else
; 		{
	.dbline 1776
; 		    CamAddressXmitd = 0;
	clr _CamAddressXmitd
	.dbline 1777
; 		}
L181:
	.dbline 1779
; 	 	
; 		if (State == FinishState)
	ldab _State
	cmpb #35
	bne L198
	.dbline 1780
; 		    InProcess = 0;
	clr _InProcess
	bra L199
L198:
	.dbline 1782
; 		else
; 		    InProcess = 1;
	movb #1,_InProcess
L199:
	.dbline 1784
; 			
; 		CompressorMain ();
	xcall $_CompressorMain
	.dbline 1785
;      	CameraMain ();
	xcall $_CameraMain
	.dbline 1788
; 		
; 	     
;         if ( gProcImg[OUT_digi_14] )//&& !strcmp(MachineSize," 8-10") )
	ldab _gProcImg+28
	cmpb #0
	beq L200
	.dbline 1789
;         {
	.dbline 1790
; 			Move_Position = gProcImg[OUT_digi_13];  
	ldab _gProcImg+27
	clra
	tfr D,Y
	sty _Move_Position
	.dbline 1791
;             Move_Speed = gProcImg[OUT_digi_13+1];
	ldab _gProcImg+28
	clra
	std _Move_Speed
	.dbline 1792
;             gProcImg[OUT_digi_13] = 0;
	clr _gProcImg+27
	.dbline 1793
;             gProcImg[OUT_digi_13+1] = 0;
	clr _gProcImg+28
	.dbline 1794
;         }             
L200:
	.dbline 1796
; 
; 		LAMain ( Move_Position, Move_Speed);
	ldy _Move_Speed
	sty 0,S
	ldd _Move_Position
	xcall $_LAMain
	.dbline 1799
; //	test ();
; 
;             if ( gProcImg[OUT_digi_0] & 0x02 )
	brclr _gProcImg+14,#2,L207
	.dbline 1800
;             {
	.dbline 1802
; 			    //if ( State == FinishState && ( VSEL_PORT & CAM_ON ) )
; 				if (State == FinishState && (ActCam4 == TrigCam4 && ActCam5 == TrigCam5))				   //Trigger on Vacuum Camera
	ldab _State
	cmpb #35
	bne L210
	ldab _ActCam4
	cmpb _TrigCam4
	bne L210
	ldab _ActCam5
	cmpb _TrigCam5
	bne L210
	.dbline 1803
; 				{				
	.dbline 1804
; 				    State = TrigState;
	movb #1,_State
	.dbline 1805
; 					PressureMsgSent = 0;
	clr _PressureMsgSent
	.dbline 1806
; 					Use_IN_digi_15|=(1<<0);
	bset _Use_IN_digi_15,#1
	.dbline 1807
; 					gProcImg[IN_digi_15] = Use_IN_digi_15;
	movb _Use_IN_digi_15,_gProcImg+9
	.dbline 1808
; 				}
L210:
	.dbline 1809
; 				StateTime = 0;
	movw #0,_StateTime
	movw #0,_StateTime+2
	.dbline 1810
;                 gProcImg[OUT_digi_0] &=  ~0x02;				
	bclr _gProcImg+14,#2
	.dbline 1811
;             }			
L207:
	.dbline 1815
; 		
; 
; 			//Cleaning routine, See State definitions for exact sequence!!!!!!
; 			switch (State)
	ldab _State
	clra
	std 37,S
	cpd #1
	lblt L214
	ldy 37,S
	cpy #35
	bgt L551
	ldy #L552
	ldx 37,S
	dex
	tfr X,D
	lsld
	sty 8,S
	addd 8,S
	tfr D,Y
	ldy 0,Y
	jmp 0,Y
X1:
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
L551:
	ldy 37,S
	cpy #99
	lbeq L534
	lbra L214
L217:
	.dbline 1818
;             {
; 				case TrigState:
; 					if ( StateTime >= RTI_One_Sec * 0.5 ){
	movw _StateTime+2,2,-S
	movw _StateTime,2,-S
	jsr ulong2fp
	movw #0,2,-S
	movw #17396,2,-S
	jsr cmpf4
	lblt L215
	.dbline 1818
	.dbline 1819
; 						if ( Pressure.value <= (LowSetPoint.value - 9)  && 
	movw _Pressure+2,2,-S
	movw _Pressure,2,-S
	movw _LowSetPoint+2,2,-S
	movw _LowSetPoint,2,-S
	movw #0,2,-S
	movw #16656,2,-S
	jsr subf4
	jsr cmpf4
	bgt L223
	movw _MachineSize+2,2,-S
	movw _MachineSize,2,-S
	movw #0,2,-S
	movw #16448,2,-S
	jsr cmpf4
	beq L222
L223:
	movw _MachineSize+2,2,-S
	movw _MachineSize,2,-S
	movw #0,2,-S
	movw #16512,2,-S
	jsr cmpf4
	bne L220
	ldab _PressureMsgSent
	cmpb #0
	bne L220
L222:
	.dbline 1822
; 							 MachineSize.value==3 || MachineSize.value==4   &&
; 							!PressureMsgSent)
; 						{
	.dbline 1823
; 							Display ( "Warn:AIR PRESSURE LOW" );
	ldd #L224
	xcall $_Display
	.dbline 1824
; 							PressureMsgSent = 1;
	movb #1,_PressureMsgSent
	.dbline 1825
; 						}
L220:
	.dbline 1826
; 						if ( PressureMsgSent )
	ldab _PressureMsgSent
	cmpb #0
	beq L225
	.dbline 1827
; 						{
	.dbline 1828
; 							if ( StateTime >= RTI_One_Sec * 3 )
	movw _StateTime+2,2,-S
	movw _StateTime,2,-S
	movw #2928,2,-S
	movw #0,2,-S
	jsr cmp4
	lblo L215
	.dbline 1829
; 							{
	.dbline 1831
; 							    //MCO_InitTPDO(4,0x318,100,100,5,IN_digi_3); 
; 								Move_Speed = LASpeed.value;
	movw _LASpeed+2,2,-S
	movw _LASpeed,2,-S
	jsr fp2int
	std _Move_Speed
	.dbline 1832
; 								Move_Position = 0; 
	movw #0,_Move_Position
	.dbline 1833
; 								LA_Moving = LA_Moved = 0;
	clr _LA_Moved
	clr _LA_Moving
	.dbline 1834
; 								State++;
	inc _State
	.dbline 1835
; 							}
	.dbline 1836
; 						}
	lbra L215
L225:
	.dbline 1838
; 						else
; 						{
	.dbline 1840
; 							//MCO_InitTPDO(4,0x318,100,100,5,IN_digi_3); 
; 							Move_Speed = LASpeed.value;
	movw _LASpeed+2,2,-S
	movw _LASpeed,2,-S
	jsr fp2int
	std _Move_Speed
	.dbline 1841
; 							Move_Position = 0; 
	movw #0,_Move_Position
	.dbline 1842
; 							LA_Moving = LA_Moved = 0;
	clr _LA_Moved
	clr _LA_Moving
	.dbline 1843
; 							State++;
	inc _State
	.dbline 1844
; 						}
	.dbline 1845
; 					}
	.dbline 1846
; 				break;
	lbra L215
L229:
	.dbline 1850
; 				
; 				case TrigRetractLA:
; 
; 					if(start_sequence==-1)//wait until home found
	ldab _start_sequence
	cmpb #65535
	lbne L215
	.dbline 1851
; 					{
	.dbline 1852
;     					if ( (LA_Moving && LA_Moved) || StateTime > RTI_One_Sec) //Wait until moving, or if already home, wait 1 second
	ldab _LA_Moving
	cmpb #0
	beq L235
	ldab _LA_Moved
	cmpb #0
	bne L234
L235:
	movw _StateTime+2,2,-S
	movw _StateTime,2,-S
	movw #976,2,-S
	movw #0,2,-S
	jsr cmp4
	lbls L215
L234:
	.dbline 1853
;     					{
	.dbline 1854
;     					    if (!LA_Moving) //Wait till not moving before continuing
	ldab _LA_Moving
	cmpb #0
	lbne L215
	.dbline 1855
;     						{
	.dbline 1856
;     						    StateTime = 0;
	movw #0,_StateTime
	movw #0,_StateTime+2
	.dbline 1857
; 								LineupTimer = 0;
	movw #0,_LineupTimer
	movw #0,_LineupTimer+2
	.dbline 1858
;     				       		Display ( "Proc:Line Up" ); //do not call this function repeatedly or CAN will slow down (here and elsewhere)
	ldd #L238
	xcall $_Display
	.dbline 1859
;     						    State++;  
	inc _State
	.dbline 1860
;     						}
	.dbline 1861
;     					}
	.dbline 1862
; 					}				
	.dbline 1863
; 				break;
	lbra L215
L239:
	.dbline 1867
; 
; 				case TrigState2: 
; 
; 					if(StateTime < RTI_One_Sec){
	movw _StateTime+2,2,-S
	movw _StateTime,2,-S
	movw #976,2,-S
	movw #0,2,-S
	jsr cmp4
	bhs L240
	.dbline 1867
	.dbline 1868
; 						break;
	lbra L215
L240:
	.dbline 1872
; 					}
; 
; 					// If no movement is required, skip to the end state for this sequence.
; 					if ( !LineUpDist.value ) {    
	movw _LineUpDist+2,2,-S
	movw _LineUpDist,2,-S
	movw #0,2,-S
	movw #0,2,-S
	jsr cmpf4
	bne L242
	.dbline 1872
	.dbline 1873
;                         State = StartSealState; 
	movb #7,_State
	.dbline 1874
; 						break;
	lbra L215
L242:
	.dbline 1878
;                     }
;                     
; 					// --- Configure Movement Parameters ---
; 				    if ( LineUpClnVac.value==1 ) { // Negative Direction
	movw _LineUpClnVac+2,2,-S
	movw _LineUpClnVac,2,-S
	movw #0,2,-S
	movw #16256,2,-S
	jsr cmpf4
	lbne L244
	.dbline 1878
	.dbline 1879
; 						int travel_dist = (int)((LineUpDist.value + 0.001) * -10);
	movw #0,2,-S
	movw #49440,2,-S
	movw _LineUpDist+2,2,-S
	movw _LineUpDist,2,-S
	movw #4719,2,-S
	movw #14979,2,-S
	jsr addf4
	jsr mulf4
	jsr fp2int
	tfr D,Y
	sty 35,S
	.dbline 1880
; 						int lineup_speed = (int)(LineupSpeed.value * 120);
	movw #0,2,-S
	movw #17136,2,-S
	movw _LineupSpeed+2,2,-S
	movw _LineupSpeed,2,-S
	jsr mulf4
	jsr fp2int
	std 33,S
	.dbline 1882
; 
; 						gProcImg[IN_digi_3] = travel_dist;
	ldab 36,S
	stab _gProcImg+3
	.dbline 1883
; 						gProcImg[IN_digi_4] = travel_dist >> 8;
	ldd 35,S
	tfr A,B
	clra
	tstb
	bge X2
	coma
X2:
	stab _gProcImg+4
	.dbline 1885
; 						
;     					gProcImg[IN_digi_6] = ~lineup_speed;
	ldd 33,S
	coma
	comb
	stab _gProcImg+6
	.dbline 1886
;     					gProcImg[IN_digi_7] = ~lineup_speed >> 8;
	ldd 33,S
	coma
	comb
	tfr A,B
	clra
	tstb
	bge X3
	coma
X3:
	stab _gProcImg+7
	.dbline 1887
; 					} else { // Positive Direction
	lbra L245
L244:
	.dbline 1887
	.dbline 1888
; 						int travel_dist = (int)((LineUpDist.value + 0.001) * 10);
	movw #0,2,-S
	movw #16672,2,-S
	movw _LineUpDist+2,2,-S
	movw _LineUpDist,2,-S
	movw #4719,2,-S
	movw #14979,2,-S
	jsr addf4
	jsr mulf4
	jsr fp2int
	tfr D,Y
	sty 35,S
	.dbline 1889
; 						int lineup_speed = (int)(LineupSpeed.value * 120);
	movw #0,2,-S
	movw #17136,2,-S
	movw _LineupSpeed+2,2,-S
	movw _LineupSpeed,2,-S
	jsr mulf4
	jsr fp2int
	std 33,S
	.dbline 1891
; 
; 						gProcImg[IN_digi_3] = travel_dist;
	ldab 36,S
	stab _gProcImg+3
	.dbline 1892
; 	    				gProcImg[IN_digi_4] = travel_dist >> 8;
	ldd 35,S
	tfr A,B
	clra
	tstb
	bge X4
	coma
X4:
	stab _gProcImg+4
	.dbline 1894
; 						
; 	    				gProcImg[IN_digi_6] = lineup_speed;
	ldab 34,S
	stab _gProcImg+6
	.dbline 1895
; 	    				gProcImg[IN_digi_7] = lineup_speed >> 8;
	ldd 33,S
	tfr A,B
	clra
	tstb
	bge X5
	coma
X5:
	stab _gProcImg+7
	.dbline 1896
; 					}
L245:
	.dbline 1897
; 					gProcImg[IN_digi_5] = 0x01; // Send Start Command
	movb #1,_gProcImg+5
	.dbline 1901
; 
;                     // --- Start Master Watchdog Timer ---
; 					// CRITICAL SAFETY CHECK: Prevent division by zero.
; 					if (LineupSpeed.value > 0) {
	movw _LineupSpeed+2,2,-S
	movw _LineupSpeed,2,-S
	movw #0,2,-S
	movw #0,2,-S
	jsr cmpf4
	ble L255
	.dbline 1901
	.dbline 1902
; 						SequenceTimer = (LineUpDist.value / (6 * LineupSpeed.value)) * 1.4 + 5;
	movw #13107,2,-S
	movw #16307,2,-S
	movw _LineUpDist+2,2,-S
	movw _LineUpDist,2,-S
	movw #0,2,-S
	movw #16576,2,-S
	movw _LineupSpeed+2,2,-S
	movw _LineupSpeed,2,-S
	jsr mulf4
	jsr divf4
	jsr mulf4
	movw #0,2,-S
	movw #16544,2,-S
	jsr addf4
	jsr fp2int
	std _SequenceTimer
	.dbline 1903
; 					} else {
	bra L256
L255:
	.dbline 1903
	.dbline 1905
; 						// If speed is zero, use a default, safe timeout.
; 						SequenceTimer = 5 * RTI_One_Sec; // Example: 5 seconds
	movw #4880,_SequenceTimer
	.dbline 1906
; 					}
L256:
	.dbline 1909
; 
; 					// Failsafe: Ensure the timer always has a positive value.
; 					if ( SequenceTimer <= 0 ) {
	ldy _SequenceTimer
	cpy #0
	bne L257
	.dbline 1909
	.dbline 1910
; 						SequenceTimer = 1;
	movw #1,_SequenceTimer
	.dbline 1911
; 					}
L257:
	.dbline 1914
; 
; 					// Immediately advance to the state that waits for start confirmation.
; 					State++; // Advance to WaitingForLineUpConfirmation
	inc _State
	.dbline 1915
; 				break;
	lbra L215
L259:
	.dbline 1919
; 				
; 				case WaitingForMoving:
; 				    // STATE GOAL: Wait for CAN bus confirmation that movement has begun.
; 					if ( gProcImg[OUT_digi_12] ) {
	ldab _gProcImg+26
	cmpb #0
	lbeq L215
	.dbline 1919
	.dbline 1920
; 					    State++; // Success: Move to LineUpTravelInProgress
	inc _State
	.dbline 1921
; 						StateTime = 0;
	movw #0,_StateTime
	movw #0,_StateTime+2
	.dbline 1922
; 					}
	.dbline 1924
; 					// If confirmation never arrives, master SequenceTimer will trigger ErrorState.
; 				break;
	lbra L215
L263:
	.dbline 1928
; 				
; 				case LineUpInProgress:
; 				    // STATE GOAL: Monitor for the completion of the movement.
; 					if ( !gProcImg[OUT_digi_12] ) {
	ldab _gProcImg+26
	cmpb #0
	lbne L215
	.dbline 1928
	.dbline 1930
; 					    // Success: movement completed. Advance to the cleanup state.
; 					    State++; // Advance to LineUpTravelComplete
	inc _State
	.dbline 1931
; 						StateTime = 0; // Reset timer for the next state's logic
	movw #0,_StateTime
	movw #0,_StateTime+2
	.dbline 1932
; 					}
	.dbline 1934
; 					// If movement stalls, master SequenceTimer will trigger ErrorState.
; 				break;
	lbra L215
L267:
	.dbline 1940
; 				
; 				case LineUpComplete:
; 				    // STATE GOAL: Display message, perform timed cleanup, and transition.
; 					
; 					// This block runs only ONCE upon entering this state.
; 					if (StateTime < RTI_One_Sec) {
	movw _StateTime+2,2,-S
	movw _StateTime,2,-S
	movw #976,2,-S
	movw #0,2,-S
	jsr cmp4
	lbhs L268
	.dbline 1940
	.dbline 1941
; 						SequenceTimer = 0; // Disable the master watchdog timer.
	movw #0,_SequenceTimer
	.dbline 1943
; 						
; 						LineupTimeCapture = LineupTimer; // Capture the final time.
	movw _LineupTimer,_LineupTimeCapture
	movw _LineupTimer+2,_LineupTimeCapture+2
	.dbline 1946
; 						
; 						// Display message if enabled
; 						if (LineupTimeOnOff.value == 2) {
	movw _LineupTimeOnOff+2,2,-S
	movw _LineupTimeOnOff,2,-S
	movw #0,2,-S
	movw #16384,2,-S
	jsr cmpf4
	bne L270
	.dbline 1946
	.dbline 1947
;         				    char LineupTimeMsg[] = "Proc:Lineup Time 000.0 "; // Use a different buffer name
	ldy #L272
	leax 13,S
	ldd #12
X6:
	movw 2,Y+,2,X+
	dbne D,X6
	.dbline 1948
;         					sprintf(LineupTimeMsg, "Proc:Lineup Time %3.1f", (float)LineupTimeCapture / RTI_One_Sec);
	movw _LineupTimeCapture+2,2,-S
	movw _LineupTimeCapture,2,-S
	jsr ulong2fp
	movw #0,2,-S
	movw #17524,2,-S
	jsr divf4
	puly
	sty 6,S
	puly
	sty 6,S
	ldy #L273
	sty 2,S
	leay 13,S
	sty 0,S
	xcall $_sprintf
	.dbline 1949
;         					Display(LineupTimeMsg);
	leay 13,S
	tfr Y,D
	xcall $_Display
	.dbline 1950
;         				}
L270:
	.dbline 1952
; 					
; 						gProcImg[IN_digi_3] = 0;
	clr _gProcImg+3
	.dbline 1953
;         				gProcImg[IN_digi_4] = 0;
	clr _gProcImg+4
	.dbline 1954
;         				gProcImg[IN_digi_5] = 0;
	clr _gProcImg+5
	.dbline 1955
;         				gProcImg[IN_digi_6] = 0;
	clr _gProcImg+6
	.dbline 1956
;         				gProcImg[IN_digi_7] = 0;
	clr _gProcImg+7
	.dbline 1958
; 
; 						StateTime = RTI_One_Sec; // Advance StateTime to 1 second, so this executes only once.
	movw #0,_StateTime
	movw #976,_StateTime+2
	.dbline 1959
; 					}
L268:
	.dbline 1961
; 					
; 					if ( StateTime > 2 * RTI_One_Sec ) {
	movw _StateTime+2,2,-S
	movw _StateTime,2,-S
	movw #1952,2,-S
	movw #0,2,-S
	jsr cmp4
	lbls L215
	.dbline 1961
	.dbline 1963
; 						// After 1 second (Statetime was initially advanced to 1 second above), transition to the next state in the machine.
; 						State++;
	inc _State
	.dbline 1964
; 					}
	.dbline 1965
; 				break;
	lbra L215
L281:
	.dbline 1970
; 
; 				
; 			    case StartSealState:
; 				    //MCO_InitTPDO(4,0x318,0,100,5,IN_digi_3);
;            		    CStrks = CntrStrokes.value;
	movw _CntrStrokes+2,2,-S
	movw _CntrStrokes,2,-S
	jsr fp2int
	tfr D,Y
	sty _CStrks
	.dbline 1971
;            			FStrks = FullStrokes.value;
	movw _FullStrokes+2,2,-S
	movw _FullStrokes,2,-S
	jsr fp2int
	tfr D,Y
	sty _FStrks
	.dbline 1972
;            			CDist = CntrDist.value*10;
	movw #0,2,-S
	movw #16672,2,-S
	movw _CntrDist+2,2,-S
	movw _CntrDist,2,-S
	jsr mulf4
	jsr fp2int
	tfr D,Y
	sty _CDist
	.dbline 1973
;            			FDist = FullDist.value*10;
	movw #0,2,-S
	movw #16672,2,-S
	movw _FullDist+2,2,-S
	movw _FullDist,2,-S
	jsr mulf4
	jsr fp2int
	tfr D,Y
	sty _FDist
	.dbline 1974
;            			Cntr = LACntr.value*10;
	movw #0,2,-S
	movw #16672,2,-S
	movw _LACntr+2,2,-S
	movw _LACntr,2,-S
	jsr mulf4
	jsr fp2int
	std _Cntr
	.dbline 1975
; 					HdDirection = HdForward;
	movb #1,_HdDirection
	.dbline 1977
; 					
;            			Display ( "Proc:Inflating Seals" );
	ldd #L282
	xcall $_Display
	.dbline 1979
; 										
; 					SealsOnOff.value = 2; 
	movw #16384,_SealsOnOff
	movw #0,_SealsOnOff+2
	.dbline 1980
; 					getstrval( &SealsOnOff );
	ldd #_SealsOnOff
	xcall $_getstrval
	.dbline 1981
; 					strncpy(SealsOnOff.str_value," ON",SealsOnOff.len_str);
	ldab _SealsOnOff+17
	tfr B,Y
	sty 2,S
	ldy #L284
	sty 0,S
	ldd #_SealsOnOff+18
	xcall $_strncpy
	.dbline 1982
; 					getvalue(&SealsOnOff,0);
	ldy #0
	sty 0,S
	ldd #_SealsOnOff
	xcall $_getvalue
	leas 4,S
	.dbline 1984
; 					
; 					StateTime = 0;
	movw #0,_StateTime
	movw #0,_StateTime+2
	.dbline 1985
; 					State++;
	inc _State
	.dbline 1986
; 				break;
	lbra L215
L286:
	.dbline 1989
; 
; 			    case SealWaitState:
; 					LA_Moved = 0;
	clr _LA_Moved
	.dbline 1990
; 					if ( StateTime >= RTI_One_Sec * SealTime.value )
	movw _StateTime+2,2,-S
	movw _StateTime,2,-S
	jsr ulong2fp
	movw #0,2,-S
	movw #17524,2,-S
	movw _SealTime+2,2,-S
	movw _SealTime,2,-S
	jsr mulf4
	jsr cmpf4
	lblt L215
	.dbline 1991
; 					{
	.dbline 1992
; 				        StateTime = 0;
	movw #0,_StateTime
	movw #0,_StateTime+2
	.dbline 1993
; 						State++;
	inc _State
	.dbline 1995
; 						
; 					}
	.dbline 1996
; 			    break;
	lbra L215
L289:
	.dbline 2001
; 				
; 				
; 				case StartExtendState:
; 				
;         			Move_Speed = LASpeed.value;
	movw _LASpeed+2,2,-S
	movw _LASpeed,2,-S
	jsr fp2int
	tfr D,Y
	sty _Move_Speed
	.dbline 2002
; 					Move_Position = Cntr; //Move away from home
	movw _Cntr,_Move_Position
	.dbline 2003
; 					if ( (LA_Moving && LA_Moved) || StateTime > RTI_One_Sec)
	ldab _LA_Moving
	cmpb #0
	beq L293
	ldab _LA_Moved
	cmpb #0
	bne L292
L293:
	movw _StateTime+2,2,-S
	movw _StateTime,2,-S
	movw #976,2,-S
	movw #0,2,-S
	jsr cmp4
	lbls L215
L292:
	.dbline 2004
; 					    State++;  //Wait till moving
	inc _State
	.dbline 2005
; 				break;
	lbra L215
L294:
	.dbline 2009
; 				
; 			
; 				case StartCleanState:
; 				    if (!LA_Moving && LA_Moved)
	ldab _LA_Moving
	cmpb #0
	lbne L215
	ldab _LA_Moved
	cmpb #0
	lbeq L215
	.dbline 2010
; 					{
	.dbline 2013
;                         
; 						
; 						if ( TestModeOnOff.value==1 )
	movw _TestModeOnOff+2,2,-S
	movw _TestModeOnOff,2,-S
	movw #0,2,-S
	movw #16256,2,-S
	jsr cmpf4
	lbne L297
	.dbline 2014
; 						{ 
	.dbline 2015
;     						if ( HdDirection == HdForward )
	ldab _HdDirection
	cmpb #1
	bne L299
	.dbline 2016
;     						{
	.dbline 2017
; 							    Display ( "Proc:Cleaning" );        						
	ldd #L301
	xcall $_Display
	.dbline 2018
;     							HeadCWOnOff.value = 2; 
	movw #16384,_HeadCWOnOff
	movw #0,_HeadCWOnOff+2
	.dbline 2019
; 								getstrval( &HeadCWOnOff );
	ldd #_HeadCWOnOff
	xcall $_getstrval
	.dbline 2020
; 								strncpy(HeadCWOnOff.str_value," ON",HeadCWOnOff.len_str);
	ldab _HeadCWOnOff+17
	tfr B,Y
	sty 2,S
	ldy #L284
	sty 0,S
	ldd #_HeadCWOnOff+18
	xcall $_strncpy
	.dbline 2021
; 								getvalue(&HeadCWOnOff,0);
	ldy #0
	sty 0,S
	ldd #_HeadCWOnOff
	xcall $_getvalue
	leas 4,S
	.dbline 2022
; 							}
	bra L298
L299:
	.dbline 2024
;     						else
;     						{        						
	.dbline 2025
;     							HeadCCWOnOff.value = 2; 
	movw #16384,_HeadCCWOnOff
	movw #0,_HeadCCWOnOff+2
	.dbline 2026
; 								getstrval( &HeadCCWOnOff );
	ldd #_HeadCCWOnOff
	xcall $_getstrval
	.dbline 2027
; 								strncpy(HeadCCWOnOff.str_value," ON",HeadCCWOnOff.len_str);
	ldab _HeadCCWOnOff+17
	tfr B,Y
	sty 2,S
	ldy #L284
	sty 0,S
	ldd #_HeadCCWOnOff+18
	xcall $_strncpy
	.dbline 2028
; 								getvalue(&HeadCCWOnOff,0);
	ldy #0
	sty 0,S
	ldd #_HeadCCWOnOff
	xcall $_getvalue
	leas 4,S
	.dbline 2029
; 							}
	.dbline 2030
; 						}
	bra L298
L297:
	.dbline 2031
;     			    	else if ( HdDirection == HdForward )
	ldab _HdDirection
	cmpb #1
	bne L306
	.dbline 2032
;                             Display ( "Warn:TEST MODE" );
	ldd #L308
	xcall $_Display
L306:
L298:
	.dbline 2033
;                         StateTime = 0;
	movw #0,_StateTime
	movw #0,_StateTime+2
	.dbline 2034
;     			    	State++;
	inc _State
	.dbline 2035
; 					}
	.dbline 2036
; 				break;
	lbra L215
L309:
	.dbline 2039
; 
; 				case RampUpState:
; 				    if ( StateTime >= RTI_One_Sec * 3 )
	movw _StateTime+2,2,-S
	movw _StateTime,2,-S
	movw #2928,2,-S
	movw #0,2,-S
	jsr cmp4
	lblo L215
	.dbline 2040
; 					{
	.dbline 2041
; 						if ( TestModeOnOff.value==1 )
	movw _TestModeOnOff+2,2,-S
	movw _TestModeOnOff,2,-S
	movw #0,2,-S
	movw #16256,2,-S
	jsr cmpf4
	bne L312
	.dbline 2042
; 						{                				
	.dbline 2043
; 							BlowersOnOff.value = 2; 
	movw #16384,_BlowersOnOff
	movw #0,_BlowersOnOff+2
	.dbline 2044
; 							getstrval( &BlowersOnOff );
	ldd #_BlowersOnOff
	xcall $_getstrval
	.dbline 2045
; 							strncpy(BlowersOnOff.str_value," ON",BlowersOnOff.len_str);
	ldab _BlowersOnOff+17
	tfr B,Y
	sty 2,S
	ldy #L284
	sty 0,S
	ldd #_BlowersOnOff+18
	xcall $_strncpy
	.dbline 2046
; 							getvalue(&BlowersOnOff,0);
	ldy #0
	sty 0,S
	ldd #_BlowersOnOff
	xcall $_getvalue
	leas 4,S
	.dbline 2047
; 						}
L312:
	.dbline 2048
; 					    State++;
	inc _State
	.dbline 2049
; 					}
	.dbline 2050
; 				break;
	lbra L215
L316:
	.dbline 2053
; 
; 				case StartCenterCleanState:
;         		    if ( CStrks )
	ldy _CStrks
	cpy #0
	beq L317
	.dbline 2054
;         			{
	.dbline 2055
; 					    State++;
	inc _State
	.dbline 2056
;         			}
	lbra L215
L317:
	.dbline 2058
;         			else
;         			{
	.dbline 2059
;         		    	StateTime = 0;
	movw #0,_StateTime
	movw #0,_StateTime+2
	.dbline 2060
;         		    	State = StartFullCleanState;
	movb #14,_State
	.dbline 2061
;         			}
	.dbline 2062
; 				break;
	lbra L215
L319:
	.dbline 2065
; 				
; 				case CenterCleanState:
; 				    if (!LA_Moving && LA_Moved)
	ldab _LA_Moving
	cmpb #0
	lbne L215
	ldab _LA_Moved
	cmpb #0
	lbeq L215
	.dbline 2066
; 					{
	.dbline 2067
; 					    if ( CStrks )
	ldy _CStrks
	cpy #0
	lbeq L322
	.dbline 2068
;         			    {
	.dbline 2070
; 						    char tempstr[25];
; 							sprintf (tempstr,"Proc:Clean Center %d",(int)CntrStrokes.value - CStrks + 1);
	movw _CntrStrokes+2,2,-S
	movw _CntrStrokes,2,-S
	jsr fp2int
	subd _CStrks
	tfr D,Y
	iny
	sty 4,S
	ldy #L324
	sty 2,S
	leay 12,S
	sty 0,S
	xcall $_sprintf
	.dbline 2071
; 							Display ( tempstr );
	leay 12,S
	tfr Y,D
	xcall $_Display
	.dbline 2072
; 							if (CStrks & 1 ) Move_Position = Cntr + CDist/2;
	ldd _CStrks
	anda #0
	andb #1
	cpd #0
	beq L325
	.dbline 2072
	ldx #2
	ldd _CDist
	idivs
	tfr X,Y
	ldd _Cntr
	sty 8,S
	addd 8,S
	std _Move_Position
	bra L326
L325:
	.dbline 2073
;         				    else  Move_Position = Cntr - CDist/2 ;
	ldx #2
	ldd _CDist
	idivs
	tfr X,Y
	ldd _Cntr
	sty 8,S
	subd 8,S
	std _Move_Position
L326:
	.dbline 2074
;         		            CStrks--;
	ldy _CStrks
	dey
	sty _CStrks
	.dbline 2075
; 							LA_Moved=0;
	clr _LA_Moved
	.dbline 2076
; 						}
	lbra L215
L322:
	.dbline 2078
; 						else
; 						{
	.dbline 2079
; 						    StateTime = 0;
	movw #0,_StateTime
	movw #0,_StateTime+2
	.dbline 2080
; 							State++;
	inc _State
	.dbline 2081
; 						}
	.dbline 2082
; 					}
	.dbline 2083
; 				break;
	lbra L215
L327:
	.dbline 2086
; 				
; 				case StartFullCleanState:
;         		    if ( FStrks )
	ldy _FStrks
	cpy #0
	beq L328
	.dbline 2087
;         			{
	.dbline 2088
; 					    State++;
	inc _State
	.dbline 2089
;         			}
	lbra L215
L328:
	.dbline 2091
;         			else
;         			{
	.dbline 2092
;         		    	StateTime = 0;
	movw #0,_StateTime
	movw #0,_StateTime+2
	.dbline 2093
;         		    	State = StopState;
	movb #34,_State
	.dbline 2094
;         			}
	.dbline 2095
; 				break;
	lbra L215
L330:
	.dbline 2098
; 
; 				case FullCleanState:
; 				    if (!LA_Moving && LA_Moved)
	ldab _LA_Moving
	cmpb #0
	lbne L215
	ldab _LA_Moved
	cmpb #0
	lbeq L215
	.dbline 2099
; 					{
	.dbline 2100
; 					    if ( FStrks )
	ldy _FStrks
	cpy #0
	lbeq L333
	.dbline 2101
;         			    {
	.dbline 2103
; 						    char tempstr[25];
; 							sprintf (tempstr,"Proc:Clean Full %d",(int)FullStrokes.value - FStrks + 1);
	movw _FullStrokes+2,2,-S
	movw _FullStrokes,2,-S
	jsr fp2int
	subd _FStrks
	tfr D,Y
	iny
	sty 4,S
	ldy #L335
	sty 2,S
	leay 12,S
	sty 0,S
	xcall $_sprintf
	.dbline 2104
; 							Display ( tempstr );
	leay 12,S
	tfr Y,D
	xcall $_Display
	.dbline 2105
; 						    if (FStrks & 1 ) Move_Position = Cntr + FDist/2;
	ldd _FStrks
	anda #0
	andb #1
	cpd #0
	beq L336
	.dbline 2105
	ldx #2
	ldd _FDist
	idivs
	tfr X,Y
	ldd _Cntr
	sty 8,S
	addd 8,S
	std _Move_Position
	bra L337
L336:
	.dbline 2106
;         				    else  Move_Position = Cntr - FDist/2 ;
	ldx #2
	ldd _FDist
	idivs
	tfr X,Y
	ldd _Cntr
	sty 8,S
	subd 8,S
	std _Move_Position
L337:
	.dbline 2107
;         		            FStrks--;
	ldy _FStrks
	dey
	sty _FStrks
	.dbline 2108
; 							LA_Moved=0;
	clr _LA_Moved
	.dbline 2109
; 						}
	lbra L215
L333:
	.dbline 2111
; 						else
; 						{
	.dbline 2112
; 						    if (HdDirection == HdForward)
	ldab _HdDirection
	cmpb #1
	bne L338
	.dbline 2113
; 							{
	.dbline 2115
; 							    char tempstr[25];
; 								sprintf (tempstr,"Proc:Reversing Head");
	ldy #L340
	sty 2,S
	leay 12,S
	sty 0,S
	xcall $_sprintf
	.dbline 2116
; 								Display ( tempstr );
	leay 12,S
	tfr Y,D
	xcall $_Display
	.dbline 2117
;                 		    }
L338:
	.dbline 2118
; 						    StateTime = 0;
	movw #0,_StateTime
	movw #0,_StateTime+2
	.dbline 2119
; 							State++;
	inc _State
	.dbline 2120
; 						}
	.dbline 2121
; 					}
	.dbline 2122
; 				break;
	lbra L215
L341:
	.dbline 2125
; 				
; 				case ReverseHdState:
; 				    if ( HdDirection == HdForward )
	ldab _HdDirection
	cmpb #1
	lbne L342
	.dbline 2126
; 					{
	.dbline 2127
;                         Move_Position = Cntr;
	movw _Cntr,_Move_Position
	.dbline 2129
; 						           				
; 						BlowersOnOff.value = 1; 
	movw #16256,_BlowersOnOff
	movw #0,_BlowersOnOff+2
	.dbline 2130
; 						getstrval( &BlowersOnOff );
	ldd #_BlowersOnOff
	xcall $_getstrval
	.dbline 2131
; 						strncpy(BlowersOnOff.str_value,"OFF",BlowersOnOff.len_str);
	ldab _BlowersOnOff+17
	tfr B,Y
	sty 2,S
	ldy #L345
	sty 0,S
	ldd #_BlowersOnOff+18
	xcall $_strncpy
	.dbline 2132
; 						getvalue(&BlowersOnOff,0);
	ldy #0
	sty 0,S
	ldd #_BlowersOnOff
	xcall $_getvalue
	leas 4,S
	.dbline 2134
; 						
;                       	HeadCWOnOff.value = 1; 
	movw #16256,_HeadCWOnOff
	movw #0,_HeadCWOnOff+2
	.dbline 2135
; 						getstrval( &HeadCWOnOff );
	ldd #_HeadCWOnOff
	xcall $_getstrval
	.dbline 2136
; 						strncpy(HeadCWOnOff.str_value,"OFF",HeadCWOnOff.len_str);
	ldab _HeadCWOnOff+17
	tfr B,Y
	sty 2,S
	ldy #L345
	sty 0,S
	ldd #_HeadCWOnOff+18
	xcall $_strncpy
	.dbline 2137
; 						getvalue(&HeadCWOnOff,0);
	ldy #0
	sty 0,S
	ldd #_HeadCWOnOff
	xcall $_getvalue
	leas 4,S
	.dbline 2139
; 					    
; 						if ( StateTime >= RTI_One_Sec * 14 )
	movw _StateTime+2,2,-S
	movw _StateTime,2,-S
	movw #13664,2,-S
	movw #0,2,-S
	jsr cmp4
	lblo L215
	.dbline 2140
; 						{
	.dbline 2141
; 							CStrks = CntrStrokes.value;
	movw _CntrStrokes+2,2,-S
	movw _CntrStrokes,2,-S
	jsr fp2int
	tfr D,Y
	sty _CStrks
	.dbline 2142
;                 			FStrks = FullStrokes.value;
	movw _FullStrokes+2,2,-S
	movw _FullStrokes,2,-S
	jsr fp2int
	std _FStrks
	.dbline 2143
; 							HdDirection = HdReverse;
	clr _HdDirection
	.dbline 2144
; 						    State = StartCleanState;
	movb #10,_State
	.dbline 2145
; 						}
	.dbline 2146
; 					}
	lbra L215
L342:
	.dbline 2148
; 					else
; 					{
	.dbline 2149
; 					    StateTime = 0;
	movw #0,_StateTime
	movw #0,_StateTime+2
	.dbline 2150
; 						State++;
	inc _State
	.dbline 2151
; 					}				
	.dbline 2152
; 				break;
	lbra L215
L351:
	.dbline 2155
; 
; 				case StopCleanState:
;             		Move_Position = 0;
	movw #0,_Move_Position
	.dbline 2158
; 					
;            			
;            			SealsOnOff.value = 1; 
	movw #16256,_SealsOnOff
	movw #0,_SealsOnOff+2
	.dbline 2159
; 					getstrval( &SealsOnOff );
	ldd #_SealsOnOff
	xcall $_getstrval
	.dbline 2160
; 					strncpy(SealsOnOff.str_value,"OFF",SealsOnOff.len_str);
	ldab _SealsOnOff+17
	tfr B,Y
	sty 2,S
	ldy #L345
	sty 0,S
	ldd #_SealsOnOff+18
	xcall $_strncpy
	.dbline 2161
; 					getvalue(&SealsOnOff,0);
	ldy #0
	sty 0,S
	ldd #_SealsOnOff
	xcall $_getvalue
	leas 4,S
	.dbline 2163
; 					
; 					BlowersOnOff.value = 1; 
	movw #16256,_BlowersOnOff
	movw #0,_BlowersOnOff+2
	.dbline 2164
; 					getstrval( &BlowersOnOff );
	ldd #_BlowersOnOff
	xcall $_getstrval
	.dbline 2165
; 					strncpy(BlowersOnOff.str_value,"OFF",BlowersOnOff.len_str);
	ldab _BlowersOnOff+17
	tfr B,Y
	sty 2,S
	ldy #L345
	sty 0,S
	ldd #_BlowersOnOff+18
	xcall $_strncpy
	.dbline 2166
; 					getvalue(&BlowersOnOff,0);
	ldy #0
	sty 0,S
	ldd #_BlowersOnOff
	xcall $_getvalue
	leas 4,S
	.dbline 2168
;     				
; 					HeadCWOnOff.value = 1; 
	movw #16256,_HeadCWOnOff
	movw #0,_HeadCWOnOff+2
	.dbline 2169
; 					getstrval( &HeadCWOnOff );
	ldd #_HeadCWOnOff
	xcall $_getstrval
	.dbline 2170
; 					strncpy(HeadCWOnOff.str_value,"OFF",HeadCWOnOff.len_str);
	ldab _HeadCWOnOff+17
	tfr B,Y
	sty 2,S
	ldy #L345
	sty 0,S
	ldd #_HeadCWOnOff+18
	xcall $_strncpy
	.dbline 2171
; 					getvalue(&HeadCWOnOff,0);	   
	ldy #0
	sty 0,S
	ldd #_HeadCWOnOff
	xcall $_getvalue
	leas 4,S
	.dbline 2173
; 					                    
; 					HeadCCWOnOff.value = 1; 
	movw #16256,_HeadCCWOnOff
	movw #0,_HeadCCWOnOff+2
	.dbline 2174
; 					getstrval( &HeadCCWOnOff );
	ldd #_HeadCCWOnOff
	xcall $_getstrval
	.dbline 2175
; 					strncpy(HeadCCWOnOff.str_value,"OFF",HeadCCWOnOff.len_str);
	ldab _HeadCCWOnOff+17
	tfr B,Y
	sty 2,S
	ldy #L345
	sty 0,S
	ldd #_HeadCCWOnOff+18
	xcall $_strncpy
	.dbline 2176
; 					getvalue(&HeadCCWOnOff,0);
	ldy #0
	sty 0,S
	ldd #_HeadCCWOnOff
	xcall $_getvalue
	leas 4,S
	.dbline 2178
; 				
; 					if ( !LA_Moving && StateTime >= RTI_One_Sec * 10 )
	ldab _LA_Moving
	cmpb #0
	lbne L215
	movw _StateTime+2,2,-S
	movw _StateTime,2,-S
	movw #9760,2,-S
	movw #0,2,-S
	jsr cmp4
	lblo L215
	.dbline 2179
; 					{
	.dbline 2180
; 					    Display ( "Proc:Cleaning Complete" );
	ldd #L362
	xcall $_Display
	.dbline 2181
; 					    StateTime = 0;
	movw #0,_StateTime
	movw #0,_StateTime+2
	.dbline 2182
; 					    State++;
	inc _State
	.dbline 2183
; 					}				    
	.dbline 2184
; 				break;
	lbra L215
L363:
	.dbline 2187
; 
; 				case CleanComplete:     //seperate cleaning complete message from starting vacuum motors
; 					if ( StateTime >= RTI_One_Sec * 1 )
	movw _StateTime+2,2,-S
	movw _StateTime,2,-S
	movw #976,2,-S
	movw #0,2,-S
	jsr cmp4
	lblo L215
	.dbline 2188
; 					{
	.dbline 2189
; 					    StateTime = 0;
	movw #0,_StateTime
	movw #0,_StateTime+2
	.dbline 2190
; 					    State++;
	inc _State
	.dbline 2191
; 					}				    
	.dbline 2192
; 				break;
	lbra L215
L366:
	.dbline 2198
; 
; 				/*******************************************************************************
; 				*                               FIRST MOVEMENT (- DIR)
; 				*******************************************************************************/
; 				case StartFirstVac:
; 					if ( VacDist1.value == 0 ) {
	movw _VacDist1+2,2,-S
	movw _VacDist1,2,-S
	movw #0,2,-S
	movw #0,2,-S
	jsr cmpf4
	bne L367
	.dbline 2198
	.dbline 2199
; 						State = StopState; // Skip to stop
	movb #34,_State
	.dbline 2200
; 						break;
	lbra L215
L367:
	.dbline 2203
; 					}
; 					
; 					VacuumOnOff.value = 2; 
	movw #16384,_VacuumOnOff
	movw #0,_VacuumOnOff+2
	.dbline 2204
; 					getstrval( &VacuumOnOff );
	ldd #_VacuumOnOff
	xcall $_getstrval
	.dbline 2205
; 					strncpy(VacuumOnOff.str_value," ON",VacuumOnOff.len_str);
	ldab _VacuumOnOff+17
	tfr B,Y
	sty 2,S
	ldy #L284
	sty 0,S
	ldd #_VacuumOnOff+18
	xcall $_strncpy
	.dbline 2206
; 					getvalue(&VacuumOnOff,0);
	ldy #0
	sty 0,S
	ldd #_VacuumOnOff
	xcall $_getvalue
	leas 4,S
	.dbline 2209
; 
; 						// Configure movement parameters (Negative Direction)
; 					{
	.dbline 2210
; 						int travel_dist = (int)VacDist1.value * -10;
	movw _VacDist1+2,2,-S
	movw _VacDist1,2,-S
	jsr fp2int
	tfr D,Y
	ldd #65526
	emul
	std 35,S
	.dbline 2211
; 						gProcImg[IN_digi_3] = travel_dist;
	stab _gProcImg+3
	.dbline 2212
; 						gProcImg[IN_digi_4] = travel_dist >> 8;
	ldd 35,S
	tfr A,B
	clra
	tstb
	bge X7
	coma
X7:
	stab _gProcImg+4
	.dbline 2213
; 					}
	.dbline 2214
; 					gProcImg[IN_digi_5] = 0x01; // Start command
	movb #1,_gProcImg+5
	.dbline 2215
; 					{
	.dbline 2217
; 						int vacspeed;
; 						if (VacSpeed1.value==3) vacspeed = 120;
	movw _VacSpeed1+2,2,-S
	movw _VacSpeed1,2,-S
	movw #0,2,-S
	movw #16448,2,-S
	jsr cmpf4
	bne L374
	.dbline 2217
	leax 35,S
	movw #120,0,x
	bra L375
L374:
	.dbline 2218
; 						else if (VacSpeed1.value==2) vacspeed = 80;
	movw _VacSpeed1+2,2,-S
	movw _VacSpeed1,2,-S
	movw #0,2,-S
	movw #16384,2,-S
	jsr cmpf4
	bne L376
	.dbline 2218
	leax 35,S
	movw #80,0,x
	bra L377
L376:
	.dbline 2219
; 						else vacspeed = 40;
	leax 35,S
	movw #40,0,x
L377:
L375:
	.dbline 2220
; 						gProcImg[IN_digi_6] = ~vacspeed;
	ldd 35,S
	coma
	comb
	stab _gProcImg+6
	.dbline 2221
; 						gProcImg[IN_digi_7] = ~vacspeed >> 8;
	ldd 35,S
	coma
	comb
	tfr A,B
	clra
	tstb
	bge X8
	coma
X8:
	stab _gProcImg+7
	.dbline 2222
; 					}
	.dbline 2225
; 					
; 					// Start the master watchdog timer for the entire operation
; 					SequenceTimer = VacDist1.value / 3 + 10;
	movw _VacDist1+2,2,-S
	movw _VacDist1,2,-S
	movw #0,2,-S
	movw #16448,2,-S
	jsr divf4
	movw #0,2,-S
	movw #16672,2,-S
	jsr addf4
	jsr fp2int
	std _SequenceTimer
	.dbline 2226
; 					if ( SequenceTimer <= 0 ) { SequenceTimer = 1; } // Failsafe
	ldy _SequenceTimer
	cpy #0
	bne L380
	.dbline 2226
	.dbline 2226
	movw #1,_SequenceTimer
	.dbline 2226
L380:
	.dbline 2228
; 
; 					State++; // Advance to WaitingForFirstTravelConfirmation
	inc _State
	.dbline 2229
; 					break;
	lbra L215
L382:
	.dbline 2233
; 
; 				case FirstVacMoving:
; 					// Wait for CAN bus confirmation that movement has begun
; 					if ( gProcImg[OUT_digi_12] ) {
	ldab _gProcImg+26
	cmpb #0
	lbeq L215
	.dbline 2233
	.dbline 2234
; 						State++; // Advance to FirstTravelInProgress
	inc _State
	.dbline 2235
; 						StateTime = 0;
	movw #0,_StateTime
	movw #0,_StateTime+2
	.dbline 2236
; 					}
	.dbline 2238
; 					// If confirmation never arrives, master SequenceTimer will trigger ErrorState
; 					break;
	lbra L215
L386:
	.dbline 2242
; 
; 				case FirstVacInProgress:
; 					// Monitor for movement completion
; 					if ( !gProcImg[OUT_digi_12] ) {
	ldab _gProcImg+26
	cmpb #0
	bne L387
	.dbline 2242
	.dbline 2243
; 						SequenceTimer = 0; // Disable watchdog on success
	movw #0,_SequenceTimer
	.dbline 2244
; 						if ( StateTime > RTI_One_Sec ) {
	movw _StateTime+2,2,-S
	movw _StateTime,2,-S
	movw #976,2,-S
	movw #0,2,-S
	jsr cmp4
	lbls L215
	.dbline 2244
	.dbline 2246
; 							// Clean up registers
; 							gProcImg[IN_digi_3] = 0; gProcImg[IN_digi_4] = 0;
	clr _gProcImg+3
	.dbline 2246
	clr _gProcImg+4
	.dbline 2247
; 							gProcImg[IN_digi_5] = 0; gProcImg[IN_digi_6] = 0;
	clr _gProcImg+5
	.dbline 2247
	clr _gProcImg+6
	.dbline 2248
; 							gProcImg[IN_digi_7] = 0;
	clr _gProcImg+7
	.dbline 2249
; 							State++; // Advance to StartSecondVacTravel
	inc _State
	.dbline 2250
; 						}
	.dbline 2251
; 					} else {
	lbra L215
L387:
	.dbline 2251
	.dbline 2252
; 						StateTime = 0; // Reset settling timer
	movw #0,_StateTime
	movw #0,_StateTime+2
	.dbline 2253
; 					}
	.dbline 2255
; 					// If movement stalls, master SequenceTimer will trigger ErrorState
; 					break;
	lbra L215
L397:
	.dbline 2261
; 
; 				/*******************************************************************************
; 				*                               SECOND MOVEMENT (+ DIR)
; 				*******************************************************************************/
; 				case StartSecondVac:
; 					if ( VacDist2.value == 0 ) {
	movw _VacDist2+2,2,-S
	movw _VacDist2,2,-S
	movw #0,2,-S
	movw #0,2,-S
	jsr cmpf4
	bne L398
	.dbline 2261
	.dbline 2262
; 						State = StopState; // Skip to stop
	movb #34,_State
	.dbline 2263
; 						break;
	lbra L215
L398:
	.dbline 2267
; 					}
; 
; 					// Configure movement parameters (Positive Direction)
; 					{
	.dbline 2268
; 						int travel_dist = (int)VacDist2.value * 10;
	movw _VacDist2+2,2,-S
	movw _VacDist2,2,-S
	jsr fp2int
	tfr D,Y
	ldd #10
	emul
	std 35,S
	.dbline 2269
; 						gProcImg[IN_digi_3] = travel_dist;
	stab _gProcImg+3
	.dbline 2270
; 						gProcImg[IN_digi_4] = travel_dist >> 8;
	ldd 35,S
	tfr A,B
	clra
	tstb
	bge X9
	coma
X9:
	stab _gProcImg+4
	.dbline 2271
; 					}
	.dbline 2272
; 					gProcImg[IN_digi_5] = 0x01; // Start command
	movb #1,_gProcImg+5
	.dbline 2273
; 					{
	.dbline 2275
; 						int vacspeed;
; 						if (VacSpeed2.value==3) vacspeed = 120;
	movw _VacSpeed2+2,2,-S
	movw _VacSpeed2,2,-S
	movw #0,2,-S
	movw #16448,2,-S
	jsr cmpf4
	bne L403
	.dbline 2275
	leax 35,S
	movw #120,0,x
	bra L404
L403:
	.dbline 2276
; 						else if (VacSpeed2.value==2) vacspeed = 80;
	movw _VacSpeed2+2,2,-S
	movw _VacSpeed2,2,-S
	movw #0,2,-S
	movw #16384,2,-S
	jsr cmpf4
	bne L405
	.dbline 2276
	leax 35,S
	movw #80,0,x
	bra L406
L405:
	.dbline 2277
; 						else vacspeed = 40;
	leax 35,S
	movw #40,0,x
L406:
L404:
	.dbline 2278
; 						gProcImg[IN_digi_6] = vacspeed;
	ldab 36,S
	stab _gProcImg+6
	.dbline 2279
; 						gProcImg[IN_digi_7] = vacspeed >> 8;
	ldd 35,S
	tfr A,B
	clra
	tstb
	bge X10
	coma
X10:
	stab _gProcImg+7
	.dbline 2280
; 					}
	.dbline 2283
; 
; 					// Start the master watchdog timer for the entire operation
; 					SequenceTimer = VacDist2.value / 3 + 10;
	movw _VacDist2+2,2,-S
	movw _VacDist2,2,-S
	movw #0,2,-S
	movw #16448,2,-S
	jsr divf4
	movw #0,2,-S
	movw #16672,2,-S
	jsr addf4
	jsr fp2int
	std _SequenceTimer
	.dbline 2284
; 					if ( SequenceTimer <= 0 ) { SequenceTimer = 1; } // Failsafe
	ldy _SequenceTimer
	cpy #0
	bne L409
	.dbline 2284
	.dbline 2284
	movw #1,_SequenceTimer
	.dbline 2284
L409:
	.dbline 2286
; 					
; 					State++; // Advance to WaitingForSecondTravelConfirmation
	inc _State
	.dbline 2287
; 					break;
	lbra L215
L411:
	.dbline 2291
; 
; 				case SecondVacMoving:
; 					// Wait for CAN bus confirmation that movement has begun
; 					if ( gProcImg[OUT_digi_12] ) {
	ldab _gProcImg+26
	cmpb #0
	lbeq L215
	.dbline 2291
	.dbline 2292
; 						State++; // Advance to SecondTravelInProgress
	inc _State
	.dbline 2293
; 						StateTime = 0;
	movw #0,_StateTime
	movw #0,_StateTime+2
	.dbline 2294
; 					}
	.dbline 2295
; 					break;
	lbra L215
L415:
	.dbline 2299
; 
; 				case SecondVacInProgress:
; 					// Monitor for movement completion
; 					if ( !gProcImg[OUT_digi_12] ) {
	ldab _gProcImg+26
	cmpb #0
	bne L416
	.dbline 2299
	.dbline 2300
; 						SequenceTimer = 0; // Disable watchdog on success
	movw #0,_SequenceTimer
	.dbline 2301
; 						if ( StateTime > RTI_One_Sec ) {
	movw _StateTime+2,2,-S
	movw _StateTime,2,-S
	movw #976,2,-S
	movw #0,2,-S
	jsr cmp4
	lbls L215
	.dbline 2301
	.dbline 2303
; 							// Clean up registers
; 							gProcImg[IN_digi_3] = 0; gProcImg[IN_digi_4] = 0;
	clr _gProcImg+3
	.dbline 2303
	clr _gProcImg+4
	.dbline 2304
; 							gProcImg[IN_digi_5] = 0; gProcImg[IN_digi_6] = 0;
	clr _gProcImg+5
	.dbline 2304
	clr _gProcImg+6
	.dbline 2305
; 							gProcImg[IN_digi_7] = 0;
	clr _gProcImg+7
	.dbline 2306
; 							State++; // Advance to StartThirdVacTravel
	inc _State
	.dbline 2307
; 						}
	.dbline 2308
; 					} else {
	lbra L215
L416:
	.dbline 2308
	.dbline 2309
; 						StateTime = 0; // Reset settling timer
	movw #0,_StateTime
	movw #0,_StateTime+2
	.dbline 2310
; 					}
	.dbline 2311
; 					break;
	lbra L215
L426:
	.dbline 2317
; 
; 				/*******************************************************************************
; 				*                               THIRD MOVEMENT (- DIR)
; 				*******************************************************************************/
; 				case StartThirdVac:
; 					if ( VacDist3.value == 0 ) {
	movw _VacDist3+2,2,-S
	movw _VacDist3,2,-S
	movw #0,2,-S
	movw #0,2,-S
	jsr cmpf4
	bne L427
	.dbline 2317
	.dbline 2318
; 						State = StopState; // Skip to stop
	movb #34,_State
	.dbline 2319
; 						break;
	lbra L215
L427:
	.dbline 2323
; 					}
; 					
; 					// Configure movement parameters (Negative Direction)
; 					{
	.dbline 2324
; 						int travel_dist = (int)VacDist3.value * -10;
	movw _VacDist3+2,2,-S
	movw _VacDist3,2,-S
	jsr fp2int
	tfr D,Y
	ldd #65526
	emul
	std 35,S
	.dbline 2325
; 						gProcImg[IN_digi_3] = travel_dist;
	stab _gProcImg+3
	.dbline 2326
; 						gProcImg[IN_digi_4] = travel_dist >> 8;
	ldd 35,S
	tfr A,B
	clra
	tstb
	bge X11
	coma
X11:
	stab _gProcImg+4
	.dbline 2327
; 					}
	.dbline 2328
; 					gProcImg[IN_digi_5] = 0x01; // Start command
	movb #1,_gProcImg+5
	.dbline 2329
; 					{
	.dbline 2331
; 						int vacspeed;
; 						if (VacSpeed3.value==3) vacspeed = 120;
	movw _VacSpeed3+2,2,-S
	movw _VacSpeed3,2,-S
	movw #0,2,-S
	movw #16448,2,-S
	jsr cmpf4
	bne L432
	.dbline 2331
	leax 35,S
	movw #120,0,x
	bra L433
L432:
	.dbline 2332
; 						else if (VacSpeed3.value==2) vacspeed = 80;
	movw _VacSpeed3+2,2,-S
	movw _VacSpeed3,2,-S
	movw #0,2,-S
	movw #16384,2,-S
	jsr cmpf4
	bne L434
	.dbline 2332
	leax 35,S
	movw #80,0,x
	bra L435
L434:
	.dbline 2333
; 						else vacspeed = 40;
	leax 35,S
	movw #40,0,x
L435:
L433:
	.dbline 2334
; 						gProcImg[IN_digi_6] = ~vacspeed;
	ldd 35,S
	coma
	comb
	stab _gProcImg+6
	.dbline 2335
; 						gProcImg[IN_digi_7] = ~vacspeed >> 8;
	ldd 35,S
	coma
	comb
	tfr A,B
	clra
	tstb
	bge X12
	coma
X12:
	stab _gProcImg+7
	.dbline 2336
; 					}
	.dbline 2339
; 					
; 					// Start the master watchdog timer for the entire operation
; 					SequenceTimer = VacDist3.value / 3 + 10;
	movw _VacDist3+2,2,-S
	movw _VacDist3,2,-S
	movw #0,2,-S
	movw #16448,2,-S
	jsr divf4
	movw #0,2,-S
	movw #16672,2,-S
	jsr addf4
	jsr fp2int
	std _SequenceTimer
	.dbline 2340
; 					if ( SequenceTimer <= 0 ) { SequenceTimer = 1; } // Failsafe
	ldy _SequenceTimer
	cpy #0
	bne L438
	.dbline 2340
	.dbline 2340
	movw #1,_SequenceTimer
	.dbline 2340
L438:
	.dbline 2342
; 
; 					State++; // Advance to WaitingForThirdTravelConfirmation
	inc _State
	.dbline 2343
; 					break;
	lbra L215
L440:
	.dbline 2347
; 
; 				case ThirdVacMoving:
; 					// Wait for CAN bus confirmation that movement has begun
; 					if ( gProcImg[OUT_digi_12] ) {
	ldab _gProcImg+26
	cmpb #0
	lbeq L215
	.dbline 2347
	.dbline 2348
; 						State++; // Advance to ThirdTravelInProgress
	inc _State
	.dbline 2349
; 						StateTime = 0;
	movw #0,_StateTime
	movw #0,_StateTime+2
	.dbline 2350
; 					}
	.dbline 2351
; 					break;
	lbra L215
L444:
	.dbline 2355
; 
; 				case ThirdVacInProgress:
; 					// Monitor for movement completion
; 					if ( !gProcImg[OUT_digi_12] ) {
	ldab _gProcImg+26
	cmpb #0
	bne L445
	.dbline 2355
	.dbline 2356
; 						SequenceTimer = 0; // Disable watchdog on success
	movw #0,_SequenceTimer
	.dbline 2357
; 						if ( StateTime > RTI_One_Sec ) {
	movw _StateTime+2,2,-S
	movw _StateTime,2,-S
	movw #976,2,-S
	movw #0,2,-S
	jsr cmp4
	lbls L215
	.dbline 2357
	.dbline 2359
; 							// Clean up registers
; 							gProcImg[IN_digi_3] = 0; gProcImg[IN_digi_4] = 0;
	clr _gProcImg+3
	.dbline 2359
	clr _gProcImg+4
	.dbline 2360
; 							gProcImg[IN_digi_5] = 0; gProcImg[IN_digi_6] = 0;
	clr _gProcImg+5
	.dbline 2360
	clr _gProcImg+6
	.dbline 2361
; 							gProcImg[IN_digi_7] = 0;
	clr _gProcImg+7
	.dbline 2362
; 							State++; // Advance to StartFourthVacTravel
	inc _State
	.dbline 2363
; 						}
	.dbline 2364
; 					} else {
	lbra L215
L445:
	.dbline 2364
	.dbline 2365
; 						StateTime = 0; // Reset settling timer
	movw #0,_StateTime
	movw #0,_StateTime+2
	.dbline 2366
; 					}
	.dbline 2367
; 					break;
	lbra L215
L455:
	.dbline 2373
; 
; 				/*******************************************************************************
; 				*                               FOURTH MOVEMENT (+ DIR)
; 				*******************************************************************************/
; 				case StartFourthVac:
; 					if ( VacDist4.value == 0 ) {
	movw _VacDist4+2,2,-S
	movw _VacDist4,2,-S
	movw #0,2,-S
	movw #0,2,-S
	jsr cmpf4
	bne L456
	.dbline 2373
	.dbline 2374
; 						State = StopState; // Skip to stop
	movb #34,_State
	.dbline 2375
; 						break;
	lbra L215
L456:
	.dbline 2379
; 					}
; 
; 					// Configure movement parameters (Positive Direction)
; 					{
	.dbline 2380
; 						int travel_dist = (int)VacDist4.value * 10;
	movw _VacDist4+2,2,-S
	movw _VacDist4,2,-S
	jsr fp2int
	tfr D,Y
	ldd #10
	emul
	std 35,S
	.dbline 2381
; 						gProcImg[IN_digi_3] = travel_dist;
	stab _gProcImg+3
	.dbline 2382
; 						gProcImg[IN_digi_4] = travel_dist >> 8;
	ldd 35,S
	tfr A,B
	clra
	tstb
	bge X13
	coma
X13:
	stab _gProcImg+4
	.dbline 2383
; 					}
	.dbline 2384
; 					gProcImg[IN_digi_5] = 0x01; // Start command
	movb #1,_gProcImg+5
	.dbline 2385
; 					{
	.dbline 2387
; 						int vacspeed;
; 						if (VacSpeed4.value==3) vacspeed = 120;
	movw _VacSpeed4+2,2,-S
	movw _VacSpeed4,2,-S
	movw #0,2,-S
	movw #16448,2,-S
	jsr cmpf4
	bne L461
	.dbline 2387
	leax 35,S
	movw #120,0,x
	bra L462
L461:
	.dbline 2388
; 						else if (VacSpeed4.value==2) vacspeed = 80;
	movw _VacSpeed4+2,2,-S
	movw _VacSpeed4,2,-S
	movw #0,2,-S
	movw #16384,2,-S
	jsr cmpf4
	bne L463
	.dbline 2388
	leax 35,S
	movw #80,0,x
	bra L464
L463:
	.dbline 2389
; 						else vacspeed = 40;
	leax 35,S
	movw #40,0,x
L464:
L462:
	.dbline 2390
; 						gProcImg[IN_digi_6] = vacspeed;
	ldab 36,S
	stab _gProcImg+6
	.dbline 2391
; 						gProcImg[IN_digi_7] = vacspeed >> 8;
	ldd 35,S
	tfr A,B
	clra
	tstb
	bge X14
	coma
X14:
	stab _gProcImg+7
	.dbline 2392
; 					}
	.dbline 2395
; 
; 					// Start the master watchdog timer for the entire operation
; 					SequenceTimer = VacDist4.value / 3 + 10;
	movw _VacDist4+2,2,-S
	movw _VacDist4,2,-S
	movw #0,2,-S
	movw #16448,2,-S
	jsr divf4
	movw #0,2,-S
	movw #16672,2,-S
	jsr addf4
	jsr fp2int
	std _SequenceTimer
	.dbline 2396
; 					if ( SequenceTimer <= 0 ) { SequenceTimer = 1; } // Failsafe
	ldy _SequenceTimer
	cpy #0
	bne L467
	.dbline 2396
	.dbline 2396
	movw #1,_SequenceTimer
	.dbline 2396
L467:
	.dbline 2398
; 					
; 					State++; // Advance to WaitingForFourthTravelConfirmation
	inc _State
	.dbline 2399
; 					break;
	lbra L215
L469:
	.dbline 2403
; 
; 				case FourthVacMoving:
; 					// Wait for CAN bus confirmation that movement has begun
; 					if ( gProcImg[OUT_digi_12] ) {
	ldab _gProcImg+26
	cmpb #0
	lbeq L215
	.dbline 2403
	.dbline 2404
; 						State++; // Advance to FourthTravelInProgress
	inc _State
	.dbline 2405
; 						StateTime = 0;
	movw #0,_StateTime
	movw #0,_StateTime+2
	.dbline 2406
; 					}
	.dbline 2407
; 					break;
	lbra L215
L473:
	.dbline 2411
; 
; 				case FourthVacInProgress:
; 					// Monitor for movement completion
; 					if ( !gProcImg[OUT_digi_12] ) {
	ldab _gProcImg+26
	cmpb #0
	bne L474
	.dbline 2411
	.dbline 2412
; 						SequenceTimer = 0; // Disable watchdog on success
	movw #0,_SequenceTimer
	.dbline 2413
; 						if ( StateTime > RTI_One_Sec ) {
	movw _StateTime+2,2,-S
	movw _StateTime,2,-S
	movw #976,2,-S
	movw #0,2,-S
	jsr cmp4
	lbls L215
	.dbline 2413
	.dbline 2415
; 							// Clean up registers
; 							gProcImg[IN_digi_3] = 0; gProcImg[IN_digi_4] = 0;
	clr _gProcImg+3
	.dbline 2415
	clr _gProcImg+4
	.dbline 2416
; 							gProcImg[IN_digi_5] = 0; gProcImg[IN_digi_6] = 0;
	clr _gProcImg+5
	.dbline 2416
	clr _gProcImg+6
	.dbline 2417
; 							gProcImg[IN_digi_7] = 0;
	clr _gProcImg+7
	.dbline 2418
; 							State++; // Advance to StartFifthVacTravel
	inc _State
	.dbline 2419
; 						}
	.dbline 2420
; 					} else {
	lbra L215
L474:
	.dbline 2420
	.dbline 2421
; 						StateTime = 0; // Reset settling timer
	movw #0,_StateTime
	movw #0,_StateTime+2
	.dbline 2422
; 					}
	.dbline 2423
; 					break;
	lbra L215
L484:
	.dbline 2429
; 
; 				/*******************************************************************************
; 				*                               FIFTH MOVEMENT (- DIR)
; 				*******************************************************************************/
; 				case StartFifthVac:
; 					if ( VacDist5.value == 0 ) {
	movw _VacDist5+2,2,-S
	movw _VacDist5,2,-S
	movw #0,2,-S
	movw #0,2,-S
	jsr cmpf4
	bne L485
	.dbline 2429
	.dbline 2430
; 						State = StopState; // End of all sequences
	movb #34,_State
	.dbline 2431
; 						break;
	lbra L215
L485:
	.dbline 2435
; 					}
; 					
; 					// Configure movement parameters (Negative Direction)
; 					{
	.dbline 2436
; 						int travel_dist = (int)VacDist5.value * -10;
	movw _VacDist5+2,2,-S
	movw _VacDist5,2,-S
	jsr fp2int
	tfr D,Y
	ldd #65526
	emul
	std 35,S
	.dbline 2437
; 						gProcImg[IN_digi_3] = travel_dist;
	stab _gProcImg+3
	.dbline 2438
; 						gProcImg[IN_digi_4] = travel_dist >> 8;
	ldd 35,S
	tfr A,B
	clra
	tstb
	bge X15
	coma
X15:
	stab _gProcImg+4
	.dbline 2439
; 					}
	.dbline 2440
; 					gProcImg[IN_digi_5] = 0x01; // Start command
	movb #1,_gProcImg+5
	.dbline 2441
; 					{
	.dbline 2443
; 						int vacspeed;
; 						if (VacSpeed5.value==3) vacspeed = 120;
	movw _VacSpeed5+2,2,-S
	movw _VacSpeed5,2,-S
	movw #0,2,-S
	movw #16448,2,-S
	jsr cmpf4
	bne L490
	.dbline 2443
	leax 35,S
	movw #120,0,x
	bra L491
L490:
	.dbline 2444
; 						else if (VacSpeed5.value==2) vacspeed = 80;
	movw _VacSpeed5+2,2,-S
	movw _VacSpeed5,2,-S
	movw #0,2,-S
	movw #16384,2,-S
	jsr cmpf4
	bne L492
	.dbline 2444
	leax 35,S
	movw #80,0,x
	bra L493
L492:
	.dbline 2445
; 						else vacspeed = 40;
	leax 35,S
	movw #40,0,x
L493:
L491:
	.dbline 2446
; 						gProcImg[IN_digi_6] = ~vacspeed;
	ldd 35,S
	coma
	comb
	stab _gProcImg+6
	.dbline 2447
; 						gProcImg[IN_digi_7] = ~vacspeed >> 8;
	ldd 35,S
	coma
	comb
	tfr A,B
	clra
	tstb
	bge X16
	coma
X16:
	stab _gProcImg+7
	.dbline 2448
; 					}
	.dbline 2451
; 					
; 					// Start the master watchdog timer for the entire operation
; 					SequenceTimer = VacDist5.value / 3 + 10;
	movw _VacDist5+2,2,-S
	movw _VacDist5,2,-S
	movw #0,2,-S
	movw #16448,2,-S
	jsr divf4
	movw #0,2,-S
	movw #16672,2,-S
	jsr addf4
	jsr fp2int
	std _SequenceTimer
	.dbline 2452
; 					if ( SequenceTimer <= 0 ) { SequenceTimer = 1; } // Failsafe
	ldy _SequenceTimer
	cpy #0
	bne L496
	.dbline 2452
	.dbline 2452
	movw #1,_SequenceTimer
	.dbline 2452
L496:
	.dbline 2454
; 
; 					State++; // Advance to WaitingForFifthTravelConfirmation
	inc _State
	.dbline 2455
; 					break;
	lbra L215
L498:
	.dbline 2459
; 
; 				case FifthVacMoving:
; 					// Wait for CAN bus confirmation that movement has begun
; 					if ( gProcImg[OUT_digi_12] ) {
	ldab _gProcImg+26
	cmpb #0
	lbeq L215
	.dbline 2459
	.dbline 2460
; 						State++; // Advance to FifthTravelInProgress
	inc _State
	.dbline 2461
; 						StateTime = 0;
	movw #0,_StateTime
	movw #0,_StateTime+2
	.dbline 2462
; 					}
	.dbline 2463
; 					break;
	lbra L215
L502:
	.dbline 2467
; 
; 				case FifthVacInProgress:
; 					// Monitor for movement completion
; 					if ( !gProcImg[OUT_digi_12] ) {
	ldab _gProcImg+26
	cmpb #0
	bne L503
	.dbline 2467
	.dbline 2468
; 						SequenceTimer = 0; // Disable watchdog on success
	movw #0,_SequenceTimer
	.dbline 2469
; 						if ( StateTime > RTI_One_Sec ) {
	movw _StateTime+2,2,-S
	movw _StateTime,2,-S
	movw #976,2,-S
	movw #0,2,-S
	jsr cmp4
	lbls L215
	.dbline 2469
	.dbline 2471
; 							// Clean up registers
; 							gProcImg[IN_digi_3] = 0; gProcImg[IN_digi_4] = 0;
	clr _gProcImg+3
	.dbline 2471
	clr _gProcImg+4
	.dbline 2472
; 							gProcImg[IN_digi_5] = 0; gProcImg[IN_digi_6] = 0;
	clr _gProcImg+5
	.dbline 2472
	clr _gProcImg+6
	.dbline 2473
; 							gProcImg[IN_digi_7] = 0;
	clr _gProcImg+7
	.dbline 2474
; 							State = StopState; // End of all sequences
	movb #34,_State
	.dbline 2475
; 						}
	.dbline 2476
; 					} else {
	lbra L215
L503:
	.dbline 2476
	.dbline 2477
; 						StateTime = 0; // Reset settling timer
	movw #0,_StateTime
	movw #0,_StateTime+2
	.dbline 2478
; 					}
	.dbline 2479
; 					break;
	lbra L215
L513:
	.dbline 2482
; 
; 			    case StopState:
; 				    StateTime = 0;
	movw #0,_StateTime
	movw #0,_StateTime+2
	.dbline 2483
;             		Move_Position = 0;
	movw #0,_Move_Position
	.dbline 2484
; 					SequenceTimer = 0;
	movw #0,_SequenceTimer
	.dbline 2486
; 								
; 					gProcImg[IN_digi_3] = 0;
	clr _gProcImg+3
	.dbline 2487
; 					gProcImg[IN_digi_4] = 0;
	clr _gProcImg+4
	.dbline 2488
; 					gProcImg[IN_digi_5] = 0;
	clr _gProcImg+5
	.dbline 2489
; 					gProcImg[IN_digi_6] = 0;
	clr _gProcImg+6
	.dbline 2490
; 					gProcImg[IN_digi_7] = 0;
	clr _gProcImg+7
	.dbline 2492
; 
;            			SealsOnOff.value = 1; 
	movw #16256,_SealsOnOff
	movw #0,_SealsOnOff+2
	.dbline 2493
; 					getstrval( &SealsOnOff );
	ldd #_SealsOnOff
	xcall $_getstrval
	.dbline 2494
; 					strncpy(SealsOnOff.str_value,"OFF",SealsOnOff.len_str);
	ldab _SealsOnOff+17
	tfr B,Y
	sty 2,S
	ldy #L345
	sty 0,S
	ldd #_SealsOnOff+18
	xcall $_strncpy
	.dbline 2495
; 					getvalue(&SealsOnOff,0);
	ldy #0
	sty 0,S
	ldd #_SealsOnOff
	xcall $_getvalue
	leas 4,S
	.dbline 2497
;     				       			
; 					BlowersOnOff.value = 1; 
	movw #16256,_BlowersOnOff
	movw #0,_BlowersOnOff+2
	.dbline 2498
; 					getstrval( &BlowersOnOff );
	ldd #_BlowersOnOff
	xcall $_getstrval
	.dbline 2499
; 					strncpy(BlowersOnOff.str_value,"OFF",BlowersOnOff.len_str);
	ldab _BlowersOnOff+17
	tfr B,Y
	sty 2,S
	ldy #L345
	sty 0,S
	ldd #_BlowersOnOff+18
	xcall $_strncpy
	.dbline 2500
; 					getvalue(&BlowersOnOff,0);
	ldy #0
	sty 0,S
	ldd #_BlowersOnOff
	xcall $_getvalue
	leas 4,S
	.dbline 2502
; 					
; 					VacuumOnOff.value = 1; 
	movw #16256,_VacuumOnOff
	movw #0,_VacuumOnOff+2
	.dbline 2503
; 					getstrval( &VacuumOnOff );
	ldd #_VacuumOnOff
	xcall $_getstrval
	.dbline 2504
; 					strncpy(VacuumOnOff.str_value,"OFF",VacuumOnOff.len_str);
	ldab _VacuumOnOff+17
	tfr B,Y
	sty 2,S
	ldy #L345
	sty 0,S
	ldd #_VacuumOnOff+18
	xcall $_strncpy
	.dbline 2505
; 					getvalue(&VacuumOnOff,0);
	ldy #0
	sty 0,S
	ldd #_VacuumOnOff
	xcall $_getvalue
	leas 4,S
	.dbline 2507
; 					    				
; 					HeadCWOnOff.value = 1; 
	movw #16256,_HeadCWOnOff
	movw #0,_HeadCWOnOff+2
	.dbline 2508
; 					getstrval( &HeadCWOnOff );
	ldd #_HeadCWOnOff
	xcall $_getstrval
	.dbline 2509
; 					strncpy(HeadCWOnOff.str_value,"OFF",HeadCWOnOff.len_str);
	ldab _HeadCWOnOff+17
	tfr B,Y
	sty 2,S
	ldy #L345
	sty 0,S
	ldd #_HeadCWOnOff+18
	xcall $_strncpy
	.dbline 2510
; 					getvalue(&HeadCWOnOff,0);
	ldy #0
	sty 0,S
	ldd #_HeadCWOnOff
	xcall $_getvalue
	leas 4,S
	.dbline 2512
; 					                   
; 					HeadCCWOnOff.value = 1; 
	movw #16256,_HeadCCWOnOff
	movw #0,_HeadCCWOnOff+2
	.dbline 2513
; 					getstrval( &HeadCCWOnOff );
	ldd #_HeadCCWOnOff
	xcall $_getstrval
	.dbline 2514
; 					strncpy(HeadCCWOnOff.str_value,"OFF",HeadCCWOnOff.len_str);
	ldab _HeadCCWOnOff+17
	tfr B,Y
	sty 2,S
	ldy #L345
	sty 0,S
	ldd #_HeadCCWOnOff+18
	xcall $_strncpy
	.dbline 2515
; 					getvalue(&HeadCCWOnOff,0);
	ldy #0
	sty 0,S
	ldd #_HeadCCWOnOff
	xcall $_getvalue
	leas 4,S
	.dbline 2519
; 
; 				    //MCO_InitTPDO(4,0x318,0,100,5,IN_digi_3); 
; 					
; 					if ( !LA_Moving )
	ldab _LA_Moving
	cmpb #0
	lbne L215
	.dbline 2520
; 					{
	.dbline 2521
; 					    Display ( "Proc:Vacuuming Complete" );
	ldd #L531
	xcall $_Display
	.dbline 2522
; 						Update_Menu_Timer = 5 * RTI_One_Sec;
	movw #4880,_Update_Menu_Timer
	.dbline 2523
; 				    	State++;
	inc _State
	.dbline 2524
; 					}
	.dbline 2525
; 				break;
	lbra L215
L532:
	.dbline 2528
; 				
; 			    case FinishState:
; 				    State = FinishState;
	movb #35,_State
	.dbline 2529
; 					gProcImg[IN_digi_15]&=~(1<<0);
	bclr _gProcImg+9,#1
	.dbline 2531
; 					
; 				break;
	lbra L215
L534:
	.dbline 2534
; 				
; 				case ErrorState:
; 				    StateTime = 0;
	movw #0,_StateTime
	movw #0,_StateTime+2
	.dbline 2535
; 				    Display ( "Warn:TIMEOUT ERROR" );
	ldd #L535
	xcall $_Display
	.dbline 2536
; 					Update_Menu_Timer = 5 * RTI_One_Sec;
	movw #4880,_Update_Menu_Timer
	.dbline 2537
;             		Move_Position = 0;
	movw #0,_Move_Position
	.dbline 2538
; 					SequenceTimer = 0;
	movw #0,_SequenceTimer
	.dbline 2540
; 								
; 					gProcImg[IN_digi_3] = 0;
	clr _gProcImg+3
	.dbline 2541
; 					gProcImg[IN_digi_4] = 0;
	clr _gProcImg+4
	.dbline 2542
; 					gProcImg[IN_digi_5] = 0;
	clr _gProcImg+5
	.dbline 2543
; 					gProcImg[IN_digi_6] = 0;
	clr _gProcImg+6
	.dbline 2544
; 					gProcImg[IN_digi_7] = 0;
	clr _gProcImg+7
	.dbline 2546
; 
;            			SealsOnOff.value = 1; 
	movw #16256,_SealsOnOff
	movw #0,_SealsOnOff+2
	.dbline 2547
; 					getstrval( &SealsOnOff );
	ldd #_SealsOnOff
	xcall $_getstrval
	.dbline 2548
; 					strncpy(SealsOnOff.str_value,"OFF",SealsOnOff.len_str);
	ldab _SealsOnOff+17
	tfr B,Y
	sty 2,S
	ldy #L345
	sty 0,S
	ldd #_SealsOnOff+18
	xcall $_strncpy
	.dbline 2549
; 					getvalue(&SealsOnOff,0);
	ldy #0
	sty 0,S
	ldd #_SealsOnOff
	xcall $_getvalue
	leas 4,S
	.dbline 2551
; 					           			
; 					BlowersOnOff.value = 1; 
	movw #16256,_BlowersOnOff
	movw #0,_BlowersOnOff+2
	.dbline 2552
; 					getstrval( &BlowersOnOff );
	ldd #_BlowersOnOff
	xcall $_getstrval
	.dbline 2553
; 					strncpy(BlowersOnOff.str_value,"OFF",BlowersOnOff.len_str);
	ldab _BlowersOnOff+17
	tfr B,Y
	sty 2,S
	ldy #L345
	sty 0,S
	ldd #_BlowersOnOff+18
	xcall $_strncpy
	.dbline 2554
; 					getvalue(&BlowersOnOff,0);
	ldy #0
	sty 0,S
	ldd #_BlowersOnOff
	xcall $_getvalue
	leas 4,S
	.dbline 2556
; 					
; 					VacuumOnOff.value = 1; 
	movw #16256,_VacuumOnOff
	movw #0,_VacuumOnOff+2
	.dbline 2557
; 					getstrval( &VacuumOnOff );
	ldd #_VacuumOnOff
	xcall $_getstrval
	.dbline 2558
; 					strncpy(VacuumOnOff.str_value,"OFF",VacuumOnOff.len_str);
	ldab _VacuumOnOff+17
	tfr B,Y
	sty 2,S
	ldy #L345
	sty 0,S
	ldd #_VacuumOnOff+18
	xcall $_strncpy
	.dbline 2559
; 					getvalue(&VacuumOnOff,0);
	ldy #0
	sty 0,S
	ldd #_VacuumOnOff
	xcall $_getvalue
	leas 4,S
	.dbline 2562
; 					
;     				
; 					HeadCWOnOff.value = 1; 
	movw #16256,_HeadCWOnOff
	movw #0,_HeadCWOnOff+2
	.dbline 2563
; 					getstrval( &HeadCWOnOff );
	ldd #_HeadCWOnOff
	xcall $_getstrval
	.dbline 2564
; 					strncpy(HeadCWOnOff.str_value,"OFF",HeadCWOnOff.len_str);
	ldab _HeadCWOnOff+17
	tfr B,Y
	sty 2,S
	ldy #L345
	sty 0,S
	ldd #_HeadCWOnOff+18
	xcall $_strncpy
	.dbline 2565
; 					getvalue(&HeadCWOnOff,0);
	ldy #0
	sty 0,S
	ldd #_HeadCWOnOff
	xcall $_getvalue
	leas 4,S
	.dbline 2567
; 					                    
; 					HeadCCWOnOff.value = 1; 
	movw #16256,_HeadCCWOnOff
	movw #0,_HeadCCWOnOff+2
	.dbline 2568
; 					getstrval( &HeadCCWOnOff );
	ldd #_HeadCCWOnOff
	xcall $_getstrval
	.dbline 2569
; 					strncpy(HeadCCWOnOff.str_value,"OFF",HeadCCWOnOff.len_str);
	ldab _HeadCCWOnOff+17
	tfr B,Y
	sty 2,S
	ldy #L345
	sty 0,S
	ldd #_HeadCCWOnOff+18
	xcall $_strncpy
	.dbline 2570
; 					getvalue(&HeadCCWOnOff,0);
	ldy #0
	sty 0,S
	ldd #_HeadCCWOnOff
	xcall $_getvalue
	leas 4,S
	.dbline 2574
; 
; 				    //MCO_InitTPDO(4,0x318,0,100,5,IN_digi_3); 
; 
; 					State = FinishState;
	movb #35,_State
	.dbline 2575
; 				break;
	bra L215
L214:
	.dbline 2578
; 				
; 				default:
; 				    State = FinishState;
	movb #35,_State
	.dbline 2579
;             	break;
L215:
	.dbline 2581
;             }       
;     }	
	.dbline 2584
; 	
; 	 // Operate on CANopen protocol stack
;         i = MCO_ProcessStack();
	xcall $_MCO_ProcessStack
	clra
	std 41,S
	.dbline -2
L120:
	.dbline 0 ; func end
	leas 43,S
	rtc
	.dbsym l vacspeed 35 I
	.dbsym l travel_dist 35 I
	.dbsym l vacspeed 35 I
	.dbsym l travel_dist 35 I
	.dbsym l vacspeed 35 I
	.dbsym l travel_dist 35 I
	.dbsym l vacspeed 35 I
	.dbsym l travel_dist 35 I
	.dbsym l vacspeed 35 I
	.dbsym l travel_dist 35 I
	.dbsym l tempstr 12 A[25:25]c
	.dbsym l tempstr 12 A[25:25]c
	.dbsym l tempstr 12 A[25:25]c
	.dbsym l LineupTimeMsg 13 A[24:24]c
	.dbsym l lineup_speed 33 I
	.dbsym l travel_dist 35 I
	.dbsym l lineup_speed 33 I
	.dbsym l travel_dist 35 I
	.dbsym l var 37 pS[menu_var]
	.dbsym l var 37 pS[menu_var]
	.dbsym l j 39 I
	.dbsym l i 41 I
	.dbend
	.area text
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
L554:
	.byte 32,32,32,48,0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
L555:
	.blkb 2
	.area idata
	.word 0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
L556:
	.blkb 2
	.area idata
	.word 0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.area extcode(paged)
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.dbfunc e CompressorMain _CompressorMain fV
	.dbsym s Prev_HighSetPoint L556 I
	.dbsym s Prev_LowSetPoint L555 I
;       ATDValue -> 12,SP
;        Tempstr -> 14,SP
$_CompressorMain::
	leas -19,S
	.dbline -1
	.dbline 2592
;         //End MicroCanOpen Stack
; }
; 
; 
; 
; 
; void CompressorMain ( void )
; {
	.dbline 2593
;     {
	.dbline 2594
;         char Tempstr[] = "   0";
	ldy #L554
	leax 14,S
	movb 1,Y+,1,X+
	ldd #2
X19:
	movw 2,Y+,2,X+
	dbne D,X19
	.dbline 2598
; 		int ATDValue;
; 		static int Prev_LowSetPoint = 0,Prev_HighSetPoint = 0;
; 
; 		if ( HighSetPoint.value - LowSetPoint.value < 10 )//see if upper and lower setpoints are too close
	movw _HighSetPoint+2,2,-S
	movw _HighSetPoint,2,-S
	movw _LowSetPoint+2,2,-S
	movw _LowSetPoint,2,-S
	jsr subf4
	movw #0,2,-S
	movw #16672,2,-S
	jsr cmpf4
	lbge L557
	.dbline 2599
; 		{
	.dbline 2600
; 		   if ( Prev_LowSetPoint != LowSetPoint.value )//see if lower setpoint changed, adjust upper setpoint if it did
	ldd L555
	jsr int2fp
	movw _LowSetPoint+2,2,-S
	movw _LowSetPoint,2,-S
	jsr cmpf4
	beq L559
	.dbline 2601
; 		   {
	.dbline 2602
; 		       HighSetPoint.value = LowSetPoint.value + 10;
	movw _LowSetPoint+2,2,-S
	movw _LowSetPoint,2,-S
	movw #0,2,-S
	movw #16672,2,-S
	jsr addf4
	pulx
	stx _HighSetPoint
	pulx
	stx _HighSetPoint+2
	.dbline 2603
; 			   getstrval (&HighSetPoint);
	ldd #_HighSetPoint
	xcall $_getstrval
	.dbline 2604
; 			   UpdateMenu = 1;
	movb #1,_UpdateMenu
	.dbline 2605
; 		   }
	bra L560
L559:
	.dbline 2606
; 		   else if ( Prev_HighSetPoint != HighSetPoint.value )//see if upper setpoint changed, adjust lower setpoint if it did
	ldd L556
	jsr int2fp
	movw _HighSetPoint+2,2,-S
	movw _HighSetPoint,2,-S
	jsr cmpf4
	beq L561
	.dbline 2607
; 		   {
	.dbline 2608
; 		       LowSetPoint.value = HighSetPoint.value - 10;
	movw _HighSetPoint+2,2,-S
	movw _HighSetPoint,2,-S
	movw #0,2,-S
	movw #16672,2,-S
	jsr subf4
	pulx
	stx _LowSetPoint
	pulx
	stx _LowSetPoint+2
	.dbline 2609
; 			   getstrval (&LowSetPoint);
	ldd #_LowSetPoint
	xcall $_getstrval
	.dbline 2610
; 			   UpdateMenu = 1;
	movb #1,_UpdateMenu
	.dbline 2611
; 		   }
L561:
L560:
	.dbline 2612
; 		}
L557:
	.dbline 2613
; 		Prev_HighSetPoint = HighSetPoint.value;
	movw _HighSetPoint+2,2,-S
	movw _HighSetPoint,2,-S
	jsr fp2int
	tfr D,Y
	sty L556
	.dbline 2614
; 		Prev_LowSetPoint = LowSetPoint.value;
	movw _LowSetPoint+2,2,-S
	movw _LowSetPoint,2,-S
	jsr fp2int
	std L555
	.dbline 2616
; 		
; 		ATDValue = ATDGetLevel ( 0 );
	ldd #0
	xcall $_ATDGetLevel
	tfr D,X
	stx 12,S
	.dbline 2618
; 		
; 		if ( ATDValue > pressure_zero )     
	tfr X,D
	jsr int2fp
	movw #0,2,-S
	movw #17100,2,-S
	jsr cmpf4
	ble L563
	.dbline 2619
; 		    sprintf (Tempstr, "%3d", (int)((ATDValue - pressure_zero)/pressure_range * 100 ));
	movw #0,2,-S
	movw #17096,2,-S
	ldd 16,S
	jsr int2fp
	movw #0,2,-S
	movw #17100,2,-S
	jsr subf4
	movw #0,2,-S
	movw #17484,2,-S
	jsr divf4
	jsr mulf4
	jsr fp2int
	ldy #L565
	std 4,S
	sty 2,S
	leay 14,S
	sty 0,S
	xcall $_sprintf
	bra L564
L563:
	.dbline 2621
; 		else
; 		    sprintf (Tempstr, "%3d", 0 );
	ldy #0
	sty 4,S
	ldy #L565
	sty 2,S
	leay 14,S
	sty 0,S
	xcall $_sprintf
L564:
	.dbline 2623
; 			
;         if ( atoi ( Tempstr ) != Pressure.value )
	leay 14,S
	tfr Y,D
	xcall $_atoi
	jsr int2fp
	movw _Pressure+2,2,-S
	movw _Pressure,2,-S
	jsr cmpf4
	lbeq L566
	.dbline 2624
;         {
	.dbline 2626
;            
;             Pressure.value = atoi(Tempstr); 
	leay 14,S
	tfr Y,D
	xcall $_atoi
	jsr int2fp
	pulx
	stx _Pressure
	pulx
	stx _Pressure+2
	.dbline 2627
; 			getstrval( &Pressure );
	ldd #_Pressure
	xcall $_getstrval
	.dbline 2628
; 			strncpy(Pressure.str_value,Tempstr,Pressure.len_str);
	ldab _Pressure+17
	tfr B,Y
	sty 2,S
	leay 14,S
	sty 0,S
	ldd #_Pressure+18
	xcall $_strncpy
	.dbline 2629
; 			getvalue(&Pressure,0);
	ldy #0
	sty 0,S
	ldd #_Pressure
	xcall $_getvalue
	leas 4,S
	.dbline 2631
; 			
; 			if ( MenuStackc[StackPointer].Index[0] == 0 && MenuStackc[StackPointer].Index[1] == 0 && 
	ldab _StackPointer
	clra
	tfr D,Y
	ldd #6
	emul
	std 10,S
	ldy #_MenuStackc
	sty 6,S
	addd 6,S
	tfr D,Y
	ldab 0,Y
	cmpb #0
	bne L570
	ldd 10,S
	ldy #_MenuStackc+1
	sty 6,S
	addd 6,S
	tfr D,Y
	ldab 0,Y
	cmpb #0
	bne L570
	ldd 10,S
	ldy #_MenuStackc+2
	sty 6,S
	addd 6,S
	tfr D,Y
	ldab 0,Y
	cmpb #0
	bne L570
	ldd 10,S
	ldy #_MenuStackc+3
	sty 6,S
	addd 6,S
	tfr D,Y
	ldab 0,Y
	cmpb #5
	bne L570
	ldy _updatePressureTimer
	cpy #0
	bne L570
	.dbline 2634
;             MenuStackc[StackPointer].Index[2] == 0 && MenuStackc[StackPointer].Index[3] == 5 
; 			&& !updatePressureTimer )
;         	{
	.dbline 2635
;             	UpdateMenu = 1;
	movb #1,_UpdateMenu
	.dbline 2636
; 				updatePressureTimer = 5;	  //menu is already active so only impacts if menu does not change
	movw #5,_updatePressureTimer
	.dbline 2637
;             }
L570:
	.dbline 2638
;             if ( MenuStackc[StackPointer].Index[0] == 0 && MenuStackc[StackPointer].Index[1] == 0 && 
	ldab _StackPointer
	clra
	tfr D,Y
	ldd #6
	emul
	std 8,S
	ldy #_MenuStackc
	sty 6,S
	addd 6,S
	tfr D,Y
	ldab 0,Y
	cmpb #0
	bne L575
	ldd 8,S
	ldy #_MenuStackc+1
	sty 6,S
	addd 6,S
	tfr D,Y
	ldab 0,Y
	cmpb #0
	bne L575
	ldd 8,S
	ldy #_MenuStackc+2
	sty 6,S
	addd 6,S
	tfr D,Y
	ldab 0,Y
	cmpb #3
	bne L575
	ldd 8,S
	ldy #_MenuStackc+3
	sty 6,S
	addd 6,S
	tfr D,Y
	ldab 0,Y
	cmpb #1
	bne L575
	ldy _updatePressureTimer
	cpy #0
	bne L575
	.dbline 2641
;             MenuStackc[StackPointer].Index[2] == 3 && MenuStackc[StackPointer].Index[3] == 1
; 			&& !updatePressureTimer )
;         	{
	.dbline 2642
;             	UpdateMenu = 1;
	movb #1,_UpdateMenu
	.dbline 2643
; 				updatePressureTimer = 5;	  //menu is already active so only impacts if menu does not change
	movw #5,_updatePressureTimer
	.dbline 2644
;             }
L575:
	.dbline 2646
;             //gProcImg[IN_digi_1 ] = atoi ( Pressure );
;         }
L566:
	.dbline 2648
;     
; 	}
	.dbline 2651
; 
;         //turn ON: run compressor: if ON in settings, below low limit and not running
; 		if( Pressure.value <= LowSetPoint.value  && (CompressorOnOff.value==2) 
	movw _Pressure+2,2,-S
	movw _Pressure,2,-S
	movw _LowSetPoint+2,2,-S
	movw _LowSetPoint,2,-S
	jsr cmpf4
	bgt L580
	movw _CompressorOnOff+2,2,-S
	movw _CompressorOnOff,2,-S
	movw #0,2,-S
	movw #16384,2,-S
	jsr cmpf4
	bne L580
	ldab 0x1
	bitb #128
	bne L580
	.dbline 2653
;             && !(PORTB & 0x80) )
;   		{
	.dbline 2654
;             CompressorTimer = CompressorTime; 				//start timer, limit run-time to 60 seconds
	movw #300,_CompressorTimer
	.dbline 2655
;       	    PORTB |= 0x80;                                  //turn compressor on
	bset 0x1,#128
	.dbline 2656
;   		}
L580:
	.dbline 2658
; 		//if it's running, it may need to be turned off
; 		if( PORTB & 0x80 )
	brclr 0x1,#128,X20
	bra X21
X20: lbra L582
X21:
	.dbline 2659
; 		{
	.dbline 2661
;     		//OFF: if above high setpoint and running
;             if ( Pressure.value >= HighSetPoint.value )		//pressure switch turns compressor OFF
	movw _Pressure+2,2,-S
	movw _Pressure,2,-S
	movw _HighSetPoint+2,2,-S
	movw _HighSetPoint,2,-S
	jsr cmpf4
	blt L584
	.dbline 2662
;             {
	.dbline 2663
;                 PORTB &= ~0x80;
	bclr 0x1,#128
	.dbline 2664
; 				compTimedOutflag = 0;		  					//do NOT save variable flag
	clr _compTimedOutflag
	.dbline 2665
;             }
L584:
	.dbline 2667
;             //OFF when user turns it off
;             if ( CompressorOnOff.value==1 )			//user turns compressor OFF
	movw _CompressorOnOff+2,2,-S
	movw _CompressorOnOff,2,-S
	movw #0,2,-S
	movw #16256,2,-S
	jsr cmpf4
	bne L586
	.dbline 2668
;             {
	.dbline 2669
;                 PORTB &= ~0x80;
	bclr 0x1,#128
	.dbline 2670
;             }
L586:
	.dbline 2672
;     		//OFF: if running more than comressorTime
;             if ( !CompressorTimer )					 			//timer turns compressor OFF
	ldy _CompressorTimer
	cpy #0
	bne L588
	.dbline 2673
;             {
	.dbline 2674
;                 PORTB &= ~0x80;	   				  				//if it ran too long
	bclr 0x1,#128
	.dbline 2675
;                 CompressorOnOff.value = 1;    
	movw #16256,_CompressorOnOff
	movw #0,_CompressorOnOff+2
	.dbline 2676
; 				getstrval( &CompressorOnOff );
	ldd #_CompressorOnOff
	xcall $_getstrval
	.dbline 2677
; 				strncpy(CompressorOnOff.str_value,"OFF",CompressorOnOff.len_str);
	ldab _CompressorOnOff+17
	tfr B,Y
	sty 2,S
	ldy #L345
	sty 0,S
	ldd #_CompressorOnOff+18
	xcall $_strncpy
	.dbline 2678
; 				getvalue(&CompressorOnOff,0);				//turn OFF in settings
	ldy #0
	sty 0,S
	ldd #_CompressorOnOff
	xcall $_getvalue
	leas 4,S
	.dbline 2679
; 				compTimedOutflag = 1;		  					//do NOT save variable flag
	movb #1,_compTimedOutflag
	.dbline 2680
;             }
L588:
	.dbline 2681
;         }
L582:
	.dbline -2
L553:
	.dbline 0 ; func end
	leas 19,S
	rtc
	.dbsym l ATDValue 12 I
	.dbsym l Tempstr 14 A[5:5]c
	.dbend
	.dbfunc e CameraMain _CameraMain fV
;        tempstr -> 8,SP
;              i -> 26,SP
$_CameraMain::
	leas -28,S
	.dbline -1
	.dbline 2686
; 
; }
; 
; void CameraMain ( void )
; {
	.dbline 2690
;     int i;
; 	
; 	//light value is set in settings menu 0 - 100% duty
;     PWMDTY7 = LightLevel.value * LightLevel.value;
	movw _LightLevel+2,2,-S
	movw _LightLevel,2,-S
	movw _LightLevel+2,2,-S
	movw _LightLevel,2,-S
	jsr mulf4
	jsr fp2int
	stab 0xc3
	.dbline 2692
; 
;     ++ran_num;      //random number used for camera address
	ldy _ran_num
	iny
	sty _ran_num
	.dbline 2694
; 
; 	    sprintf ( disp_add.str_value, "%04X", cam_add );    //for video diplay of camera address
	ldy _cam_add
	sty 4,S
	ldy #L594
	sty 2,S
	ldy #_disp_add+18
	sty 0,S
	xcall $_sprintf
	.dbline 2696
;         
;         if ( (gProcImg[OUT_digi_6] & 0x08) &&              //command to activate menu
	brclr _gProcImg+20,#8,X22
	bra X23
X22: lbra L595
X23:
	ldd _cam_add
	anda #0
	andb #-1
	tfr D,Y
	ldab _gProcImg+21
	clra
	tfr D,X
	sty 6,S
	cpx 6,S
	lbne L595
	ldd _cam_add
	anda #-1
	andb #0
	tfr D,Y
	clrb
	ldaa _gProcImg+22
	tfr D,X
	sty 6,S
	cpx 6,S
	lbne L595
	ldab _Gen_Flags
	bitb #64
	lbne L595
	.dbline 2700
;             (gProcImg[OUT_digi_7] == (cam_add & 0x00FF)) &&         //lsb - old address
;                 (gProcImg[OUT_digi_8]<< 8 ==  (cam_add & 0xFF00)) &&
;                  !(Gen_Flags & GEN_FLAGS_MENU_ACTIVE) )
;         {
	.dbline 2701
;             gProcImg[OUT_digi_6] = 0x00;
	clr _gProcImg+20
	.dbline 2702
;             gProcImg[OUT_digi_7] = 0x00;
	clr _gProcImg+21
	.dbline 2703
;             gProcImg[OUT_digi_8] = 0x00;
	clr _gProcImg+22
	.dbline 2704
;             gProcImg[OUT_digi_4] = (cam_add & 0x00FF);
	ldd _cam_add
	anda #0
	andb #-1
	stab _gProcImg+18
	.dbline 2705
; 	        gProcImg[OUT_digi_5] = (cam_add & 0xFF00)>>8;
	ldd _cam_add
	anda #-1
	andb #0
	tfr A,B
	clra
	stab _gProcImg+19
	.dbline 2706
;             VSEL_PORT |= CAM_ON;       //turn camera on, portA bit 0x10 high
	bset 0,#16
	.dbline 2709
;             
;             //turn off other cameras
; 			gTxMsg.ID = 0x421;
	movw #1057,_gTxMsg
	.dbline 2710
;             gTxMsg.LEN = 2; 
	movb #2,_gTxMsg+2
	.dbline 2711
;             gTxMsg.BUF[0] = cam_add;
	ldab _cam_add+1
	stab _gTxMsg+4
	.dbline 2712
;             gTxMsg.BUF[1] = cam_add >> 8;      
	ldd _cam_add
	tfr A,B
	clra
	stab _gTxMsg+4+1
	.dbline 2713
;             if (!MCOHW_PushMessage(&gTxMsg))
	ldd #_gTxMsg
	xcall $_MCOHW_PushMessage
	clra
	cmpb #0
	bne L609
	.dbline 2714
;             {
	.dbline 2716
;             // failed to transmit
;             MCOUSER_FatalError(0x8801);
	ldd #34817
	xcall $_MCOUSER_FatalError
	.dbline 2717
;             }
L609:
	.dbline 2726
;             //! Transmit this without using the TPDO
;             
; /*            Timer1 = RTI_One_Sec * .10;
;             while ( Timer1 );
;             gProcImg[IN_digi_0] |= 0x01;
;             i = MCO_ProcessStack();
;             Timer1 = RTI_One_Sec * .10;
;             while ( Timer1 );*/
; 			Send_Menu_Status (0x01);
	ldd #1
	xcall $_Send_Menu_Status
	.dbline 2728
;             
;             MenuTimer = MenuTime * 2; //briefly disable up/down after menu is brought up
	movw #488,_MenuTimer
	.dbline 2729
; 			CursorDownFlag = 0;
	clr _CursorDownFlag
	.dbline 2730
; 			CursorUpFlag = 0;
	clr _CursorUpFlag
	.dbline 2731
; 			SelectFlag = 0;
	clr _SelectFlag
	.dbline 2732
;             AcceptKeys = 0;
	clr _AcceptKeys
	.dbline 2734
; 			
;             StackPointer = 0;
	clr _StackPointer
	.dbline 2735
;             MenuStackc[StackPointer].Index[0] = 0;
	ldab _StackPointer
	clra
	tfr D,Y
	ldd #6
	emul
	tfr D,Y
	ldx #_MenuStackc
	tfr Y,D
	stx 6,S
	addd 6,S
	tfr D,Y
	ldd #0
	stab 0,Y
	.dbline 2736
;             MenuStackc[StackPointer].Index[1] = 0;
	ldab _StackPointer
	clra
	tfr D,Y
	ldd #6
	emul
	tfr D,Y
	ldx #_MenuStackc+1
	tfr Y,D
	stx 6,S
	addd 6,S
	tfr D,Y
	ldd #0
	stab 0,Y
	.dbline 2737
;             MenuStackc[StackPointer].Index[2] = 0;
	ldab _StackPointer
	clra
	tfr D,Y
	ldd #6
	emul
	tfr D,Y
	ldx #_MenuStackc+2
	tfr Y,D
	stx 6,S
	addd 6,S
	tfr D,Y
	ldd #0
	stab 0,Y
	.dbline 2738
;             MenuStackc[StackPointer].Index[3] = 4;
	ldab _StackPointer
	clra
	tfr D,Y
	ldd #6
	emul
	tfr D,Y
	ldx #_MenuStackc+3
	tfr Y,D
	stx 6,S
	addd 6,S
	tfr D,Y
	ldd #4
	stab 0,Y
	.dbline 2739
;             MenuStackc[StackPointer].CursorPos = 1;
	ldab _StackPointer
	clra
	tfr D,Y
	ldd #6
	emul
	tfr D,Y
	ldx #_MenuStackc+4
	tfr Y,D
	stx 6,S
	addd 6,S
	tfr D,Y
	ldd #1
	stab 0,Y
	.dbline 2740
;             MenuStackc[StackPointer].FirstLine = 0;
	ldab _StackPointer
	clra
	tfr D,Y
	ldd #6
	emul
	tfr D,Y
	ldx #_MenuStackc+5
	tfr Y,D
	stx 6,S
	addd 6,S
	tfr D,Y
	ldd #0
	stab 0,Y
	.dbline 2741
;             Gen_Flags |= GEN_FLAGS_MENU_ACTIVE;
	bset _Gen_Flags,#64
	.dbline 2743
;             
; 			TC0_RCVD_Data &= ~0x07;  //Make sure up/down/select not active
	ldd _TC0_RCVD_Data
	anda #-1
	andb #-8
	tfr D,Y
	sty _TC0_RCVD_Data
	.dbline 2744
; 			LoadMenu ( MenuStackc[StackPointer].Index );
	ldab _StackPointer
	clra
	tfr D,Y
	ldd #6
	emul
	tfr D,Y
	ldx #_MenuStackc
	tfr Y,D
	stx 6,S
	addd 6,S
	xcall $_LoadMenu
	.dbline 2745
;             InsertCursor ();
	xcall $_InsertCursor
	.dbline 2747
;             //DisplayTitler ();
; 			UpdateMenu = 1;
	movb #1,_UpdateMenu
	.dbline 2749
;             
;         }
L595:
	.dbline 2751
; 
;     if ( gProcImg[OUT_digi_4] || gProcImg[OUT_digi_5])
	ldab _gProcImg+18
	cmpb #0
	bne L620
	ldab _gProcImg+19
	cmpb #0
	beq L616
L620:
	.dbline 2752
;     {
	.dbline 2753
;         ActCam4 = gProcImg[OUT_digi_4];
	movb _gProcImg+18,_ActCam4
	.dbline 2754
;         ActCam5 = gProcImg[OUT_digi_5];
	movb _gProcImg+19,_ActCam5
	.dbline 2755
;     }
L616:
	.dbline 2757
; 	
;     if ( gProcImg[OUT_digi_4] == (cam_add & 0x00FF) &&
	ldd _cam_add
	anda #0
	andb #-1
	tfr D,Y
	ldab _gProcImg+18
	clra
	tfr D,X
	sty 6,S
	cpx 6,S
	bne L623
	ldd _cam_add
	anda #-1
	andb #0
	tfr D,Y
	clrb
	ldaa _gProcImg+19
	tfr D,X
	sty 6,S
	cpx 6,S
	bne L623
	.dbline 2759
;         gProcImg[OUT_digi_5]<< 8 == (cam_add & 0xFF00) )    //compare
; 	{
	.dbline 2761
;     	char tempstr[18];
; 		gProcImg[OUT_digi_4] = gProcImg[OUT_digi_5] = 0;
	clr _gProcImg+19
	clr _gProcImg+18
	.dbline 2762
; 		VSEL_PORT |= CAM_ON;       //turn camera on
	bset 0,#16
	.dbline 2763
; 		sprintf (tempstr,"Proc:%s",CamTag.str_value); 
	ldy #_CamTag+18
	sty 4,S
	ldy #L629
	sty 2,S
	leay 8,S
	sty 0,S
	xcall $_sprintf
	.dbline 2764
; 		Display ( tempstr );
	leay 8,S
	tfr Y,D
	xcall $_Display
	.dbline 2765
; 	}
	bra L624
L623:
	.dbline 2766
; 	else if ( gProcImg[OUT_digi_4] || gProcImg[OUT_digi_5] )
	ldab _gProcImg+18
	cmpb #0
	bne L635
	ldab _gProcImg+19
	cmpb #0
	beq L631
L635:
	.dbline 2767
;     {
	.dbline 2768
;     	VSEL_PORT &= ~CAM_ON;       //turn camera off, portA bit 0x10 low
	bclr 0,#16
	.dbline 2769
;     }
L631:
L624:
	.dbline 2771
; 
;     if ( gProcImg[OUT_digi_6] & 0x01 )   //command to generate random address
	brclr _gProcImg+20,#1,L636
	.dbline 2772
;     {
	.dbline 2773
;         srand(ran_num);               //seed the random number      
	ldd _ran_num
	xcall $_srand
	.dbline 2774
;         cam_add = rand();
	xcall $_rand
	tfr D,X
	stx _cam_add
	.dbline 2775
;         gProcImg[OUT_digi_6] = 0x00;
	clr _gProcImg+20
	.dbline 2776
;         cam_addx[1] = cam_add>>8;
	ldd _cam_add
	tfr A,B
	clra
	stab _cam_addx+1
	.dbline 2777
;         cam_addx[0] = cam_add;     
	ldab _cam_add+1
	stab _cam_addx
	.dbline 2778
;         Save_Camera_Add();
	xcall $_Save_Camera_Add
	.dbline 2779
;     }
L636:
	.dbline 2782
; 
;     //command to transmit address
;     if ( gProcImg[OUT_digi_6] & 0x02)   //called by scan_camera in 2-wire
	brclr _gProcImg+20,#2,L641
	.dbline 2783
;     {
	.dbline 2784
;         gProcImg[OUT_digi_6] = 0x00;             
	clr _gProcImg+20
	.dbline 2788
;     	//VSEL_PORT &= ~CAM_ON;           //camera off, portA bit 0x10 low
; 
;         //make delay proportional to camera address so cameras report in ascending order
; 		Timer1 = cam_add/100;
	ldx #100
	ldd _cam_add
	idiv
	stx _Timer1
L645:
	.dbline 2789
; 		while(Timer1);
L646:
	.dbline 2789
	ldy _Timer1
	cpy #0
	bne L645
	.dbline 2791
;         
;         gTxMsg.ID = 0x2a1;
	movw #673,_gTxMsg
	.dbline 2792
;         gTxMsg.LEN = 2; 
	movb #2,_gTxMsg+2
	.dbline 2793
;         gTxMsg.BUF[0] = cam_add;
	ldab _cam_add+1
	stab _gTxMsg+4
	.dbline 2794
;         gTxMsg.BUF[1] = cam_add >> 8;      
	ldd _cam_add
	tfr A,B
	clra
	stab _gTxMsg+4+1
	.dbline 2795
;         if (!MCOHW_PushMessage(&gTxMsg))
	ldd #_gTxMsg
	xcall $_MCOHW_PushMessage
	clra
	cmpb #0
	bne L652
	.dbline 2796
;         {
	.dbline 2798
;             // failed to transmit
;             MCOUSER_FatalError(0x8801);
	ldd #34817
	xcall $_MCOUSER_FatalError
	.dbline 2799
;         }
L652:
	.dbline 2801
;          //! Transmit this without using the TPDO
;     }
L641:
	.dbline 2803
; 
;      if ( (gProcImg[OUT_digi_6] & 0x04) &&              //command to store address 
	brclr _gProcImg+20,#4,L654
	ldd _cam_add
	anda #0
	andb #-1
	tfr D,Y
	ldab _gProcImg+21
	clra
	tfr D,X
	sty 6,S
	cpx 6,S
	bne L654
	ldd _cam_add
	anda #-1
	andb #0
	tfr D,Y
	clrb
	ldaa _gProcImg+22
	tfr D,X
	sty 6,S
	cpx 6,S
	bne L654
	.dbline 2806
;             (gProcImg[OUT_digi_7] == (cam_add & 0x00FF)) &&         //lsb - old address
;                 ( (gProcImg[OUT_digi_8]<< 8) ==  (cam_add & 0xFF00)) ) //msb - old address
;     {   //change to new address
	.dbline 2807
;         cam_add = gProcImg[OUT_digi_9] + (gProcImg[OUT_digi_10]<<8);
	ldab _gProcImg+24
	tfr B,D
	tfr B,A
	ldab _gProcImg+23
	std _cam_add
	.dbline 2808
;         gProcImg[OUT_digi_6] = 0x00;             
	clr _gProcImg+20
	.dbline 2810
;         //send new address            
;         cam_addx[0] = cam_add;     
	ldab _cam_add+1
	stab _cam_addx
	.dbline 2811
;         cam_addx[1] = cam_add>>8;
	ldd _cam_add
	tfr A,B
	clra
	stab _cam_addx+1
	.dbline 2812
;         Save_Camera_Add();
	xcall $_Save_Camera_Add
	.dbline 2813
;    } 
L654:
	.dbline 2853
;    /*     if ( (gProcImg[OUT_digi_6] & 0x10) &&              //command to return menu string
;             (gProcImg[OUT_digi_7] == (cam_add & 0x00FF)) &&         //lsb - old address
;                 (gProcImg[OUT_digi_8]<< 8 ==  (cam_add & 0xFF00)) ) //&&
;                  //!(Gen_Flags & GEN_FLAGS_MENU_ACTIVE) )
;         {
;             gProcImg[OUT_digi_6] = 0x00;    //reset command
;             //format "1i 1234 xx xx xx xx xx " (8 bytes)
;             gTxMsg.ID = 0x3a1;
;             gTxMsg.LEN = 8; 
;             gTxMsg.BUF[0] = 1;
; 
;             for(i=0; i<4; i++) 
;             {
;                 gTxMsg.BUF[0] = i+0x10;
;                 gTxMsg.BUF[2] = cam_add>>8;
;                 gTxMsg.BUF[1] = cam_add;
;                 gTxMsg.BUF[3] = cam_menu_entry[0];
;                 gTxMsg.BUF[4] = cam_menu_entry[1];
;                 gTxMsg.BUF[5] = cam_menu_entry[2];
;                 gTxMsg.BUF[6] = cam_menu_entry[3];
;                 gTxMsg.BUF[7] = cam_menu_entry[4];
; 
;                //! Transmit this without using the TPDO
;                if (!MCOHW_PushMessage(&gTxMsg))
;                {
;                    // failed to transmit
;                    MCOUSER_FatalError(0x8801);
;                }
;             	Timer1 = RTI_One_Sec * .05;     //delay
;                 while(Timer1);
;         }
;     }
; */
; 
;     //send new address 
;     //gProcImg[IN_digi_1] = cam_add;     //lsb 
;     //gProcImg[IN_digi_2] = cam_add >> 8; //msb
; 
; 	//Advance film when PLC_Trig and Cam_Tog2 pressed
;     if ( !(Gen_Flags & Gen_Flags_Menu_Active) && (TC0_RCVD_Data & TeleData_PLCTrig) && (TC0_RCVD_Data & TeleData_CamTog2) )
	ldab _Gen_Flags
	bitb #64
	bne L663
	ldd _TC0_RCVD_Data
	anda #0
	andb #4
	cpd #0
	beq L663
	ldd _TC0_RCVD_Data
	anda #0
	andb #2
	cpd #0
	beq L663
	.dbline 2854
;     {
	.dbline 2855
;       Advance ();
	jsr _Advance
	.dbline 2856
;     }	
L663:
	.dbline -2
L592:
	.dbline 0 ; func end
	leas 28,S
	rtc
	.dbsym l tempstr 8 A[18:18]c
	.dbsym l i 26 I
	.dbend
	.dbfunc e extend_LA _extend_LA fV
;  desired_speed -> 3,SP
$_extend_LA::
	.dbline -1
	.dbline 2860
; }
; 
; void extend_LA(float desired_speed)
; {
	.dbline 2862
;     
; 	if(direction!=-1)
	ldab _direction
	cmpb #65535
	beq L666
	.dbline 2863
; 	{
	.dbline 2864
;     	direction=1;
	movb #1,_direction
	.dbline 2865
; 		LA_Moving=1;
	movb #1,_LA_Moving
	.dbline 2870
; 		
; 		//Timer1 = RTI_One_Sec *.25;
; 		//while (Timer1);
;         
; 		if (desired_speed>97)desired_speed=97;
	ldd 5,S
	pshd
	ldd 5,S
	pshd
	movw #0,2,-S
	movw #17090,2,-S
	jsr cmpf4
	ble L668
	.dbline 2870
	movw #17090,3,S
	movw #0,5,S
L668:
	.dbline 2871
; 		PB1_PWM = 0;
	clr _PB1_PWM
	.dbline 2872
; 		PB3_PWM = desired_speed;
	ldd 5,S
	pshd
	ldd 5,S
	pshd
	jsr fp2int
	stab _PB3_PWM
	.dbline 2873
; 		PTP |= 0x05;
	bset 0x258,#5
	.dbline 2875
; 
;         gProcImg[IN_digi_8]=1;
	movb #1,_gProcImg+8
	.dbline 2876
; 	}
L666:
	.dbline -2
L665:
	.dbline 0 ; func end
	rtc
	.dbsym l desired_speed 3 D
	.dbend
	.dbfunc e retract_LA _retract_LA fV
;  desired_speed -> 3,SP
$_retract_LA::
	.dbline -1
	.dbline 2880
; }
; 
; void retract_LA(float desired_speed)
; {
	.dbline 2881
; 	if(direction!=1)
	ldab _direction
	cmpb #1
	beq L672
	.dbline 2882
; 	{
	.dbline 2883
;      	direction=-1;
	movb #65535,_direction
	.dbline 2884
;     	LA_Moving=1;
	movb #1,_LA_Moving
	.dbline 2889
; 		
; 		//Timer1 = RTI_One_Sec *.25;
; 		//while (Timer1);
; 
; 		if (desired_speed>97)desired_speed=97;
	ldd 5,S
	pshd
	ldd 5,S
	pshd
	movw #0,2,-S
	movw #17090,2,-S
	jsr cmpf4
	ble L674
	.dbline 2889
	movw #17090,3,S
	movw #0,5,S
L674:
	.dbline 2890
; 		PB3_PWM = 0;
	clr _PB3_PWM
	.dbline 2891
; 		PB1_PWM = desired_speed;
	ldd 5,S
	pshd
	ldd 5,S
	pshd
	jsr fp2int
	stab _PB1_PWM
	.dbline 2892
; 		PTP |= 0x05;
	bset 0x258,#5
	.dbline 2894
; 		
;         gProcImg[IN_digi_8]=1;
	movb #1,_gProcImg+8
	.dbline 2895
; 	}
L672:
	.dbline -2
L671:
	.dbline 0 ; func end
	rtc
	.dbsym l desired_speed 3 D
	.dbend
	.dbfunc e stop_LA _stop_LA fV
$_stop_LA::
	.dbline -1
	.dbline 2899
; }
; 
; void stop_LA(void)
; {
	.dbline 2900
; 	LA_Moving=0;
	clr _LA_Moving
	.dbline 2901
; 	direction=0;
	clr _direction
	.dbline 2907
; 
; 	//PORTB |= (0x02 | 0x08);
; 	//PWMDTY0 = PWMDTY2 = 100;
;     
; 	//PTP |= 0x05;
; 	PB1_PWM = PB3_PWM = 0;
	clr _PB3_PWM
	clr _PB1_PWM
	.dbline 2909
; 	
;     gProcImg[IN_digi_8]=0;
	clr _gProcImg+8
	.dbline 2911
; 	
; 	Timer1 = RTI_One_Sec *.01; //wait until PWM outputs become inactive
	movw #9,_Timer1
L679:
	.dbline 2912
; 	while (Timer1);
L680:
	.dbline 2912
	ldy _Timer1
	cpy #0
	bne L679
	.dbline 2914
; 
; 	spdPID->iState=0;
	ldd _spdPID
	addd #4
	tfr D,Y
	movw #0,2,-S
	movw #0,2,-S
	pulx
	stx 0,Y
	pulx
	stx 2,Y
	.dbline 2915
; 	spdPID->iState_sgn=0;
	ldd _spdPID
	addd #8
	tfr D,Y
	movw #0,2,-S
	movw #0,2,-S
	pulx
	stx 0,Y
	pulx
	stx 2,Y
	.dbline -2
L677:
	.dbline 0 ; func end
	rtc
	.dbend
	.dbfunc e Startup _Startup fV
;     Move_Speed -> 0,SP
$_Startup::
	pshd
	.dbline -1
	.dbline 2920
; 
; }
; 
; void Startup(int Move_Speed)
; {
	.dbline 2923
;  	//Note PTT&0x08, PTT&0x02 are active high
;     //if(laSwitchPol)	 		  //extend/retract are normally high
;     if(laSwitchPol.value==2)	 		  //extend/retract are normally high
	movw _laSwitchPol+2,2,-S
	movw _laSwitchPol,2,-S
	movw #0,2,-S
	movw #16384,2,-S
	jsr cmpf4
	lbne L683
	.dbline 2924
;     {
	.dbline 2925
;         if(start_sequence==0 && (PORTA & 0x02))  //1st sequence: if not extended
	ldab _start_sequence
	cmpb #0
	bne L685
	brclr 0,#2,L685
	.dbline 2926
;         {
	.dbline 2927
;             desired_position=2591;	 //255*encoder_resolution=2590.8
	movw #2591,_desired_position
	.dbline 2928
;     		desired_speed=Move_Speed;
	movw 0,S,_desired_speed
	.dbline 2929
;     		start_sequence=1;
	movb #1,_start_sequence
	.dbline 2930
;         }
L685:
	.dbline 2931
;         if(start_sequence==2 && (PORTA & 0x01))		 	  //3rd sequence: if not retracted
	ldab _start_sequence
	cmpb #2
	bne L687
	brclr 0,#1,L687
	.dbline 2932
;         {
	.dbline 2933
;             desired_position=0;
	movw #0,_desired_position
	.dbline 2934
;     		desired_speed=Move_Speed;
	movw 0,S,_desired_speed
	.dbline 2935
;     		start_sequence=3;
	movb #3,_start_sequence
	.dbline 2936
;         }
L687:
	.dbline 2937
;     	if((start_sequence==1 && direction==0) || !(PORTA & 0x02))	//2nd sequence: if moved forward or fully extended
	ldab _start_sequence
	cmpb #1
	bne L692
	ldab _direction
	cmpb #0
	beq L691
L692:
	ldab 0
	bitb #2
	bne L689
L691:
	.dbline 2938
;     	{
	.dbline 2939
;     		desired_speed=Move_Speed;
	movw 0,S,_desired_speed
	.dbline 2940
;     	    start_sequence=2;
	movb #2,_start_sequence
	.dbline 2941
;     	}
L689:
	.dbline 2942
;     	if(start_sequence==3 && !(PORTA & 0x01))			  //done, at home (fully retracted)
	ldab _start_sequence
	cmpb #3
	lbne L684
	ldab 0
	bitb #1
	lbne L684
	.dbline 2943
;         {
	.dbline 2944
;     	    stop_LA();
	xcall $_stop_LA
	.dbline 2945
;     		desired_speed=0;
	movw #0,_desired_speed
	.dbline 2946
;         	LA_position=0;
	movw #0,_LA_position
	.dbline 2947
;     		start_sequence=-1;
	movb #65535,_start_sequence
	.dbline 2948
;     		done=5;
	movb #5,_done
	.dbline 2949
;     	}
	.dbline 2950
;     }
	lbra L684
L683:
	.dbline 2952
;     else
;     {
	.dbline 2953
;         if(start_sequence==0 && !(PORTA & 0x02))  //1st sequence: if not extended
	ldab _start_sequence
	cmpb #0
	bne L695
	ldab 0
	bitb #2
	bne L695
	.dbline 2954
;         {
	.dbline 2955
;             desired_position=2591;	 //255*encoder_resolution=2590.8
	movw #2591,_desired_position
	.dbline 2956
;     		desired_speed=Move_Speed;
	movw 0,S,_desired_speed
	.dbline 2957
;     		start_sequence=1;
	movb #1,_start_sequence
	.dbline 2958
;         }
L695:
	.dbline 2959
;         if(start_sequence==2 && !(PORTA & 0x01))		 	  //3rd sequence: if not retracted
	ldab _start_sequence
	cmpb #2
	bne L697
	ldab 0
	bitb #1
	bne L697
	.dbline 2960
;         {
	.dbline 2961
;             desired_position=0;
	movw #0,_desired_position
	.dbline 2962
;     		desired_speed=Move_Speed;
	movw 0,S,_desired_speed
	.dbline 2963
;     		start_sequence=3;
	movb #3,_start_sequence
	.dbline 2964
;         }
L697:
	.dbline 2965
;     	if((start_sequence==1 && direction==0) || (PORTA & 0x02))	//2nd sequence: if moved forward or fully extended
	ldab _start_sequence
	cmpb #1
	bne L702
	ldab _direction
	cmpb #0
	beq L701
L702:
	brclr 0,#2,L699
L701:
	.dbline 2966
;     	{
	.dbline 2967
;     		desired_speed=Move_Speed;
	movw 0,S,_desired_speed
	.dbline 2968
;     	    start_sequence=2;
	movb #2,_start_sequence
	.dbline 2969
;     	}
L699:
	.dbline 2970
;     	if(start_sequence==3 && (PORTA & 0x01))			  //done, at home (fully retracted)
	ldab _start_sequence
	cmpb #3
	bne L703
	brclr 0,#1,L703
	.dbline 2971
;         {
	.dbline 2972
;     	    stop_LA();
	xcall $_stop_LA
	.dbline 2973
;     		desired_speed=0;
	movw #0,_desired_speed
	.dbline 2974
;         	LA_position=0;
	movw #0,_LA_position
	.dbline 2975
;     		start_sequence=-1;
	movb #65535,_start_sequence
	.dbline 2976
;     		done=5;
	movb #5,_done
	.dbline 2977
;     	}
L703:
	.dbline 2978
;     }
L684:
	.dbline -2
L682:
	.dbline 0 ; func end
	leas 2,S
	rtc
	.dbsym l Move_Speed 0 I
	.dbend
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
_myspd::
	.blkb 2
	.area idata
	.word 0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.dbsym e myspd _myspd I
	.area extcode(paged)
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
	.dbfunc e LAMain _LAMain fV
;     Move_Speed -> 21,SP
;  Move_Position -> 16,SP
$_LAMain::
	pshd
	leas -16,S
	.dbline -1
	.dbline 2985
; }
; 
; 
; int myspd = 0;
; 
; void LAMain ( int Move_Position, int Move_Speed)
; {
	.dbline 2987
;         
; 	prev_desired_position=desired_position;	
	movw _desired_position,_prev_desired_position
	.dbline 2990
; 
; 	//find home if just powered up, 
;     if(start_sequence>=0 && Move_Position>-1)		//if not yet run startup sequence and gets an input
	ldab _start_sequence
	cmpb #0
	blt L706
	ldy 16,S
	cpy #65535
	ble L706
	.dbline 2991
;     {
	.dbline 2992
; 	    done=0;
	clr _done
	.dbline 2993
; 		Startup(Move_Speed);
	ldd 21,S
	xcall $_Startup
	.dbline 2994
;     }
L706:
	.dbline 2998
; 
;     //convert input (in 10ths of inches) to next_desired_position (in encoder steps):
;     //the next_desired position and speed always represent what is currently in the process image
;     next_desired_position=encoder_resolution*Move_Position;
	movw #52429,2,-S
	movw #16572,2,-S
	ldd 20,S
	jsr int2fp
	jsr mulf4
	jsr fp2int
	tfr D,Y
	sty _next_desired_position
	.dbline 2999
;     next_desired_speed=Move_Speed;
	leay 21,S
	movw 0,y,_next_desired_speed
	.dbline 3003
;     
;     //Do next movement, this will either do the initial movement after finding home, or do
; 	//  the next movement if a second movement is sent before the current movement is finished
;     if(start_sequence==-1 && done && next_desired_position!=desired_position)
	ldab _start_sequence
	cmpb #65535
	bne L708
	ldab _done
	cmpb #0
	beq L708
	ldy _next_desired_position
	cpy _desired_position
	beq L708
	.dbline 3004
;     {
	.dbline 3005
;         desired_position=next_desired_position;
	movw _next_desired_position,_desired_position
	.dbline 3007
;         //if (desired_speed!=next_desired_speed)
; 		{
	.dbline 3008
; 			spdPID->iState = 0;			
	ldd _spdPID
	addd #4
	tfr D,Y
	movw #0,2,-S
	movw #0,2,-S
	pulx
	stx 0,Y
	pulx
	stx 2,Y
	.dbline 3009
; 		}	
	.dbline 3010
; 		desired_speed=next_desired_speed;
	movw _next_desired_speed,_desired_speed
	.dbline 3011
;     }
L708:
	.dbline 3014
;     
;     //done if no other movements were sent 
;     if(desired_position!=prev_desired_position) done=0;
	ldy _desired_position
	cpy _prev_desired_position
	beq L710
	.dbline 3014
	clr _done
L710:
	.dbline 3017
;     
; 	//see if we've reached the desire location +/- margin
;     if(desired_position<=LA_position+(margin*desired_speed) && desired_position>=LA_position-(margin*desired_speed))	//have reached desired_position
	movw _margin+2,2,-S
	movw _margin,2,-S
	ldd _desired_speed
	jsr int2fp
	jsr mulf4
	puld
	std 14,S
	puld
	std 14,S
	ldd _desired_position
	jsr int2fp
	ldd _LA_position
	jsr int2fp
	ldd 22,S
	pshd
	ldd 22,S
	pshd
	jsr addf4
	jsr cmpf4
	bgt L712
	ldd _desired_position
	jsr int2fp
	ldd _LA_position
	jsr int2fp
	ldd 22,S
	pshd
	ldd 22,S
	pshd
	jsr subf4
	jsr cmpf4
	blt L712
	.dbline 3018
;     {
	.dbline 3019
;         if(desired_position!=0 && !done)
	ldy _desired_position
	cpy #0
	beq L714
	ldab _done
	cmpb #0
	bne L714
	.dbline 3020
;         {
	.dbline 3021
;             stop_LA();
	xcall $_stop_LA
	.dbline 3022
;             done=2;
	movb #2,_done
	.dbline 3023
;         }
L714:
	.dbline 3024
;     }
L712:
	.dbline 3026
; 	
;     if(!PID_Timer)
	ldy _PID_Timer
	cpy #0
	lbne L716
	.dbline 3027
;     {
	.dbline 3028
; 		LA_Moved = 1;
	movb #1,_LA_Moved
	.dbline 3030
; 		//extend or continue to extend if not at desired position
; 		if((desired_position>LA_position && !done) || (extend_test && !retract_test))
	ldy _desired_position
	cpy _LA_position
	ble L721
	ldab _done
	cmpb #0
	beq L720
L721:
	ldab _extend_test
	cmpb #0
	lbeq L718
	ldab _retract_test
	cmpb #0
	lbne L718
L720:
	.dbline 3031
;     	{
	.dbline 3032
; 			UDSPD = UDPID(spdPID, (desired_speed-(float)(LA_speed)) , LA_speed);
	movw _LA_speed+2,2,-S
	movw _LA_speed,2,-S
	jsr long2fp
	pulx
	stx 6,S
	pulx
	stx 6,S
	ldd _desired_speed
	jsr int2fp
	movw _LA_speed+2,2,-S
	movw _LA_speed,2,-S
	jsr long2fp
	jsr subf4
	pulx
	stx 2,S
	pulx
	stx 2,S
	ldd _spdPID
	xcall $_UDPID
	puld
	std 10,S
	puld
	std 10,S
	movw 8,S,_UDSPD
	movw 10,S,_UDSPD+2
	.dbline 3033
;     		if(UDSPD>90)
	movw _UDSPD+2,2,-S
	movw _UDSPD,2,-S
	movw #0,2,-S
	movw #17076,2,-S
	jsr cmpf4
	ble L722
	.dbline 3034
;     			UDSPD=90;
	movw #17076,_UDSPD
	movw #0,_UDSPD+2
L722:
	.dbline 3035
;     		if(UDSPD<20)
	movw _UDSPD+2,2,-S
	movw _UDSPD,2,-S
	movw #0,2,-S
	movw #16800,2,-S
	jsr cmpf4
	bge L724
	.dbline 3036
;     		    UDSPD=20;
	movw #16800,_UDSPD
	movw #0,_UDSPD+2
L724:
	.dbline 3037
; 		    if (!myspd)
	ldy _myspd
	cpy #0
	bne L726
	.dbline 3038
; 			    extend_LA(UDSPD);
	movw _UDSPD,0,S
	movw _UDSPD+2,2,S
	xcall $_extend_LA
	bra L727
L726:
	.dbline 3040
; 			else
; 				extend_LA(myspd);
	ldd _myspd
	jsr int2fp
	pulx
	stx 2,S
	pulx
	stx 2,S
	xcall $_extend_LA
L727:
	.dbline 3041
; 			done=0;
	clr _done
	.dbline 3042
;     	}
L718:
	.dbline 3044
;     	//retract or continue to retract if not at desired position
;         if((desired_position<LA_position && !done) || (retract_test && !extend_test))
	ldy _desired_position
	cpy _LA_position
	bge L731
	ldab _done
	cmpb #0
	beq L730
L731:
	ldab _retract_test
	cmpb #0
	lbeq L728
	ldab _extend_test
	cmpb #0
	lbne L728
L730:
	.dbline 3045
;     	{
	.dbline 3046
; 			UDSPD = UDPID(spdPID, (desired_speed-(float)(LA_speed)) , LA_speed);
	movw _LA_speed+2,2,-S
	movw _LA_speed,2,-S
	jsr long2fp
	pulx
	stx 6,S
	pulx
	stx 6,S
	ldd _desired_speed
	jsr int2fp
	movw _LA_speed+2,2,-S
	movw _LA_speed,2,-S
	jsr long2fp
	jsr subf4
	pulx
	stx 2,S
	pulx
	stx 2,S
	ldd _spdPID
	xcall $_UDPID
	puld
	std 10,S
	puld
	std 10,S
	movw 8,S,_UDSPD
	movw 10,S,_UDSPD+2
	.dbline 3047
;     		if(UDSPD>90)
	movw _UDSPD+2,2,-S
	movw _UDSPD,2,-S
	movw #0,2,-S
	movw #17076,2,-S
	jsr cmpf4
	ble L732
	.dbline 3048
;     			UDSPD=90;
	movw #17076,_UDSPD
	movw #0,_UDSPD+2
L732:
	.dbline 3049
;     		if(UDSPD<20)
	movw _UDSPD+2,2,-S
	movw _UDSPD,2,-S
	movw #0,2,-S
	movw #16800,2,-S
	jsr cmpf4
	bge L734
	.dbline 3050
;     		    UDSPD=20;
	movw #16800,_UDSPD
	movw #0,_UDSPD+2
L734:
	.dbline 3051
; 		    if (!myspd)
	ldy _myspd
	cpy #0
	bne L736
	.dbline 3052
; 			    retract_LA(UDSPD);
	movw _UDSPD,0,S
	movw _UDSPD+2,2,S
	xcall $_retract_LA
	bra L737
L736:
	.dbline 3054
; 			else
; 		        retract_LA(myspd);
	ldd _myspd
	jsr int2fp
	pulx
	stx 2,S
	pulx
	stx 2,S
	xcall $_retract_LA
L737:
	.dbline 3055
; 			done=0;
	clr _done
	.dbline 3056
;     	}  
L728:
	.dbline 3057
; 		PID_Timer = RTI_One_Sec * .05;
	movw #48,_PID_Timer
	.dbline 3058
; 	}
L716:
	.dbline 3060
;     //if(laSwitchPol)		 //extend/retract switches are normally high
;     if(laSwitchPol.value==2)	 		  //extend/retract are normally high
	movw _laSwitchPol+2,2,-S
	movw _laSwitchPol,2,-S
	movw #0,2,-S
	movw #16384,2,-S
	jsr cmpf4
	lbne L738
	.dbline 3061
;     {
	.dbline 3063
;     	//see if retracted stop was reached
;         if(!(PORTA & 0x01) && PB1_PWM && (!retract_test && !extend_test))		//retracted
	ldab 0
	bitb #1
	bne L740
	ldab _PB1_PWM
	cmpb #0
	beq L740
	ldab _retract_test
	cmpb #0
	bne L740
	ldab _extend_test
	cmpb #0
	bne L740
	.dbline 3064
;         {
	.dbline 3065
;             LA_position=0;
	movw #0,_LA_position
	.dbline 3066
;             stop_LA();
	xcall $_stop_LA
	.dbline 3067
;             if(desired_position==0)
	ldy _desired_position
	cpy #0
	bne L742
	.dbline 3068
;             {
	.dbline 3069
;                 done=3;
	movb #3,_done
	.dbline 3070
;                 start_sequence=-1;
	movb #65535,_start_sequence
	.dbline 3071
;             }
L742:
	.dbline 3072
;         }
L740:
	.dbline 3074
;     	//see if extended stop was reached
;         if(!(PORTA & 0x02) && PB3_PWM && (!retract_test && !extend_test))		//extended
	ldab 0
	bitb #2
	lbne L739
	ldab _PB3_PWM
	cmpb #0
	lbeq L739
	ldab _retract_test
	cmpb #0
	lbne L739
	ldab _extend_test
	cmpb #0
	lbne L739
	.dbline 3075
;         {
	.dbline 3076
;             stop_LA();
	xcall $_stop_LA
	.dbline 3077
;             done=4;
	movb #4,_done
	.dbline 3078
;         }
	.dbline 3079
;     }
	bra L739
L738:
	.dbline 3081
;     else 	//switches are normally low
;     {
	.dbline 3083
;     	//see if retracted stop was reached
;         if((PORTA & 0x01) && PB1_PWM && (!retract_test && !extend_test))		//retracted
	brclr 0,#1,L746
	ldab _PB1_PWM
	cmpb #0
	beq L746
	ldab _retract_test
	cmpb #0
	bne L746
	ldab _extend_test
	cmpb #0
	bne L746
	.dbline 3084
;         {
	.dbline 3085
;             LA_position=0;
	movw #0,_LA_position
	.dbline 3086
;             stop_LA();
	xcall $_stop_LA
	.dbline 3087
;             if(desired_position==0)
	ldy _desired_position
	cpy #0
	bne L748
	.dbline 3088
;             {
	.dbline 3089
;                 done=3;
	movb #3,_done
	.dbline 3090
;                 start_sequence=-1;
	movb #65535,_start_sequence
	.dbline 3091
;             }
L748:
	.dbline 3092
;         }
L746:
	.dbline 3094
;     	//see if extended stop was reached
;         if((PORTA & 0x02) && PB3_PWM && (!retract_test && !extend_test))		//extended
	brclr 0,#2,L750
	ldab _PB3_PWM
	cmpb #0
	beq L750
	ldab _retract_test
	cmpb #0
	bne L750
	ldab _extend_test
	cmpb #0
	bne L750
	.dbline 3095
;         {
	.dbline 3096
;             stop_LA();
	xcall $_stop_LA
	.dbline 3097
;             done=4;
	movb #4,_done
	.dbline 3098
;         }
L750:
	.dbline 3099
;     }
L739:
	.dbline -2
L705:
	.dbline 0 ; func end
	leas 18,S
	rtc
	.dbsym l Move_Speed 21 I
	.dbsym l Move_Position 16 I
	.dbend
	.area bss
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
_Menu::
	.blkb 252
	.dbsym e Menu _Menu A[252:12:21]c
_updateSpd::
	.blkb 4
	.dbsym e updateSpd _updateSpd D
_UDSPD::
	.blkb 4
	.dbsym e UDSPD _UDSPD D
_NullVar::
	.blkb 34
	.dbsym e NullVar _NullVar S[menu_var]
_cam_addx::
	.blkb 2
	.dbsym e cam_addx _cam_addx A[2:2]c
_PB3_PWM::
	.blkb 1
	.dbsym e PB3_PWM _PB3_PWM c
_PB1_PWM::
	.blkb 1
	.dbsym e PB1_PWM _PB1_PWM c
_laSwitch::
	.blkb 1
	.dbsym e laSwitch _laSwitch c
_ActCam5::
	.blkb 1
	.dbsym e ActCam5 _ActCam5 c
_ActCam4::
	.blkb 1
	.dbsym e ActCam4 _ActCam4 c
_CamAddressXmitd::
	.blkb 1
	.dbsym e CamAddressXmitd _CamAddressXmitd c
_PressureMsgSent::
	.blkb 1
	.dbsym e PressureMsgSent _PressureMsgSent c
_Multi_Var_ptr::
	.blkb 1
	.dbsym e Multi_Var_ptr _Multi_Var_ptr c
_String_Var_ptr::
	.blkb 1
	.dbsym e String_Var_ptr _String_Var_ptr c
_Variable_flag::
	.blkb 1
	.dbsym e Variable_flag _Variable_flag c
_FractionFlag::
	.blkb 1
	.dbsym e FractionFlag _FractionFlag c
_HdDirection::
	.blkb 1
	.dbsym e HdDirection _HdDirection c
_HeadSpeed::
	.blkb 2
	.dbsym e HeadSpeed _HeadSpeed I
_Cntr::
	.blkb 2
	.dbsym e Cntr _Cntr I
_FDist::
	.blkb 2
	.dbsym e FDist _FDist I
_CDist::
	.blkb 2
	.dbsym e CDist _CDist I
_FStrks::
	.blkb 2
	.dbsym e FStrks _FStrks I
_CStrks::
	.blkb 2
	.dbsym e CStrks _CStrks I
_cursor_row::
	.blkb 1
	.dbsym e cursor_row _cursor_row c
_UpdateMenu::
	.blkb 1
	.dbsym e UpdateMenu _UpdateMenu c
_gTxMsg::
	.blkb 12
	.dbstruct 0 12 .1
	.dbfield 0 ID i
	.dbfield 2 LEN c
	.dbfield 3 dummy32bit c
	.dbfield 4 BUF A[8:8]c
	.dbend
	.dbsym e gTxMsg _gTxMsg S[.1]
_cam_add::
	.blkb 2
	.dbsym e cam_add _cam_add i
_save_serial_flag::
	.blkb 1
	.dbsym e save_serial_flag _save_serial_flag c
	.area text
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines.c
L629:
	.byte 'P,'r,'o,'c,58,37,'s,0
L594:
	.byte 37,48,52,'X,0
L565:
	.byte 37,51,'d,0
L535:
	.byte 'W,'a,'r,'n,58,'T,'I,'M,'E,'O,'U,'T,32,'E,'R,'R
	.byte 'O,'R,0
L531:
	.byte 'P,'r,'o,'c,58,'V,'a,'c,'u,'u,'m,'i,'n,'g,32,'C
	.byte 'o,'m,'p,'l,'e,'t,'e,0
L362:
	.byte 'P,'r,'o,'c,58,'C,'l,'e,'a,'n,'i,'n,'g,32,'C,'o
	.byte 'm,'p,'l,'e,'t,'e,0
L345:
	.byte 'O,'F,'F,0
L340:
	.byte 'P,'r,'o,'c,58,'R,'e,'v,'e,'r,'s,'i,'n,'g,32,'H
	.byte 'e,'a,'d,0
L335:
	.byte 'P,'r,'o,'c,58,'C,'l,'e,'a,'n,32,'F,'u,'l,'l,32
	.byte 37,'d,0
L324:
	.byte 'P,'r,'o,'c,58,'C,'l,'e,'a,'n,32,'C,'e,'n,'t,'e
	.byte 'r,32,37,'d,0
L308:
	.byte 'W,'a,'r,'n,58,'T,'E,'S,'T,32,'M,'O,'D,'E,0
L301:
	.byte 'P,'r,'o,'c,58,'C,'l,'e,'a,'n,'i,'n,'g,0
L284:
	.byte 32,'O,'N,0
L282:
	.byte 'P,'r,'o,'c,58,'I,'n,'f,'l,'a,'t,'i,'n,'g,32,'S
	.byte 'e,'a,'l,'s,0
L273:
	.byte 'P,'r,'o,'c,58,'L,'i,'n,'e,'u,'p,32,'T,'i,'m,'e
	.byte 32,37,51,46,49,'f,0
L238:
	.byte 'P,'r,'o,'c,58,'L,'i,'n,'e,32,'U,'p,0
L224:
	.byte 'W,'a,'r,'n,58,'A,'I,'R,32,'P,'R,'E,'S,'S,'U,'R
	.byte 'E,32,'L,'O,'W,0
L115:
	.byte 51,46,50,53,0
L114:
	.byte 13,10,'C,'R,'T,'S,44,32,'I,'n,'c,46,13,10,'C,'l
	.byte 'e,'a,'n,'e,'r,32,'I,'n,'t,'e,'r,'f,'a,'c,'e,32
	.byte 'C,'o,'n,'t,'r,'o,'l,'l,'e,'r,13,10,'R,'e,'v,'i
	.byte 's,'i,'o,'n,32,37,'s,13,10,62,0
L86:
	.byte 48,52,'X,0
L81:
	.byte 'P,'r,'o,'c,58,'C,'a,'m,'e,'r,'a,32,'S,'e,'l,'e
	.byte 'c,'t,'e,'d,0
L71:
	.byte 37,'s,44,0
L39:
	.byte 44,0
