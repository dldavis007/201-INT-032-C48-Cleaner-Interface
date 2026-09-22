	.module Subroutines1.c
	.area text
	.dbfile ..\..\REV3~1.25\SOURCE~1\Subroutines1.c
	.area data
	.dbfile ..\..\REV3~1.25\SOURCE~1\Subroutines1.c
_UpdateArrayVar::
	.blkb 1
	.area idata
	.byte 0
	.area data
	.dbfile ..\..\REV3~1.25\SOURCE~1\Subroutines1.c
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines1.c
	.dbsym e UpdateArrayVar _UpdateArrayVar c
_StoreFlag::
	.blkb 1
	.area idata
	.byte 0
	.area data
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines1.c
	.dbsym e StoreFlag _StoreFlag c
	.area text
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines1.c
	.dbfunc e NullFunction _NullFunction fI
_NullFunction::
	.dbline -1
	.dbline 55
; #include <stdio.h>
; #include <string.h>
; #include <stdlib.h>
; #include <math.h>
; 
; #include "nodecfg.h"
; #include "Subroutines.h"
; #include "mc9s12a128.h"
; #include "Interrupts.h"
; #include "mco.h"
; #include "mcohw.h"
; #include "EEProm.h"
; 
; 
; extern char Variable_flag;
; extern char String_Var_ptr;
; extern char Multi_Var_ptr;
; extern struct MenuStack MenuStackc[];
; extern char StackPointer;
; extern char Menu[12][21];
; extern char MaxLADist[];
; extern char Gen_Flags;
; extern char State;
; 
; extern unsigned char TrigCam4;
; extern unsigned char TrigCam5;
; 
; extern unsigned char ActCam4;
; extern unsigned char ActCam5;
; 
; char UpdateArrayVar=0;
; 
; extern UNSIGNED8 gProcImg[];
; 
; 
; extern CAN_MSG gTxMsg;
; extern unsigned int Timer1;
; 
; extern unsigned int MenuTimer;
; extern char UpdateMenu;
; extern unsigned int TC0_RCVD_Data;
; 
; extern char fast_inc;
; extern unsigned int IncSpeedUpTimer;
; 
; unsigned char StoreFlag = 0;
; 
; char CursorDownFlag;
; char CursorUpFlag;
; char SelectFlag;
; char AcceptKeys;
; char InProcess;
; 
; int NullFunction ( void )
; {
	.dbline 56
;     return 0;
	ldd #0
	.dbline -2
L5:
	.dbline 0 ; func end
	rts
	.dbend
	.area extcode(paged)
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines1.c
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
	.dbfunc e getVariable _getVariable fpS[menu_var]
;              k -> 8,SP
;              j -> 10,SP
;            var -> 12,SP
$_getVariable::
	leas -14,S
	.dbline -1
	.dbline 61
; }
; 
; //This gets the variable pointed to by the Menu/Cursor/Multi_Var_ptr
; struct menu_var *getVariable( void ) 
; {
	.dbline 63
;      int k;
; 	 int j=1;
	movw #1,10,S
	.dbline 66
; 	 struct menu_var *var; 
; 	 
; 	 k = FindMenu();
	xcall $_FindMenu
	clra
	tfr D,Y
	sty 8,S
	.dbline 67
; 	 var = Menuc[k].VarPntr[MenuStackc[StackPointer].CursorPos+MenuStackc[StackPointer].FirstLine-1];
	ldab _StackPointer
	clra
	tfr D,Y
	ldd #6
	emul
	std 6,S
	ldy #_MenuStackc+5
	sty 0,S
	addd 0,S
	tfr D,Y
	ldab 0,Y
	clra
	std 4,S
	ldd 6,S
	ldx #_MenuStackc+4
	stx 0,S
	addd 0,S
	tfr D,Y
	ldab 0,Y
	clra
	tfr D,Y
	ldx 4,S
	tfr Y,D
	stx 0,S
	addd 0,S
	subd #1
	lsld
	std 2,S
	ldy 8,S
	ldd #311
	emul
	tfr D,Y
	ldx #_Menuc+267
	tfr Y,D
	stx 0,S
	addd 0,S
	tfr D,Y
	ldd 2,S
	sty 0,S
	addd 0,S
	tfr D,Y
	movw 0,Y,12,S
	bra L11
L10:
	.dbline 69
; 	 while(j<Multi_Var_ptr)
; 	 {
	.dbline 70
; 	     var = var->next_var;
	ldy 12,S
	leay 32,Y
	movw 0,y,12,S
	.dbline 71
; 		 j++;
	ldy 10,S
	iny
	sty 10,S
	.dbline 72
; 	 }
L11:
	.dbline 68
	ldab _Multi_Var_ptr
	clra
	cpd 10,S
	bgt L10
	.dbline 73
;      return var;
	ldd 12,S
	.dbline -2
L6:
	.dbline 0 ; func end
	leas 14,S
	rtc
	.dbsym l k 8 I
	.dbsym l j 10 I
	.dbsym l var 12 pS[menu_var]
	.dbend
	.dbfunc e StdVarFunc_String _StdVarFunc_String fV
;      old_value -> 4,SP
;            var -> 8,SP
$_StdVarFunc_String::
	pshd
	leas -8,S
	.dbline -1
	.dbline 78
; }
; 
; //This displays the "String Type" variable with a '-' in the current "String_Var_ptr" location
; void StdVarFunc_String ( struct menu_var *var ) 
; {
	.dbline 81
; 	float old_value; 
; 	
;     getvalue(var,String_Var_ptr-1);
	ldab _String_Var_ptr
	tfr B,Y
	dey
	tfr Y,D
	clra
	std 0,S
	ldd 8,S
	xcall $_getvalue
	leas 4,S
	.dbline 82
;     old_value = var->value;
	ldy 8,S
	movw 0,Y,4,S
	movw 2,Y,6,S
	.dbline 83
;     var->value = var->max+1; 	 //the last char in the enum list is used as a cursor
	ldd 8,S
	addd #12
	tfr D,X
	ldy 8,S
	movw 2,X,2,-S
	movw 0,X,2,-S
	movw #0,2,-S
	movw #16256,2,-S
	jsr addf4
	pulx
	stx 0,Y
	pulx
	stx 2,Y
	.dbline 84
;     getstrval(var);				 //put it in the string temporarily   
	ldd 8,S
	xcall $_getstrval
	.dbline 85
;     LoadMenu ( MenuStackc[StackPointer].Index );
	ldab _StackPointer
	clra
	tfr D,Y
	ldd #6
	emul
	tfr D,Y
	ldx #_MenuStackc
	tfr Y,D
	stx 2,S
	addd 2,S
	xcall $_LoadMenu
	.dbline 86
;     var->value = old_value;
	ldy 8,S
	ldd 6,S
	pshd
	ldd 6,S
	pshd
	pulx
	stx 0,Y
	pulx
	stx 2,Y
	.dbline 87
;     getstrval(var);
	ldd 8,S
	xcall $_getstrval
	.dbline -2
L13:
	.dbline 0 ; func end
	leas 10,S
	rtc
	.dbsym l old_value 4 D
	.dbsym l var 8 pS[menu_var]
	.dbend
	.dbfunc e next_variable _next_variable fV
;            var -> 2,SP
$_next_variable::
	pshd
	leas -2,S
	.dbline -1
	.dbline 92
; }
; 
; // This puts the next variable in the Menu and updates the pointers "Multi_Var_ptr", "String_Var_ptr", "Variable_flag"
; void next_variable ( struct menu_var *var )
; {
	.dbline 93
;     if (var->next_var) // See if more linked variables
	ldd 2,S
	addd #32
	tfr D,Y
	ldy 0,Y
	cpy #0
	beq L15
	.dbline 94
;     {
	.dbline 95
;         Multi_Var_ptr++;
	inc _Multi_Var_ptr
	.dbline 96
;         var = getVariable(); // Get the variable pointed to by Multi_Var_ptr
	xcall $_getVariable
	tfr D,X
	stx 2,S
	.dbline 97
;         if (var->len_str < 0)  // See if "String Type"
	tfr X,D
	addd #17
	tfr D,Y
	ldab 0,Y
	cmpb #0
	bge L17
	.dbline 98
;         {
	.dbline 99
;             String_Var_ptr = 1;
	movb #1,_String_Var_ptr
	.dbline 100
;             StdVarFunc_String(var); //Display "String Type"   ">-xxx"
	ldd 2,S
	xcall $_StdVarFunc_String
	.dbline 101
;         }
	bra L16
L17:
	.dbline 103
;     	else //"Standard" numeric or enum variable here
;     	{
	.dbline 104
;             if (!Multi_Var_ptr)
	ldab _Multi_Var_ptr
	cmpb #0
	bne L19
	.dbline 105
;                 Variable_flag = 0; //This removes Variable Cursor when the menu is loaded
	clr _Variable_flag
L19:
	.dbline 107
; 			
;         	LoadMenu ( MenuStackc[StackPointer].Index );
	ldab _StackPointer
	clra
	tfr D,Y
	ldd #6
	emul
	tfr D,Y
	ldx #_MenuStackc
	tfr Y,D
	stx 0,S
	addd 0,S
	xcall $_LoadMenu
	.dbline 108
;         	if (!Multi_Var_ptr)
	ldab _Multi_Var_ptr
	cmpb #0
	bne L16
	.dbline 109
;                 InsertCursor ();
	xcall $_InsertCursor
	.dbline 110
;         }
	.dbline 112
; 	
;     }
	bra L16
L15:
	.dbline 114
; 	else // No more linked variables, cursor back to beginning of line
; 	{
	.dbline 115
; 	    Variable_flag = 0;
	clr _Variable_flag
	.dbline 116
; 		Multi_Var_ptr = 0;
	clr _Multi_Var_ptr
	.dbline 117
; 		String_Var_ptr = 0;
	clr _String_Var_ptr
	.dbline 118
; 		UpdateArrayVar = 0;
	clr _UpdateArrayVar
	.dbline 119
; 		LoadMenu ( MenuStackc[StackPointer].Index );
	ldab _StackPointer
	clra
	tfr D,Y
	ldd #6
	emul
	tfr D,Y
	ldx #_MenuStackc
	tfr Y,D
	stx 0,S
	addd 0,S
	xcall $_LoadMenu
	.dbline 120
; 		InsertCursor ();
	xcall $_InsertCursor
	.dbline 121
; 	}
L16:
	.dbline -2
L14:
	.dbline 0 ; func end
	leas 4,S
	rtc
	.dbsym l var 2 pS[menu_var]
	.dbend
	.dbfunc e Next_Char_In_String_Var _Next_Char_In_String_Var fV
;              i -> 3,SP
;            var -> 5,SP
$_Next_Char_In_String_Var::
	pshd
	leas -5,S
	.dbline -1
	.dbline 127
;     
; }
; 
; // This points to the next char in "String Type" variables and puts in Menu, or goes to next variable
; void Next_Char_In_String_Var ( struct menu_var *var ) 
; {
	.dbline 130
;     int i;
; 	
;     if (++String_Var_ptr > abs(var->len_str)) //End of "String Type" variable here
	ldab _String_Var_ptr
	tfr B,Y
	iny
	tfr Y,B
	stab 2,S
	ldd 5,S
	addd #17
	tfr D,Y
	ldab 0,Y
	tfr B,D
	movb 2,S,_String_Var_ptr
	xcall $_abs
	tfr D,X
	stx 0,S
	ldab 2,S
	clra
	cpd 0,S
	ble L24
	.dbline 131
;     {
	.dbline 132
; 	    next_variable (var);
	ldd 5,S
	xcall $_next_variable
	.dbline 133
;     }
	bra L25
L24:
	.dbline 135
;     else
;     {
	.dbline 136
; 	    StdVarFunc_String(var);
	ldd 5,S
	xcall $_StdVarFunc_String
	.dbline 137
;     }
L25:
	.dbline -2
L23:
	.dbline 0 ; func end
	leas 7,S
	rtc
	.dbsym l i 3 I
	.dbsym l var 5 pS[menu_var]
	.dbend
	.dbfunc e ArrayVarFunction _ArrayVarFunction fI
$_ArrayVarFunction::
	.dbline -1
	.dbline 144
; 
; }
; 
; //When a menu item is first select, this sets the UpdateArrayVar to cause 
; //a variable array to be update
; int ArrayVarFunction ( void )
; {
	.dbline 145
;     UpdateArrayVar = 8;
	movb #8,_UpdateArrayVar
	.dbline 146
; 	return StdVarFunction();
	jsr _StdVarFunction
	.dbline -2
L26:
	.dbline 0 ; func end
	rtc
	.dbend
	.dbfunc e UpdateArrayVariables _UpdateArrayVariables fV
;              i -> 8,SP
;        tempstr -> 10,SP
;            num -> 28,SP
;            var -> 22,SP
$_UpdateArrayVariables::
	pshd
	leas -22,S
	.dbline -1
	.dbline 150
; }
; 
; void UpdateArrayVariables ( struct menu_var *var, char num )
; {
	.dbline 152
;     char tempstr[12];
;     int i=0;
	movw #0,8,S
	.dbline 154
;     
; 	if (num)
	ldab 28,S
	cmpb #0
	lbeq L28
	.dbline 155
; 	{
	.dbline 156
;         var = getVariable();
	xcall $_getVariable
	tfr D,X
	stx 22,S
	.dbline 157
;         strncpy (tempstr,&var->str_value[0],sizeof(tempstr));
	ldy #12
	sty 2,S
	ldd 22,S
	addd #18
	std 0,S
	leay 10,S
	tfr Y,D
	xcall $_strncpy
	bra L31
L30:
	.dbline 159
;         while (i++ < num-1)
;         {
	.dbline 160
;             var++;
	ldd 22,S
	addd #34
	std 22,S
	.dbline 161
;         	strncpy (&var->str_value[0],tempstr,var->len_str);
	addd #17
	tfr D,Y
	ldab 0,Y
	tfr B,Y
	sty 2,S
	leay 10,S
	sty 0,S
	ldd 22,S
	addd #18
	xcall $_strncpy
	.dbline 162
;         	getvalue(var,0);
	ldy #0
	sty 0,S
	ldd 22,S
	xcall $_getvalue
	leas 4,S
	.dbline 163
;         }
L31:
	.dbline 158
	movw 8,S,6,S
	ldy 6,S
	iny
	sty 8,S
	ldab 28,S
	clra
	tfr D,Y
	dey
	cpy 6,S
	bgt L30
	.dbline 164
; 		LoadMenu ( MenuStackc[StackPointer].Index );
	ldab _StackPointer
	clra
	tfr D,Y
	ldd #6
	emul
	tfr D,Y
	ldx #_MenuStackc
	tfr Y,D
	stx 4,S
	addd 4,S
	xcall $_LoadMenu
	.dbline 165
; 		DisplayTitler ();
	xcall $_DisplayTitler
	.dbline 166
; 	}
L28:
	.dbline -2
L27:
	.dbline 0 ; func end
	leas 24,S
	rtc
	.dbsym l i 8 I
	.dbsym l tempstr 10 A[12:12]c
	.dbsym l num 28 c
	.dbsym l var 22 pS[menu_var]
	.dbend
	.dbfunc e SkipVarFunction _SkipVarFunction fI
;            var -> 8,SP
;              i -> 10,SP
$_SkipVarFunction::
	leas -12,S
	.dbline -1
	.dbline 172
; }
; 
; //When a menu item is first select, this skips the first variable on the line (multi-variable)
; //The first variable can be used to display info such as temperature
; int SkipVarFunction ( void )
; {
	.dbline 176
;     int i;
; 	struct menu_var *var;
; 	
; 	if ( !Variable_flag ) //Here the first time select is pushed
	ldab _Variable_flag
	cmpb #0
	lbne L34
	.dbline 177
; 	{
	.dbline 178
; 	    i = FindMenu(); 
	xcall $_FindMenu
	clra
	tfr D,Y
	sty 10,S
	.dbline 179
; 	    var = Menuc[i].VarPntr[MenuStackc[StackPointer].CursorPos+MenuStackc[StackPointer].FirstLine-1];
	ldab _StackPointer
	clra
	tfr D,Y
	ldd #6
	emul
	std 6,S
	ldy #_MenuStackc+5
	sty 0,S
	addd 0,S
	tfr D,Y
	ldab 0,Y
	clra
	std 4,S
	ldd 6,S
	ldx #_MenuStackc+4
	stx 0,S
	addd 0,S
	tfr D,Y
	ldab 0,Y
	clra
	tfr D,Y
	ldx 4,S
	tfr Y,D
	stx 0,S
	addd 0,S
	subd #1
	lsld
	std 2,S
	ldy 10,S
	ldd #311
	emul
	tfr D,Y
	ldx #_Menuc+267
	tfr Y,D
	stx 0,S
	addd 0,S
	tfr D,Y
	ldd 2,S
	sty 0,S
	addd 0,S
	tfr D,Y
	movw 0,Y,8,S
	.dbline 181
; 	    //var is the 1st variable pointed to in the menu
; 		next_variable( var );
	ldd 8,S
	xcall $_next_variable
	.dbline 183
; 		
; 		Variable_flag = 1;
	movb #1,_Variable_flag
	.dbline 184
; 	}
L34:
	.dbline 186
;     
; 	return StdVarFunction();
	jsr _StdVarFunction
	.dbline -2
L33:
	.dbline 0 ; func end
	leas 12,S
	rtc
	.dbsym l var 8 pS[menu_var]
	.dbsym l i 10 I
	.dbend
	.area text
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines1.c
	.dbfunc e StdVarFunction _StdVarFunction fI
;      old_value -> 8,SP
;              i -> 12,SP
;            var -> 14,SP
_StdVarFunction::
	leas -16,S
	.dbline -1
	.dbline 191
; }
; 
; //When a menu item is first select, this sets the Variable
; int StdVarFunction ( void )
; {
	.dbline 196
;     int i;
; 	struct menu_var *var;
; 	float old_value; 
; 	
; 	i = FindMenu(); 
	xcall $_FindMenu
	clra
	tfr D,Y
	sty 12,S
	.dbline 197
; 	var = Menuc[i].VarPntr[MenuStackc[StackPointer].CursorPos+MenuStackc[StackPointer].FirstLine-1];
	ldab _StackPointer
	clra
	tfr D,Y
	ldd #6
	emul
	std 6,S
	ldy #_MenuStackc+5
	sty 0,S
	addd 0,S
	tfr D,Y
	ldab 0,Y
	clra
	std 4,S
	ldd 6,S
	ldx #_MenuStackc+4
	stx 0,S
	addd 0,S
	tfr D,Y
	ldab 0,Y
	clra
	tfr D,Y
	ldx 4,S
	tfr Y,D
	stx 0,S
	addd 0,S
	subd #1
	lsld
	std 2,S
	ldy 12,S
	ldd #311
	emul
	tfr D,Y
	ldx #_Menuc+267
	tfr Y,D
	stx 0,S
	addd 0,S
	tfr D,Y
	ldd 2,S
	sty 0,S
	addd 0,S
	tfr D,Y
	movw 0,Y,14,S
	.dbline 201
; 	    //var is the 1st variable pointed to in the menu
; 	
; 	
; 	if ( !Variable_flag ) //Here the first time select is pushed
	ldab _Variable_flag
	cmpb #0
	bne L43
	.dbline 202
;     {
	.dbline 203
; 		Variable_flag = 1;
	movb #1,_Variable_flag
	.dbline 204
; 		Multi_Var_ptr = 0;
	clr _Multi_Var_ptr
	.dbline 205
; 		String_Var_ptr = 0;
	clr _String_Var_ptr
	.dbline 207
; 		
;         if (var->next_var)
	ldd 14,S
	addd #32
	tfr D,Y
	ldy 0,Y
	cpy #0
	beq L45
	.dbline 208
; 		    Multi_Var_ptr = 1;
	movb #1,_Multi_Var_ptr
L45:
	.dbline 210
; 			
; 		if ( var->len_str < 0 )	//puts a cursor char in "String type" variables <<<<<<<<<<<<<<<<<<
	ldd 14,S
	addd #17
	tfr D,Y
	ldab 0,Y
	cmpb #0
	bge L47
	.dbline 211
; 		{
	.dbline 212
;     		String_Var_ptr = 1;
	movb #1,_String_Var_ptr
	.dbline 213
; 			StdVarFunc_String(var);
	ldd 14,S
	xcall $_StdVarFunc_String
	.dbline 214
; 		}
	bra L44
L47:
	.dbline 216
; 		else			   //non "String type" variables
; 		{
	.dbline 217
;             LoadMenu ( MenuStackc[StackPointer].Index );
	ldab _StackPointer
	clra
	tfr D,Y
	ldd #6
	emul
	tfr D,Y
	ldx #_MenuStackc
	tfr Y,D
	stx 0,S
	addd 0,S
	xcall $_LoadMenu
	.dbline 218
; 		}
	.dbline 219
;     }
	bra L44
L43:
	.dbline 221
;     else //Here if select had already been pushed, see if more variables or string variable, or end if needed
;     {
	.dbline 223
; 
; 	    var = getVariable();// Get the variable pointed to by Multi_Var_ptr
	xcall $_getVariable
	tfr D,X
	stx 14,S
	.dbline 226
; 		 
; 		//see if "String type" before going to next multi var
; 		if (var->len_str < 0) //"String type"
	tfr X,D
	addd #17
	tfr D,Y
	ldab 0,Y
	cmpb #0
	bge L49
	.dbline 227
; 		{
	.dbline 228
; 		    Next_Char_In_String_Var( var );  
	ldd 14,S
	xcall $_Next_Char_In_String_Var
	.dbline 229
; 		}
	bra L50
L49:
	.dbline 231
; 		else
; 		{
	.dbline 232
; 		    next_variable( var );
	ldd 14,S
	xcall $_next_variable
	.dbline 233
; 		}
L50:
	.dbline 234
;     }
L44:
	.dbline 237
; 
; 
;     DisplayTitler ();
	xcall $_DisplayTitler
	.dbline 238
;     return 0;
	ldd #0
	.dbline -2
L39:
	.dbline 0 ; func end
	leas 16,S
	rts
	.dbsym l old_value 8 D
	.dbsym l i 12 I
	.dbsym l var 14 pS[menu_var]
	.dbend
	.dbfunc e ExitMenu _ExitMenu fI
_ExitMenu::
	.dbline -1
	.dbline 242
; }
; 
; int ExitMenu ( void )
; {
	.dbline 243
;     DeSelect ();
	xcall $_DeSelect
	.dbline 244
; 	return 0;
	ldd #0
	.dbline -2
L51:
	.dbline 0 ; func end
	rts
	.dbend
	.area extcode(paged)
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines1.c
	.dbfunc e CursorUp _CursorUp fV
$_CursorUp::
	leas -8,S
	.dbline -1
	.dbline 248
; }
; 
; void CursorUp( void )
; {
	.dbline 249
;     if ( Variable_flag )
	ldab _Variable_flag
	cmpb #0
	beq L53
	.dbline 250
;     {
	.dbline 251
;          IncVariable ();
	xcall $_IncVariable
	.dbline 252
; 		 UpdateArrayVariables (getVariable(),UpdateArrayVar);
	xcall $_getVariable
	tfr D,X
	stx 6,S
	ldab _UpdateArrayVar
	clra
	std 0,S
	ldd 6,S
	xcall $_UpdateArrayVariables
	.dbline 253
;     }
	bra L54
L53:
	.dbline 255
;     else
;     {
	.dbline 256
;        MenuStackc[StackPointer].CursorPos--;
	ldab _StackPointer
	clra
	tfr D,Y
	ldd #6
	emul
	tfr D,Y
	ldx #_MenuStackc+4
	tfr Y,D
	stx 2,S
	addd 2,S
	tfr D,Y
	sty 4,S
	ldab [4,S]
	tfr B,Y
	dey
	ldx 4,S
	tfr Y,B
	stab 0,X
	.dbline 257
;        LoadMenu ( MenuStackc[StackPointer].Index );
	ldab _StackPointer
	clra
	tfr D,Y
	ldd #6
	emul
	tfr D,Y
	ldx #_MenuStackc
	tfr Y,D
	stx 2,S
	addd 2,S
	xcall $_LoadMenu
	.dbline 258
;        InsertCursor ();
	xcall $_InsertCursor
	.dbline 259
;        DisplayTitler ();
	xcall $_DisplayTitler
	.dbline 260
;     }
L54:
	.dbline -2
L52:
	.dbline 0 ; func end
	leas 8,S
	rtc
	.dbend
	.dbfunc e CursorDown _CursorDown fV
$_CursorDown::
	leas -8,S
	.dbline -1
	.dbline 264
; }
; 
; void CursorDown( void )
; {
	.dbline 265
;     if ( Variable_flag )
	ldab _Variable_flag
	cmpb #0
	beq L57
	.dbline 266
;     {
	.dbline 267
;          DecVariable ();
	xcall $_DecVariable
	.dbline 268
; 		 UpdateArrayVariables (getVariable(),UpdateArrayVar);
	xcall $_getVariable
	tfr D,X
	stx 6,S
	ldab _UpdateArrayVar
	clra
	std 0,S
	ldd 6,S
	xcall $_UpdateArrayVariables
	.dbline 269
;     }
	bra L58
L57:
	.dbline 271
;     else
;     {
	.dbline 272
;        MenuStackc[StackPointer].CursorPos++;
	ldab _StackPointer
	clra
	tfr D,Y
	ldd #6
	emul
	tfr D,Y
	ldx #_MenuStackc+4
	tfr Y,D
	stx 2,S
	addd 2,S
	tfr D,Y
	sty 4,S
	ldab [4,S]
	tfr B,Y
	iny
	ldx 4,S
	tfr Y,B
	stab 0,X
	.dbline 273
;        LoadMenu ( MenuStackc[StackPointer].Index );
	ldab _StackPointer
	clra
	tfr D,Y
	ldd #6
	emul
	tfr D,Y
	ldx #_MenuStackc
	tfr Y,D
	stx 2,S
	addd 2,S
	xcall $_LoadMenu
	.dbline 274
;        InsertCursor ();
	xcall $_InsertCursor
	.dbline 275
;        DisplayTitler ();
	xcall $_DisplayTitler
	.dbline 276
;     }
L58:
	.dbline -2
L56:
	.dbline 0 ; func end
	leas 8,S
	rtc
	.dbend
	.dbfunc e getvalue _getvalue fD
;        tempstr -> 10,SP
;          token -> 130,SP
;              i -> 132,SP
;          index -> 140,SP
;            var -> 134,SP
$_getvalue::
	pshd
	leas -134,S
	.dbline -1
	.dbline 283
; }
; 
; //Gets the value member corresponding to the str_value member
; //-OR- gets the enum number corresponding to the str_value member
; //-OR- gets the enum number of the char pointed to by index for "String type" variables
; float getvalue (struct menu_var* var, char index)
; {
	.dbline 288
;     char tempstr[120];
;     char *token;
;     int i;
; 
;     if (strlen(var->str_enum) && var->len_str >= 0) //regular enum list
	ldd 134,S
	addd #30
	tfr D,Y
	ldd 0,Y
	xcall $_strlen
	cpd #0
	lbeq L61
	ldd 134,S
	addd #17
	tfr D,Y
	ldab 0,Y
	cmpb #0
	lblt L61
	.dbline 289
;     {
	.dbline 290
;         strncpy(tempstr,var->str_enum,sizeof(tempstr));
	ldy #120
	sty 2,S
	ldd 134,S
	addd #30
	tfr D,Y
	ldy 0,Y
	sty 0,S
	leay 10,S
	tfr Y,D
	xcall $_strncpy
	.dbline 292
; 
;         for (i=1;i<=var->max;i++)
	leax 132,S
	movw #1,0,x
	bra L66
L63:
	.dbline 293
;         {
	.dbline 294
;             if (i==1)
	ldy 132,S
	cpy #1
	bne L67
	.dbline 295
;                 token = strtok(tempstr, ",");
	ldy #L69
	sty 0,S
	leay 10,S
	tfr Y,D
	xcall $_strtok
	std 130,S
	bra L68
L67:
	.dbline 297
;             else
;                 token = strtok(NULL, ",");
	ldy #L69
	sty 0,S
	ldd #0
	xcall $_strtok
	std 130,S
L68:
	.dbline 299
; 
; 			if ( !strcmp(var->str_value,token) )
	ldy 130,S
	sty 0,S
	ldd 134,S
	addd #18
	xcall $_strcmp
	cpd #0
	bne L70
	.dbline 300
; 			{
	.dbline 301
; 			    var->value = i;
	ldd 132,S
	ldy 134,S
	jsr int2fp
	pulx
	stx 0,Y
	pulx
	stx 2,Y
	.dbline 302
; 				break;
	lbra L62
L70:
	.dbline 304
; 			}
;         }
L64:
	.dbline 292
	ldy 132,S
	iny
	sty 132,S
L66:
	.dbline 292
	ldd 132,S
	jsr int2fp
	ldd 138,S
	addd #12
	tfr D,Y
	movw 2,Y,2,-S
	movw 0,Y,2,-S
	jsr cmpf4
	lble L63
	.dbline 305
; 	}
	lbra L62
L61:
	.dbline 306
; 	else if (strlen(var->str_enum) && var->len_str < 0) //"String type" enum list
	ldd 134,S
	addd #30
	tfr D,Y
	ldd 0,Y
	xcall $_strlen
	cpd #0
	lbeq L72
	ldd 134,S
	addd #17
	tfr D,Y
	ldab 0,Y
	cmpb #0
	lbge L72
	.dbline 307
; 	{
	.dbline 308
;         strncpy(tempstr,var->str_enum,sizeof(tempstr));
	ldy #120
	sty 2,S
	ldd 134,S
	addd #30
	tfr D,Y
	ldy 0,Y
	sty 0,S
	leay 10,S
	tfr Y,D
	xcall $_strncpy
	.dbline 310
; 
;         for (i=1;i<=var->max;i++)
	leax 132,S
	movw #1,0,x
	lbra L77
L74:
	.dbline 311
;         {
	.dbline 312
;             if (i==1)
	ldy 132,S
	cpy #1
	bne L78
	.dbline 313
;                 token = strtok(tempstr, ",");
	ldy #L69
	sty 0,S
	leay 10,S
	tfr Y,D
	xcall $_strtok
	std 130,S
	bra L79
L78:
	.dbline 315
;             else
;                 token = strtok(NULL, ",");
	ldy #L69
	sty 0,S
	ldd #0
	xcall $_strtok
	std 130,S
L79:
	.dbline 317
; 
; 			if ( *(var->str_value+index) == *token )
	ldd 134,S
	addd #18
	tfr D,Y
	ldab 140,S
	clra
	sty 4,S
	addd 4,S
	tfr D,Y
	ldab 0,Y
	cmpb [130,S]
	bne L80
	.dbline 318
; 			{
	.dbline 319
; 			    var->value = i;
	ldd 132,S
	ldy 134,S
	jsr int2fp
	pulx
	stx 0,Y
	pulx
	stx 2,Y
	.dbline 320
; 				break;
	lbra L73
L80:
	.dbline 322
; 			}
;         }
L75:
	.dbline 310
	ldy 132,S
	iny
	sty 132,S
L77:
	.dbline 310
	ldd 132,S
	jsr int2fp
	ldd 138,S
	addd #12
	tfr D,Y
	movw 2,Y,2,-S
	movw 0,Y,2,-S
	jsr cmpf4
	lble L74
	.dbline 324
; 
; 	}
	bra L73
L72:
	.dbline 325
; 	else if (strlen(var->str_enum) == 0) //"Numeric type" variable, get value of string
	ldd 134,S
	addd #30
	tfr D,Y
	ldd 0,Y
	xcall $_strlen
	cpd #0
	bne L82
	.dbline 326
;     {
	.dbline 327
;         var->value=atof(var->str_value);
	ldd 134,S
	addd #18
	jsr _atof
	puld
	std 8,S
	puld
	std 8,S
	ldy 134,S
	ldd 8,S
	pshd
	ldd 8,S
	pshd
	pulx
	stx 0,Y
	pulx
	stx 2,Y
	.dbline 328
;     }
L82:
L73:
L62:
	.dbline 329
; 	return var->value;
	ldy 134,S
	movw 2,Y,2,-S
	movw 0,Y,2,-S
	.dbline -2
L60:
	.dbline 0 ; func end
	ldd #136
	jmp lret_paged
	.dbsym l tempstr 10 A[120:120]c
	.dbsym l token 130 pc
	.dbsym l i 132 I
	.dbsym l index 140 c
	.dbsym l var 134 pS[menu_var]
	.dbend
	.dbfunc e getstrval _getstrval fpc
;        tempstr -> 28,SP
;          token -> 128,SP
;              i -> 130,SP
;            var -> 132,SP
$_getstrval::
	pshd
	leas -132,S
	.dbline -1
	.dbline 336
; }
; 
; //Creates a string from the value member or the enum member
; //assigns the string to ->str_value, left pads with space so length = ->len_str
; //also returns a pointer to the string
; char * getstrval (struct menu_var* var)
; {
	.dbline 341
;     char tempstr[100];
;     char *token;
;     int i;
; 
;     if (strlen(var->str_enum) && var->len_str >= 0) //"Enum Type" variable here
	ldd 132,S
	addd #30
	tfr D,Y
	ldd 0,Y
	xcall $_strlen
	cpd #0
	lbeq L85
	ldd 132,S
	addd #17
	tfr D,Y
	ldab 0,Y
	cmpb #0
	lblt L85
	.dbline 342
;     {
	.dbline 343
;         strncpy(tempstr,var->str_enum,sizeof(tempstr));
	ldy #100
	sty 2,S
	ldd 132,S
	addd #30
	tfr D,Y
	ldy 0,Y
	sty 0,S
	leay 28,S
	tfr Y,D
	xcall $_strncpy
	.dbline 344
;         token = strtok(tempstr, ",");
	ldy #L69
	sty 0,S
	leay 28,S
	tfr Y,D
	xcall $_strtok
	std 128,S
	.dbline 345
;         for (i=0;i<var->value-1;i++)
	leax 130,S
	movw #0,0,x
	bra L90
L87:
	.dbline 346
;         {
	.dbline 347
;             token = strtok(NULL, ",");
	ldy #L69
	sty 0,S
	ldd #0
	xcall $_strtok
	std 128,S
	.dbline 348
;         }
L88:
	.dbline 345
	ldy 130,S
	iny
	sty 130,S
L90:
	.dbline 345
	ldd 130,S
	jsr int2fp
	ldy 136,S
	movw 2,Y,2,-S
	movw 0,Y,2,-S
	movw #0,2,-S
	movw #16256,2,-S
	jsr subf4
	jsr cmpf4
	blt L87
	.dbline 349
;         strncpy(var->str_value,token,var->len_str); //The enum string without leading spaces should be shorter than len(var->str_value)
	ldd 132,S
	addd #17
	tfr D,Y
	ldab 0,Y
	tfr B,Y
	sty 2,S
	ldy 128,S
	sty 0,S
	ldd 132,S
	addd #18
	xcall $_strncpy
	.dbline 350
; 		sprintf(tempstr,"%*s%s",10," ",var->str_value); //Use tempstr to pad with leading spaces
	ldd 132,S
	addd #18
	std 8,S
	ldy #L92
	sty 6,S
	ldy #10
	sty 4,S
	ldy #L91
	sty 2,S
	leay 28,S
	sty 0,S
	xcall $_sprintf
	.dbline 351
; 		strncpy(var->str_value,tempstr+strlen(tempstr)-abs(var->len_str),var->len_str); //put back in var->str_value
	leay 28,S
	tfr Y,D
	xcall $_strlen
	tfr D,X
	stx 22,S
	ldd 132,S
	addd #17
	tfr D,Y
	ldab 0,Y
	tfr B,D
	xcall $_abs
	tfr D,X
	stx 20,S
	ldd 132,S
	addd #17
	tfr D,Y
	ldab 0,Y
	tfr B,Y
	sty 2,S
	ldd 22,S
	leay 28,S
	sty 14,S
	addd 14,S
	subd 20,S
	std 0,S
	ldd 132,S
	addd #18
	xcall $_strncpy
	.dbline 352
;     }
	lbra L86
L85:
	.dbline 353
;     else if ( strlen(var->str_enum) && var->len_str < 0 ) //"String Type" variables here, get char (using value) from enum and put in string location indicated by String_Var_ptr 
	ldd 132,S
	addd #30
	tfr D,Y
	ldd 0,Y
	xcall $_strlen
	cpd #0
	lbeq L93
	ldd 132,S
	addd #17
	tfr D,Y
	ldab 0,Y
	cmpb #0
	lbge L93
	.dbline 354
; 	{
	.dbline 357
; 	    
; 		
; 		strncpy(tempstr,var->str_enum,sizeof(tempstr)); 
	ldy #100
	sty 2,S
	ldd 132,S
	addd #30
	tfr D,Y
	ldy 0,Y
	sty 0,S
	leay 28,S
	tfr Y,D
	xcall $_strncpy
	.dbline 359
; 									   
;         for (i=0;i<var->value;i++)   
	leax 130,S
	movw #0,0,x
	bra L98
L95:
	.dbline 360
;         {							   
	.dbline 361
;             if (i==0)
	ldy 130,S
	cpy #0
	bne L99
	.dbline 362
; 			   token = strtok(tempstr, ",");
	ldy #L69
	sty 0,S
	leay 28,S
	tfr Y,D
	xcall $_strtok
	std 128,S
	bra L100
L99:
	.dbline 364
; 			else
; 			   token = strtok(NULL, ","); 
	ldy #L69
	sty 0,S
	ldd #0
	xcall $_strtok
	std 128,S
L100:
	.dbline 365
;         }
L96:
	.dbline 359
	ldy 130,S
	iny
	sty 130,S
L98:
	.dbline 359
	ldd 130,S
	jsr int2fp
	ldy 136,S
	movw 2,Y,2,-S
	movw 0,Y,2,-S
	jsr cmpf4
	blt L95
	.dbline 366
;         var->str_value[String_Var_ptr-1]=*token;
	ldd 132,S
	addd #18
	tfr D,Y
	ldab _String_Var_ptr
	clra
	subd #1
	sty 14,S
	addd 14,S
	tfr D,Y
	ldab [128,S]
	stab 0,Y
	.dbline 368
; 		//sprintf(var->str_value,"%*s%s",10," ",token);
; 	}
	lbra L94
L93:
	.dbline 370
; 	else //"Numeric Type" varaible
;     {
	.dbline 371
;         tempstr[0]=NULL;
	clr 28,S
	.dbline 372
; 		if (var->dec_pos)
	ldd 132,S
	addd #16
	tfr D,Y
	ldab 0,Y
	cmpb #0
	lbeq L101
	.dbline 373
; 		{
	.dbline 374
; 			sprintf(tempstr,"%*s%#.*f",10," ",var->dec_pos,var->value); //force decimal if float, us tempstr so it won't overflow var->str_value
	ldy 132,S
	movw 0,Y,10,S
	movw 2,Y,12,S
	ldd 132,S
	addd #16
	tfr D,Y
	ldab 0,Y
	clra
	std 8,S
	ldy #L92
	sty 6,S
	ldy #10
	sty 4,S
	ldy #L103
	sty 2,S
	leay 28,S
	sty 0,S
	xcall $_sprintf
	.dbline 375
; 			if (atof(tempstr) == 0)// This gets rid of -0.0
	leay 28,S
	tfr Y,D
	jsr _atof
	puld
	std 26,S
	puld
	std 26,S
	ldd 26,S
	pshd
	ldd 26,S
	pshd
	movw #0,2,-S
	movw #0,2,-S
	jsr cmpf4
	lbne L102
	.dbline 376
; 			{
	.dbline 377
; 			    var->value = 0;
	ldy 132,S
	movw #0,2,-S
	movw #0,2,-S
	pulx
	stx 0,Y
	pulx
	stx 2,Y
	.dbline 378
; 				sprintf(tempstr,"%*s%#.*f",10," ",var->dec_pos,var->value);
	ldy 132,S
	movw 0,Y,10,S
	movw 2,Y,12,S
	ldd 132,S
	addd #16
	tfr D,Y
	ldab 0,Y
	clra
	std 8,S
	ldy #L92
	sty 6,S
	ldy #10
	sty 4,S
	ldy #L103
	sty 2,S
	leay 28,S
	sty 0,S
	xcall $_sprintf
	.dbline 379
; 			}
	.dbline 380
;         }
	bra L102
L101:
	.dbline 382
; 		else
; 		{
	.dbline 383
; 		    sprintf(tempstr,"%*s%.*f",10," ",var->dec_pos,var->value); //don't force decimal on int, us tempstr so it won't overflow var->str_value
	ldy 132,S
	movw 0,Y,10,S
	movw 2,Y,12,S
	ldd 132,S
	addd #16
	tfr D,Y
	ldab 0,Y
	clra
	std 8,S
	ldy #L92
	sty 6,S
	ldy #10
	sty 4,S
	ldy #L106
	sty 2,S
	leay 28,S
	sty 0,S
	xcall $_sprintf
	.dbline 384
; 		}
L102:
	.dbline 385
; 		strncpy(var->str_value,tempstr+strlen(tempstr)-abs(var->len_str),var->len_str); //Put back in var->str_value  //dld modified 6/6/2022, removed misleading indent
	leay 28,S
	tfr Y,D
	xcall $_strlen
	tfr D,X
	stx 18,S
	ldd 132,S
	addd #17
	tfr D,Y
	ldab 0,Y
	tfr B,D
	xcall $_abs
	tfr D,X
	stx 16,S
	ldd 132,S
	addd #17
	tfr D,Y
	ldab 0,Y
	tfr B,Y
	sty 2,S
	ldd 18,S
	leay 28,S
	sty 14,S
	addd 14,S
	subd 16,S
	std 0,S
	ldd 132,S
	addd #18
	xcall $_strncpy
	.dbline 386
;     }
L94:
L86:
	.dbline 388
;     
; 	return var->str_value;
	ldd 132,S
	addd #18
	.dbline -2
L84:
	.dbline 0 ; func end
	leas 134,S
	rtc
	.dbsym l tempstr 28 A[100:100]c
	.dbsym l token 128 pc
	.dbsym l i 130 I
	.dbsym l var 132 pS[menu_var]
	.dbend
	.dbfunc e FindMenu _FindMenu fc
;              k -> 14,SP
$_FindMenu::
	leas -16,S
	.dbline -1
	.dbline 392
; }
; 
; char FindMenu ( void )
; {
	.dbline 396
;      int k;
;      
;      //Find out which menu we are on
;      for ( k=0;k<MenuSize;k++ )
	movw #0,14,S
L108:
	.dbline 397
;      {
	.dbline 398
;         if ( Menuc[k].Index[0] == MenuStackc[StackPointer].Index[0] && Menuc[k].Index[1] == MenuStackc[StackPointer].Index[1] && 
	ldd #311
	ldy 14,S
	emul
	tfr D,Y
	ldx #6
	sty 12,S
	ldab _StackPointer
	clra
	tfr D,Y
	tfr X,D
	emul
	std 10,S
	ldy #_MenuStackc
	sty 0,S
	addd 0,S
	std 8,S
	ldd 12,S
	ldx #_Menuc
	stx 0,S
	addd 0,S
	tfr D,Y
	ldab 0,Y
	tfr B,Y
	ldx 8,S
	tfr Y,B
	cmpb 0,X
	lbne L112
	ldd 10,S
	ldy #_MenuStackc+1
	sty 0,S
	addd 0,S
	std 6,S
	ldd 12,S
	ldx #_Menuc+1
	stx 0,S
	addd 0,S
	tfr D,Y
	ldab 0,Y
	tfr B,Y
	ldx 6,S
	tfr Y,B
	cmpb 0,X
	bne L112
	ldd 10,S
	ldy #_MenuStackc+2
	sty 0,S
	addd 0,S
	std 4,S
	ldd 12,S
	ldx #_Menuc+2
	stx 0,S
	addd 0,S
	tfr D,Y
	ldab 0,Y
	tfr B,Y
	ldx 4,S
	tfr Y,B
	cmpb 0,X
	bne L112
	ldd 10,S
	ldy #_MenuStackc+3
	sty 0,S
	addd 0,S
	std 2,S
	ldd 12,S
	ldx #_Menuc+3
	stx 0,S
	addd 0,S
	tfr D,Y
	ldab 0,Y
	tfr B,Y
	ldx 2,S
	tfr Y,B
	cmpb 0,X
	bne L112
	.dbline 400
;              Menuc[k].Index[2] == MenuStackc[StackPointer].Index[2] && Menuc[k].Index[3] == MenuStackc[StackPointer].Index[3] )
;         {
	.dbline 401
; 		    break;
	bra L110
L112:
	.dbline 403
; 		}
; 	 }
L109:
	.dbline 396
	ldy 14,S
	iny
	sty 14,S
	.dbline 396
	cpy #17
	lblt L108
L110:
	.dbline 404
; 	 return k;
	ldd 14,S
	clra
	.dbline -2
L107:
	.dbline 0 ; func end
	leas 16,S
	rtc
	.dbsym l k 14 I
	.dbend
	.dbfunc e IncVariable _IncVariable fV
$_IncVariable::
	leas -2,S
	.dbline -1
	.dbline 408
; }
; 
; void IncVariable ( void )
; {
	.dbline 409
; 	 incvar(getVariable());
	xcall $_getVariable
	xcall $_incvar
	.dbline 410
;      LoadMenu ( MenuStackc[StackPointer].Index );
	ldab _StackPointer
	clra
	tfr D,Y
	ldd #6
	emul
	tfr D,Y
	ldx #_MenuStackc
	tfr Y,D
	stx 0,S
	addd 0,S
	xcall $_LoadMenu
	.dbline 411
;      DisplayTitler ();
	xcall $_DisplayTitler
	.dbline -2
L120:
	.dbline 0 ; func end
	leas 2,S
	rtc
	.dbend
	.dbfunc e incvar _incvar fpc
;            var -> 2,SP
$_incvar::
	pshd
	leas -2,S
	.dbline -1
	.dbline 419
; }
; 
; //Increments a variable using the inc member
; //Wraps around to min value if max value is exceeded
; //assigns the equivalent string to the str_value member
; //also returns a pointer to the string
; char *incvar ( struct menu_var *var )
; {
	.dbline 420
; 	getvalue(var,String_Var_ptr-1);  // String_Var_ptr points to the char with in var>str_value that is being modified
	ldab _String_Var_ptr
	tfr B,Y
	dey
	tfr Y,D
	clra
	std 0,S
	ldd 2,S
	xcall $_getvalue
	leas 4,S
	.dbline 422
; 					 			   // the enum value is retrieved and put in var->value so "incvar" and "decvar" can use it
;     IncSpeedUpTimer = MenuTimer * 1.1;
	movw #52429,2,-S
	movw #16268,2,-S
	ldd _MenuTimer
	jsr uint2fp
	jsr mulf4
	jsr fp2int
	tfr D,Y
	sty _IncSpeedUpTimer
	.dbline 424
;     
;     if ( fast_inc )
	ldab _fast_inc
	cmpb #0
	beq L122
	.dbline 425
;         var->value = var->value + var->inc*10;
	ldy 2,S
	ldx 2,S
	movw 2,X,2,-S
	movw 0,X,2,-S
	movw #0,2,-S
	movw #16672,2,-S
	ldd 10,S
	addd #4
	tfr D,X
	movw 2,X,2,-S
	movw 0,X,2,-S
	jsr mulf4
	jsr addf4
	pulx
	stx 0,Y
	pulx
	stx 2,Y
	bra L123
L122:
	.dbline 427
; 	else
;         var->value = var->value + var->inc;
	ldy 2,S
	ldx 2,S
	movw 2,X,2,-S
	movw 0,X,2,-S
	ldd 6,S
	addd #4
	tfr D,X
	movw 2,X,2,-S
	movw 0,X,2,-S
	jsr addf4
	pulx
	stx 0,Y
	pulx
	stx 2,Y
L123:
	.dbline 429
; 		
;     if(var->value>var->max+var->inc/10){
	ldy 2,S
	movw 2,Y,2,-S
	movw 0,Y,2,-S
	ldd 6,S
	addd #12
	tfr D,Y
	movw 2,Y,2,-S
	movw 0,Y,2,-S
	ldd 10,S
	addd #4
	tfr D,Y
	movw 2,Y,2,-S
	movw 0,Y,2,-S
	movw #0,2,-S
	movw #16672,2,-S
	jsr divf4
	jsr addf4
	jsr cmpf4
	ble L124
	.dbline 429
	.dbline 430
;         var->value=var->min;
	ldd 2,S
	addd #8
	tfr D,X
	ldy 2,S
	movw 2,X,2,-S
	movw 0,X,2,-S
	pulx
	stx 0,Y
	pulx
	stx 2,Y
	.dbline 431
;     }
L124:
	.dbline 432
;     return getstrval(var);
	ldd 2,S
	xcall $_getstrval
	.dbline -2
L121:
	.dbline 0 ; func end
	leas 4,S
	rtc
	.dbsym l var 2 pS[menu_var]
	.dbend
	.dbfunc e DecVariable _DecVariable fV
$_DecVariable::
	leas -2,S
	.dbline -1
	.dbline 436
; }
; 
; void DecVariable ( void )
; {
	.dbline 437
; 	 decvar(getVariable());
	xcall $_getVariable
	xcall $_decvar
	.dbline 438
;      LoadMenu ( MenuStackc[StackPointer].Index );
	ldab _StackPointer
	clra
	tfr D,Y
	ldd #6
	emul
	tfr D,Y
	ldx #_MenuStackc
	tfr Y,D
	stx 0,S
	addd 0,S
	xcall $_LoadMenu
	.dbline 439
;      DisplayTitler ();
	xcall $_DisplayTitler
	.dbline -2
L126:
	.dbline 0 ; func end
	leas 2,S
	rtc
	.dbend
	.dbfunc e decvar _decvar fpc
;            var -> 2,SP
$_decvar::
	pshd
	leas -2,S
	.dbline -1
	.dbline 447
; }
; 
; //Decrements a variable using the inc member
; //Wraps around to max value if min value is exceeded
; //assigns the equivalent string to the str_value member
; //also returns a pointer to the string
; char *decvar ( struct menu_var *var )
; {
	.dbline 448
;  	getvalue(var,String_Var_ptr-1);  // String_Var_ptr points to the char with in var>str_value that is being modified
	ldab _String_Var_ptr
	tfr B,Y
	dey
	tfr Y,D
	clra
	std 0,S
	ldd 2,S
	xcall $_getvalue
	leas 4,S
	.dbline 451
; 					 			   // the enum value is retrieved and put in var->value so "incvar" and "decvar" can use it
; 
;     IncSpeedUpTimer = MenuTimer * 1.1;
	movw #52429,2,-S
	movw #16268,2,-S
	ldd _MenuTimer
	jsr uint2fp
	jsr mulf4
	jsr fp2int
	tfr D,Y
	sty _IncSpeedUpTimer
	.dbline 453
;     
;     if ( fast_inc )
	ldab _fast_inc
	cmpb #0
	beq L128
	.dbline 454
;         var->value = var->value - var->inc*10;
	ldy 2,S
	ldx 2,S
	movw 2,X,2,-S
	movw 0,X,2,-S
	movw #0,2,-S
	movw #16672,2,-S
	ldd 10,S
	addd #4
	tfr D,X
	movw 2,X,2,-S
	movw 0,X,2,-S
	jsr mulf4
	jsr subf4
	pulx
	stx 0,Y
	pulx
	stx 2,Y
	bra L129
L128:
	.dbline 456
; 	else
;         var->value = var->value - var->inc;
	ldy 2,S
	ldx 2,S
	movw 2,X,2,-S
	movw 0,X,2,-S
	ldd 6,S
	addd #4
	tfr D,X
	movw 2,X,2,-S
	movw 0,X,2,-S
	jsr subf4
	pulx
	stx 0,Y
	pulx
	stx 2,Y
L129:
	.dbline 458
; 		
;     if(var->value<var->min-var->inc/10){
	ldy 2,S
	movw 2,Y,2,-S
	movw 0,Y,2,-S
	ldd 6,S
	addd #8
	tfr D,Y
	movw 2,Y,2,-S
	movw 0,Y,2,-S
	ldd 10,S
	addd #4
	tfr D,Y
	movw 2,Y,2,-S
	movw 0,Y,2,-S
	movw #0,2,-S
	movw #16672,2,-S
	jsr divf4
	jsr subf4
	jsr cmpf4
	bge L130
	.dbline 458
	.dbline 459
;         var->value=var->max;
	ldd 2,S
	addd #12
	tfr D,X
	ldy 2,S
	movw 2,X,2,-S
	movw 0,X,2,-S
	pulx
	stx 0,Y
	pulx
	stx 2,Y
	.dbline 460
;     }
L130:
	.dbline 461
;     return getstrval(var);
	ldd 2,S
	xcall $_getstrval
	.dbline -2
L127:
	.dbline 0 ; func end
	leas 4,S
	rtc
	.dbsym l var 2 pS[menu_var]
	.dbend
	.dbfunc e Select _Select fV
;              k -> 47,SP
$_Select::
	leas -49,S
	.dbline -1
	.dbline 466
; }
; 
; 
; void Select ( void )
; {
	.dbline 470
;      int k;
;      
;      //Save current menu pointers
;      MenuStackc[StackPointer+1].Index[0]=MenuStackc[StackPointer].Index[1];
	ldab _StackPointer
	clra
	tfr D,Y
	ldd #6
	emul
	std 42,S
	ldy #_MenuStackc+1
	sty 0,S
	addd 0,S
	tfr D,Y
	ldab 0,Y
	stab 46,S
	ldd 42,S
	ldx #_MenuStackc+6
	stx 0,S
	addd 0,S
	tfr D,Y
	ldab 46,S
	stab 0,Y
	.dbline 471
;      MenuStackc[StackPointer+1].Index[1]=MenuStackc[StackPointer].Index[2];
	ldab _StackPointer
	clra
	tfr D,Y
	ldd #6
	emul
	std 40,S
	ldy #_MenuStackc+2
	sty 0,S
	addd 0,S
	tfr D,Y
	ldab 0,Y
	stab 45,S
	ldd 40,S
	ldx #_MenuStackc+6+1
	stx 0,S
	addd 0,S
	tfr D,Y
	ldab 45,S
	stab 0,Y
	.dbline 472
;      MenuStackc[StackPointer+1].Index[2]=MenuStackc[StackPointer].Index[3];
	ldab _StackPointer
	clra
	tfr D,Y
	ldd #6
	emul
	std 38,S
	ldy #_MenuStackc+3
	sty 0,S
	addd 0,S
	tfr D,Y
	ldab 0,Y
	stab 44,S
	ldd 38,S
	ldx #_MenuStackc+6+2
	stx 0,S
	addd 0,S
	tfr D,Y
	ldab 44,S
	stab 0,Y
	.dbline 473
;      MenuStackc[StackPointer+1].Index[3] = MenuStackc[StackPointer].CursorPos + MenuStackc[StackPointer].FirstLine;
	ldab _StackPointer
	clra
	tfr D,Y
	ldd #6
	emul
	std 36,S
	ldy #_MenuStackc+5
	sty 0,S
	addd 0,S
	std 34,S
	ldd 36,S
	ldx #_MenuStackc+4
	stx 0,S
	addd 0,S
	tfr D,Y
	ldab 0,Y
	tfr B,Y
	ldx 34,S
	tfr Y,B
	addb 0,X
	tfr B,Y
	sty 32,S
	ldd 36,S
	ldx #_MenuStackc+6+3
	stx 0,S
	addd 0,S
	tfr D,Y
	ldd 32,S
	stab 0,Y
	.dbline 476
;      
;      //look for selected menu 
;      for ( k=0;k<MenuSize;k++ )
	leax 47,S
	movw #0,0,x
L145:
	.dbline 477
;      {
	.dbline 478
;         if ( Menuc[k].Index[0] == MenuStackc[StackPointer+1].Index[0] && Menuc[k].Index[1] == MenuStackc[StackPointer+1].Index[1] && 
	ldd #311
	ldy 47,S
	emul
	tfr D,Y
	ldx #6
	sty 30,S
	ldab _StackPointer
	clra
	tfr D,Y
	tfr X,D
	emul
	std 28,S
	ldy #_MenuStackc+6
	sty 0,S
	addd 0,S
	std 26,S
	ldd 30,S
	ldx #_Menuc
	stx 0,S
	addd 0,S
	tfr D,Y
	ldab 0,Y
	tfr B,Y
	ldx 26,S
	tfr Y,B
	cmpb 0,X
	lbne L149
	ldd 28,S
	ldy #_MenuStackc+6+1
	sty 0,S
	addd 0,S
	std 24,S
	ldd 30,S
	ldx #_Menuc+1
	stx 0,S
	addd 0,S
	tfr D,Y
	ldab 0,Y
	tfr B,Y
	ldx 24,S
	tfr Y,B
	cmpb 0,X
	lbne L149
	ldd 28,S
	ldy #_MenuStackc+6+2
	sty 0,S
	addd 0,S
	std 22,S
	ldd 30,S
	ldx #_Menuc+2
	stx 0,S
	addd 0,S
	tfr D,Y
	ldab 0,Y
	tfr B,Y
	ldx 22,S
	tfr Y,B
	cmpb 0,X
	lbne L149
	ldd 28,S
	ldy #_MenuStackc+6+3
	sty 0,S
	addd 0,S
	std 20,S
	ldd 30,S
	ldx #_Menuc+3
	stx 0,S
	addd 0,S
	tfr D,Y
	ldab 0,Y
	tfr B,Y
	ldx 20,S
	tfr Y,B
	cmpb 0,X
	bne L149
	.dbline 480
;              Menuc[k].Index[2] == MenuStackc[StackPointer+1].Index[2] && Menuc[k].Index[3] == MenuStackc[StackPointer+1].Index[3] )
;         {
	.dbline 482
;              //If found increment stackpointer and initialize cursor
;              StackPointer++;
	inc _StackPointer
	.dbline 484
;              //Cursor to menu entry 1
;              MenuStackc[StackPointer].CursorPos = 1;
	ldab _StackPointer
	clra
	tfr D,Y
	ldd #6
	emul
	tfr D,Y
	ldx #_MenuStackc+4
	tfr Y,D
	stx 0,S
	addd 0,S
	tfr D,Y
	ldd #1
	stab 0,Y
	.dbline 485
;              MenuStackc[StackPointer].FirstLine = 0;
	ldab _StackPointer
	clra
	tfr D,Y
	ldd #6
	emul
	tfr D,Y
	ldx #_MenuStackc+5
	tfr Y,D
	stx 0,S
	addd 0,S
	tfr D,Y
	ldd #0
	stab 0,Y
	.dbline 486
;              LoadMenu ( MenuStackc[StackPointer].Index );
	ldab _StackPointer
	clra
	tfr D,Y
	ldd #6
	emul
	tfr D,Y
	ldx #_MenuStackc
	tfr Y,D
	stx 0,S
	addd 0,S
	xcall $_LoadMenu
	.dbline 487
;              InsertCursor ();
	xcall $_InsertCursor
	.dbline 488
;              DisplayTitler ();
	xcall $_DisplayTitler
	.dbline 489
;              break;
	bra L147
L149:
	.dbline 491
;         }
;      } 
L146:
	.dbline 476
	ldy 47,S
	iny
	sty 47,S
	.dbline 476
	cpy #17
	lblt L145
L147:
	.dbline 493
; 
;      if ( k >= MenuSize )
	ldy 47,S
	cpy #17
	lblt L163
	.dbline 494
;      {
	.dbline 496
;          //Find out which menu we are on
;          for ( k=0;k<MenuSize;k++ )
	leax 47,S
	movw #0,0,x
L165:
	.dbline 497
;          {
	.dbline 498
;             if ( Menuc[k].Index[0] == MenuStackc[StackPointer].Index[0] && Menuc[k].Index[1] == MenuStackc[StackPointer].Index[1] && 
	ldd #311
	ldy 47,S
	emul
	tfr D,Y
	ldx #6
	sty 18,S
	ldab _StackPointer
	clra
	tfr D,Y
	tfr X,D
	emul
	std 16,S
	ldy #_MenuStackc
	sty 0,S
	addd 0,S
	std 14,S
	ldd 18,S
	ldx #_Menuc
	stx 0,S
	addd 0,S
	tfr D,Y
	ldab 0,Y
	tfr B,Y
	ldx 14,S
	tfr Y,B
	cmpb 0,X
	lbne L169
	ldd 16,S
	ldy #_MenuStackc+1
	sty 0,S
	addd 0,S
	std 12,S
	ldd 18,S
	ldx #_Menuc+1
	stx 0,S
	addd 0,S
	tfr D,Y
	ldab 0,Y
	tfr B,Y
	ldx 12,S
	tfr Y,B
	cmpb 0,X
	lbne L169
	ldd 16,S
	ldy #_MenuStackc+2
	sty 0,S
	addd 0,S
	std 10,S
	ldd 18,S
	ldx #_Menuc+2
	stx 0,S
	addd 0,S
	tfr D,Y
	ldab 0,Y
	tfr B,Y
	ldx 10,S
	tfr Y,B
	cmpb 0,X
	lbne L169
	ldd 16,S
	ldy #_MenuStackc+3
	sty 0,S
	addd 0,S
	std 8,S
	ldd 18,S
	ldx #_Menuc+3
	stx 0,S
	addd 0,S
	tfr D,Y
	ldab 0,Y
	tfr B,Y
	ldx 8,S
	tfr Y,B
	cmpb 0,X
	lbne L169
	.dbline 500
;                  Menuc[k].Index[2] == MenuStackc[StackPointer].Index[2] && Menuc[k].Index[3] == MenuStackc[StackPointer].Index[3] )
;             {
	.dbline 502
;                  //Execute function for that entry 
;                  Menuc[k].FunctPtr[(MenuStackc[StackPointer].CursorPos + MenuStackc[StackPointer].FirstLine)-1]();
	ldab _StackPointer
	clra
	tfr D,Y
	ldd #6
	emul
	std 6,S
	ldy #_MenuStackc+5
	sty 0,S
	addd 0,S
	tfr D,Y
	ldab 0,Y
	clra
	std 4,S
	ldd 6,S
	ldx #_MenuStackc+4
	stx 0,S
	addd 0,S
	tfr D,Y
	ldab 0,Y
	clra
	tfr D,Y
	ldx 4,S
	tfr Y,D
	stx 0,S
	addd 0,S
	subd #1
	lsld
	std 2,S
	ldy 47,S
	ldd #311
	emul
	tfr D,Y
	ldx #_Menuc+289
	tfr Y,D
	stx 0,S
	addd 0,S
	tfr D,Y
	ldd 2,S
	sty 0,S
	addd 0,S
	tfr D,Y
	ldy 0,Y
	jsr 0,Y
	.dbline 505
;                  //LoadMenu ( MenuStackc[StackPointer].Index );
;                  //DisplayMenu ();
;                  break;
	bra L167
L169:
	.dbline 507
;             }
;         }
L166:
	.dbline 496
	ldy 47,S
	iny
	sty 47,S
	.dbline 496
	cpy #17
	lblt L165
L167:
	.dbline 508
;    }
L163:
	.dbline -2
L132:
	.dbline 0 ; func end
	leas 49,S
	rtc
	.dbsym l k 47 I
	.dbend
	.dbfunc e DeSelect _DeSelect fV
;              i -> 2,SP
;              j -> 4,SP
$_DeSelect::
	leas -6,S
	.dbline -1
	.dbline 512
; }
; 
; void DeSelect ( void )
; {
	.dbline 514
;      int i,j;
;      if (StackPointer )
	ldab _StackPointer
	cmpb #0
	beq L181
	.dbline 515
;      {
	.dbline 516
;         StackPointer--;
	dec _StackPointer
	.dbline 517
;         LoadMenu ( MenuStackc[StackPointer].Index );
	ldab _StackPointer
	clra
	tfr D,Y
	ldd #6
	emul
	tfr D,Y
	ldx #_MenuStackc
	tfr Y,D
	stx 0,S
	addd 0,S
	xcall $_LoadMenu
	.dbline 518
;         InsertCursor ();
	xcall $_InsertCursor
	.dbline 519
;         DisplayTitler ();
	xcall $_DisplayTitler
	.dbline 520
;      }
	lbra L182
L181:
	.dbline 522
;      else
;      {
	.dbline 523
;         MenuStackc[StackPointer].Index[0] = 0;
	ldab _StackPointer
	clra
	tfr D,Y
	ldd #6
	emul
	tfr D,Y
	ldx #_MenuStackc
	tfr Y,D
	stx 0,S
	addd 0,S
	tfr D,Y
	ldd #0
	stab 0,Y
	.dbline 524
;         MenuStackc[StackPointer].Index[1] = 0;
	ldab _StackPointer
	clra
	tfr D,Y
	ldd #6
	emul
	tfr D,Y
	ldx #_MenuStackc+1
	tfr Y,D
	stx 0,S
	addd 0,S
	tfr D,Y
	ldd #0
	stab 0,Y
	.dbline 525
;         MenuStackc[StackPointer].Index[2] = 0;
	ldab _StackPointer
	clra
	tfr D,Y
	ldd #6
	emul
	tfr D,Y
	ldx #_MenuStackc+2
	tfr Y,D
	stx 0,S
	addd 0,S
	tfr D,Y
	ldd #0
	stab 0,Y
	.dbline 526
;         MenuStackc[StackPointer].Index[3] = 0;
	ldab _StackPointer
	clra
	tfr D,Y
	ldd #6
	emul
	tfr D,Y
	ldx #_MenuStackc+3
	tfr Y,D
	stx 0,S
	addd 0,S
	tfr D,Y
	ldd #0
	stab 0,Y
	.dbline 527
;         Gen_Flags &= ~Gen_Flags_Menu_Active;
	bclr _Gen_Flags,#64
	.dbline 529
; //		gProcImg[IN_digi_0] &= ~0x01;
; 		Send_Menu_Status (0x00);
	ldd #0
	xcall $_Send_Menu_Status
	.dbline 531
; 
;         ClearTitler ();
	xcall $_ClearTitler
	.dbline 532
; 		for (j=1;j<=NR_OF_TPDOS;j++)
	movw #1,4,S
L186:
	.dbline 533
; 		{
	.dbline 534
; 		    ARMCOP = 0x55;
	movb #85,0x3f
	.dbline 535
; 			ARMCOP = 0xAA;
	movb #170,0x3f
	.dbline 536
; 			i = MCO_ProcessStack();
	xcall $_MCO_ProcessStack
	clra
	std 2,S
	.dbline 537
; 		}
L187:
	.dbline 532
	ldy 4,S
	iny
	sty 4,S
	.dbline 532
	cpy #8
	ble L186
	.dbline 538
;     	StoreFlag = 1;//Save_Variables ();
	movb #1,_StoreFlag
	.dbline 539
;      }
L182:
	.dbline 540
; 	 Variable_flag = 0;
	clr _Variable_flag
	.dbline 541
; 	 String_Var_ptr = 0;
	clr _String_Var_ptr
	.dbline 542
; 	 Multi_Var_ptr = 0;
	clr _Multi_Var_ptr
	.dbline 543
; 	 UpdateArrayVar = 0;
	clr _UpdateArrayVar
	.dbline -2
L180:
	.dbline 0 ; func end
	leas 6,S
	rtc
	.dbsym l i 2 I
	.dbsym l j 4 I
	.dbend
	.dbfunc e LoadMenu _LoadMenu fV
;              l -> 46,SP
;      next_flag -> 48,SP
;       var_cntr -> 49,SP
;            var -> 51,SP
;              l -> 53,SP
;              k -> 55,SP
;              j -> 57,SP
;              i -> 59,SP
;          Index -> 61,SP
$_LoadMenu::
	pshd
	leas -61,S
	.dbline -1
	.dbline 547
; }
; 
; void LoadMenu ( char Index[] )
; {
	.dbline 551
;     int i,j,k,l;
; 
;     //find menu
; 	k = FindMenu();
	xcall $_FindMenu
	clra
	std 55,S
	.dbline 561
;     /*for ( k=0;k<MenuSize;k++ )
;     {
;         if ( Menuc[k].Index[0] == Index[0] && Menuc[k].Index[1] == Index[1] && 
;              Menuc[k].Index[2] == Index[2] && Menuc[k].Index[3] == Index[3] )
;              break;
;     }*/ 
; 	
; 	
;     //Get Menu Title
;     for ( j=0;j<=20;j++ )
	leax 57,S
	movw #0,0,x
L191:
	.dbline 562
; 	{
	.dbline 563
;         Menu[0][j] = Menuc[k].Entry[0][j];
	ldd #311
	ldy 55,S
	emul
	tfr D,Y
	ldx #_Menuc+4
	tfr Y,D
	stx 0,S
	addd 0,S
	tfr D,Y
	ldd 57,S
	sty 0,S
	addd 0,S
	tfr D,Y
	ldab 0,Y
	stab 52,S
	ldd 57,S
	ldx #_Menu
	stx 0,S
	addd 0,S
	tfr D,Y
	ldab 52,S
	stab 0,Y
	.dbline 564
; 	}
L192:
	.dbline 561
	ldy 57,S
	iny
	sty 57,S
	.dbline 561
	cpy #20
	ble L191
	.dbline 567
;        
;     //See if this entry is a valid menu entry, if not start cursor back at top
;     if ( MenuStackc[StackPointer].CursorPos > 0 && Menuc[k].Entry[MenuStackc[StackPointer].CursorPos + MenuStackc[StackPointer].FirstLine][1] == ' ' )
	ldab _StackPointer
	clra
	tfr D,Y
	ldd #6
	emul
	std 44,S
	ldy #_MenuStackc+4
	sty 0,S
	addd 0,S
	tfr D,Y
	ldab 0,Y
	cmpb #0
	lbls L196
	ldd 44,S
	ldy #_MenuStackc+5
	sty 0,S
	addd 0,S
	tfr D,Y
	ldab 0,Y
	clra
	std 42,S
	ldd 44,S
	ldx #_MenuStackc+4
	stx 0,S
	addd 0,S
	tfr D,Y
	ldab 0,Y
	clra
	tfr D,Y
	ldx 42,S
	tfr Y,D
	stx 0,S
	addd 0,S
	tfr D,Y
	ldd #21
	emul
	std 40,S
	ldy 55,S
	ldd #311
	emul
	tfr D,Y
	ldx #_Menuc+4
	tfr Y,D
	stx 0,S
	addd 0,S
	tfr D,Y
	ldd 40,S
	sty 0,S
	addd 0,S
	tfr D,Y
	iny
	ldab 0,Y
	cmpb #32
	bne L196
	.dbline 568
;     {
	.dbline 569
;          MenuStackc[StackPointer].CursorPos = 1;
	ldab _StackPointer
	clra
	tfr D,Y
	ldd #6
	emul
	tfr D,Y
	ldx #_MenuStackc+4
	tfr Y,D
	stx 0,S
	addd 0,S
	tfr D,Y
	ldd #1
	stab 0,Y
	.dbline 570
;          MenuStackc[StackPointer].FirstLine = 0;
	ldab _StackPointer
	clra
	tfr D,Y
	ldd #6
	emul
	tfr D,Y
	ldx #_MenuStackc+5
	tfr Y,D
	stx 0,S
	addd 0,S
	tfr D,Y
	ldd #0
	stab 0,Y
	.dbline 571
;     }
L196:
	.dbline 574
;         
;     //Allow a maximum of 12 entries, if past 12, start cursor back at top
;     if ( MenuStackc[StackPointer].CursorPos + MenuStackc[StackPointer].FirstLine >= 12 )
	ldab _StackPointer
	clra
	tfr D,Y
	ldd #6
	emul
	std 38,S
	ldy #_MenuStackc+5
	sty 0,S
	addd 0,S
	std 36,S
	ldd 38,S
	ldx #_MenuStackc+4
	stx 0,S
	addd 0,S
	tfr D,Y
	ldab 0,Y
	tfr B,Y
	ldx 36,S
	tfr Y,B
	addb 0,X
	cmpb #12
	blo L204
	.dbline 575
;     {
	.dbline 576
;          MenuStackc[StackPointer].CursorPos = 1;
	ldab _StackPointer
	clra
	tfr D,Y
	ldd #6
	emul
	tfr D,Y
	ldx #_MenuStackc+4
	tfr Y,D
	stx 0,S
	addd 0,S
	tfr D,Y
	ldd #1
	stab 0,Y
	.dbline 577
;          MenuStackc[StackPointer].FirstLine = 0;
	ldab _StackPointer
	clra
	tfr D,Y
	ldd #6
	emul
	tfr D,Y
	ldx #_MenuStackc+5
	tfr Y,D
	stx 0,S
	addd 0,S
	tfr D,Y
	ldd #0
	stab 0,Y
	.dbline 578
;     }
L204:
	.dbline 581
;         
;     //If cursor is too far down, check to see if there is another entry, if so, show it and set cursor to bottom entry.
;     if ( MenuStackc[StackPointer].CursorPos == 9 )
	ldab _StackPointer
	clra
	tfr D,Y
	ldd #6
	emul
	tfr D,Y
	ldx #_MenuStackc+4
	tfr Y,D
	stx 0,S
	addd 0,S
	tfr D,Y
	ldab 0,Y
	cmpb #9
	lbne L210
	.dbline 582
;     {
	.dbline 583
;          if ( Menuc[k].Entry[9+MenuStackc[StackPointer].FirstLine][1] != ' ' )
	ldab _StackPointer
	clra
	tfr D,Y
	ldd #6
	emul
	tfr D,Y
	ldx #_MenuStackc+5
	tfr Y,D
	stx 0,S
	addd 0,S
	tfr D,Y
	ldab 0,Y
	clra
	tfr D,Y
	ldd #21
	emul
	addd #189
	std 34,S
	ldy 55,S
	ldd #311
	emul
	tfr D,Y
	ldx #_Menuc+4
	tfr Y,D
	stx 0,S
	addd 0,S
	tfr D,Y
	ldd 34,S
	sty 0,S
	addd 0,S
	tfr D,Y
	iny
	ldab 0,Y
	cmpb #32
	beq L213
	.dbline 584
;          {
	.dbline 585
;             MenuStackc[StackPointer].FirstLine++;
	ldab _StackPointer
	clra
	tfr D,Y
	ldd #6
	emul
	tfr D,Y
	ldx #_MenuStackc+5
	tfr Y,D
	stx 0,S
	addd 0,S
	tfr D,Y
	sty 32,S
	ldab [32,S]
	tfr B,Y
	iny
	ldx 32,S
	tfr Y,B
	stab 0,X
	.dbline 586
;             MenuStackc[StackPointer].CursorPos = 8;
	ldab _StackPointer
	clra
	tfr D,Y
	ldd #6
	emul
	tfr D,Y
	ldx #_MenuStackc+4
	tfr Y,D
	stx 0,S
	addd 0,S
	tfr D,Y
	ldd #8
	stab 0,Y
	.dbline 587
;          }
	bra L214
L213:
	.dbline 589
;          else
;          {
	.dbline 590
;              MenuStackc[StackPointer].CursorPos = 1;
	ldab _StackPointer
	clra
	tfr D,Y
	ldd #6
	emul
	tfr D,Y
	ldx #_MenuStackc+4
	tfr Y,D
	stx 0,S
	addd 0,S
	tfr D,Y
	ldd #1
	stab 0,Y
	.dbline 591
;              MenuStackc[StackPointer].FirstLine = 0;
	ldab _StackPointer
	clra
	tfr D,Y
	ldd #6
	emul
	tfr D,Y
	ldx #_MenuStackc+5
	tfr Y,D
	stx 0,S
	addd 0,S
	tfr D,Y
	ldd #0
	stab 0,Y
	.dbline 592
;          }
L214:
	.dbline 593
;     }
L210:
	.dbline 596
; 
;     //If cursor is too far up, and the first entry is not the first line then move firstline up and set cursor to top entry
;     if ( MenuStackc[StackPointer].CursorPos == 0 )
	ldab _StackPointer
	clra
	tfr D,Y
	ldd #6
	emul
	tfr D,Y
	ldx #_MenuStackc+4
	tfr Y,D
	stx 0,S
	addd 0,S
	tfr D,Y
	ldab 0,Y
	cmpb #0
	lbne L221
	.dbline 597
;     {
	.dbline 598
;          if ( MenuStackc[StackPointer].FirstLine )
	ldab _StackPointer
	clra
	tfr D,Y
	ldd #6
	emul
	tfr D,Y
	ldx #_MenuStackc+5
	tfr Y,D
	stx 0,S
	addd 0,S
	tfr D,Y
	ldab 0,Y
	cmpb #0
	beq L224
	.dbline 599
;          {
	.dbline 600
;             MenuStackc[StackPointer].FirstLine--;
	ldab _StackPointer
	clra
	tfr D,Y
	ldd #6
	emul
	tfr D,Y
	ldx #_MenuStackc+5
	tfr Y,D
	stx 0,S
	addd 0,S
	tfr D,Y
	sty 30,S
	ldab [30,S]
	tfr B,Y
	dey
	ldx 30,S
	tfr Y,B
	stab 0,X
	.dbline 601
;             MenuStackc[StackPointer].CursorPos = 1;
	ldab _StackPointer
	clra
	tfr D,Y
	ldd #6
	emul
	tfr D,Y
	ldx #_MenuStackc+4
	tfr Y,D
	stx 0,S
	addd 0,S
	tfr D,Y
	ldd #1
	stab 0,Y
	.dbline 602
;          }
	lbra L225
L224:
	.dbline 604
;          else
;          {
	.dbline 606
;              //Find last entry
;              for ( i=11;i>0;i-- )
	leax 59,S
	movw #11,0,x
L229:
	.dbline 607
;              {
	.dbline 608
;                  if ( Menuc[k].Entry[i][1] != ' ' && Menuc[k].Entry[i][0] == ' ' )
	ldd #21
	ldy 59,S
	emul
	tfr D,Y
	ldx #311
	sty 28,S
	ldy 55,S
	tfr X,D
	emul
	std 26,S
	ldy #_Menuc+4
	sty 0,S
	addd 0,S
	tfr D,Y
	ldd 28,S
	sty 0,S
	addd 0,S
	tfr D,Y
	iny
	ldab 0,Y
	cmpb #32
	beq L233
	ldd 26,S
	ldy #_Menuc+4
	sty 0,S
	addd 0,S
	tfr D,Y
	ldd 28,S
	sty 0,S
	addd 0,S
	tfr D,Y
	ldab 0,Y
	cmpb #32
	bne L233
	.dbline 609
;                       break;
	bra L231
L233:
	.dbline 610
;              }
L230:
	.dbline 606
	ldy 59,S
	dey
	sty 59,S
	.dbline 606
	cpy #0
	bgt L229
L231:
	.dbline 612
;              //If more than 8 entries, cursor will be at the bottom (8) and first line will be adjusted
;              if ( i > 8 )
	ldy 59,S
	cpy #8
	ble L237
	.dbline 613
;              {
	.dbline 614
;                  MenuStackc[StackPointer].CursorPos = 8;
	ldab _StackPointer
	clra
	tfr D,Y
	ldd #6
	emul
	tfr D,Y
	ldx #_MenuStackc+4
	tfr Y,D
	stx 0,S
	addd 0,S
	tfr D,Y
	ldd #8
	stab 0,Y
	.dbline 615
;                  MenuStackc[StackPointer].FirstLine = i - 8;
	ldab _StackPointer
	clra
	tfr D,Y
	ldd #6
	emul
	tfr D,Y
	ldx #_MenuStackc+5
	tfr Y,D
	stx 0,S
	addd 0,S
	tfr D,Y
	ldd 59,S
	subd #8
	clra
	stab 0,Y
	.dbline 616
;              }
	bra L238
L237:
	.dbline 619
;              //Otherwise the cursor will be on that entry with the firstline at 0
;              else
;              {
	.dbline 620
;                  MenuStackc[StackPointer].CursorPos = i;
	ldab _StackPointer
	clra
	tfr D,Y
	ldd #6
	emul
	tfr D,Y
	ldx #_MenuStackc+4
	tfr Y,D
	stx 0,S
	addd 0,S
	tfr D,Y
	ldd 59,S
	clra
	stab 0,Y
	.dbline 621
;                  MenuStackc[StackPointer].FirstLine = 0;
	ldab _StackPointer
	clra
	tfr D,Y
	ldd #6
	emul
	tfr D,Y
	ldx #_MenuStackc+5
	tfr Y,D
	stx 0,S
	addd 0,S
	tfr D,Y
	ldd #0
	stab 0,Y
	.dbline 622
;              }
L238:
	.dbline 623
;          }
L225:
	.dbline 624
;     }
L221:
	.dbline 627
; 
;     //Load appropriate menu entries into Menu[i][j]
;     for ( i=1;i<=8;i++ )
	leax 59,S
	movw #1,0,x
L243:
	.dbline 628
; 	{
	.dbline 629
; 	    for ( j=0;j<=20;j++ )
	leax 57,S
	movw #0,0,x
L247:
	.dbline 630
; 		{
	.dbline 631
;             Menu[i][j] = Menuc[k].Entry[i+MenuStackc[StackPointer].FirstLine][j];
	ldab _StackPointer
	clra
	tfr D,Y
	ldd #6
	emul
	tfr D,Y
	ldx #_MenuStackc+5
	tfr Y,D
	stx 0,S
	addd 0,S
	tfr D,Y
	ldab 0,Y
	clra
	tfr D,Y
	ldd 59,S
	sty 0,S
	addd 0,S
	tfr D,Y
	ldd #21
	emul
	std 24,S
	ldy 55,S
	ldd #311
	emul
	tfr D,Y
	ldx #_Menuc+4
	tfr Y,D
	stx 0,S
	addd 0,S
	tfr D,Y
	ldd 24,S
	sty 0,S
	addd 0,S
	tfr D,Y
	ldd 57,S
	sty 0,S
	addd 0,S
	tfr D,Y
	ldab 0,Y
	stab 52,S
	ldy 59,S
	ldd #21
	emul
	tfr D,Y
	ldx #_Menu
	tfr Y,D
	stx 0,S
	addd 0,S
	tfr D,Y
	ldd 57,S
	sty 0,S
	addd 0,S
	tfr D,Y
	ldab 52,S
	stab 0,Y
	.dbline 632
; 		}
L248:
	.dbline 629
	ldy 57,S
	iny
	sty 57,S
	.dbline 629
	cpy #20
	lble L247
	.dbline 633
; 	}
L244:
	.dbline 627
	ldy 59,S
	iny
	sty 59,S
	.dbline 627
	cpy #8
	lble L243
	.dbline 636
; 	
; 	//Load any variables
;     for ( i=1;i<=8;i++ )
	leax 59,S
	movw #1,0,x
L253:
	.dbline 637
; 	{
	.dbline 638
;         if ( Menuc[k].Pos[i+MenuStackc[StackPointer].FirstLine-1] )
	ldab _StackPointer
	clra
	tfr D,Y
	ldd #6
	emul
	tfr D,Y
	ldx #_MenuStackc+5
	tfr Y,D
	stx 0,S
	addd 0,S
	tfr D,Y
	ldab 0,Y
	clra
	tfr D,Y
	ldd 59,S
	sty 0,S
	addd 0,S
	tfr D,Y
	dey
	sty 22,S
	ldy 55,S
	ldd #311
	emul
	tfr D,Y
	ldx #_Menuc+256
	tfr Y,D
	stx 0,S
	addd 0,S
	tfr D,Y
	ldd 22,S
	sty 0,S
	addd 0,S
	tfr D,Y
	ldab 0,Y
	cmpb #0
	lbeq L257
	.dbline 639
;         {
	.dbline 640
; 			 struct menu_var *var = Menuc[k].VarPntr[i+MenuStackc[StackPointer].FirstLine-1];
	ldab _StackPointer
	clra
	tfr D,Y
	ldd #6
	emul
	tfr D,Y
	ldx #_MenuStackc+5
	tfr Y,D
	stx 0,S
	addd 0,S
	tfr D,Y
	ldab 0,Y
	clra
	tfr D,Y
	ldd 59,S
	sty 0,S
	addd 0,S
	subd #1
	lsld
	std 20,S
	ldy 55,S
	ldd #311
	emul
	tfr D,Y
	ldx #_Menuc+267
	tfr Y,D
	stx 0,S
	addd 0,S
	tfr D,Y
	ldd 20,S
	sty 0,S
	addd 0,S
	tfr D,Y
	leax 51,S
	movw 0,Y,0,x
	.dbline 641
; 			 char next_flag = 1;
	leax 48,S
	movb #1,0,x
	.dbline 642
; 			 int var_cntr = 1;
	leax 49,S
	movw #1,0,x
	.dbline 644
; 			 
;              j=0;    
	leax 57,S
	movw #0,0,x
L263:
	.dbline 646
; 			 do 
; 			 {	  
	.dbline 650
;                  int l;
; 					 
; 				 
; 				 for (l=0;j<=20;j++,l++ )//up to 11 char variable "STR_VALUE_LEN"
	leax 46,S
	movw #0,0,x
	lbra L269
L266:
	.dbline 651
;                  {
	.dbline 653
;     				 
;                     if ( !Multi_Var_ptr && Variable_flag && i == MenuStackc[StackPointer].CursorPos && l==0 ) 
	ldab _Multi_Var_ptr
	cmpb #0
	lbne L270
	ldab _Variable_flag
	cmpb #0
	lbeq L270
	ldab _StackPointer
	clra
	tfr D,Y
	ldd #6
	emul
	tfr D,Y
	ldx #_MenuStackc+4
	tfr Y,D
	stx 0,S
	addd 0,S
	tfr D,Y
	ldab 0,Y
	clra
	cpd 59,S
	lbne L270
	ldy 46,S
	cpy #0
	lbne L270
	.dbline 654
;                         Menu[i][Menuc[k].Pos[i+MenuStackc[StackPointer].FirstLine-1]-1] = '>';
	ldab _StackPointer
	clra
	tfr D,Y
	ldd #6
	emul
	tfr D,Y
	ldx #_MenuStackc+5
	tfr Y,D
	stx 0,S
	addd 0,S
	tfr D,Y
	ldab 0,Y
	clra
	tfr D,Y
	ldd 59,S
	sty 0,S
	addd 0,S
	tfr D,Y
	dey
	sty 18,S
	ldy 55,S
	ldd #311
	emul
	tfr D,Y
	ldx #_Menuc+256
	tfr Y,D
	stx 0,S
	addd 0,S
	tfr D,Y
	ldd 18,S
	sty 0,S
	addd 0,S
	tfr D,Y
	ldab 0,Y
	clra
	tfr D,Y
	dey
	sty 16,S
	ldy 59,S
	ldd #21
	emul
	tfr D,Y
	ldx #_Menu
	tfr Y,D
	stx 0,S
	addd 0,S
	tfr D,Y
	ldd 16,S
	sty 0,S
	addd 0,S
	tfr D,Y
	ldd #62
	stab 0,Y
L270:
	.dbline 656
; 
;                     if ( Multi_Var_ptr == var_cntr && i == MenuStackc[StackPointer].CursorPos && l==0 )
	ldab _Multi_Var_ptr
	clra
	cpd 49,S
	lbne L275
	ldab _StackPointer
	clra
	tfr D,Y
	ldd #6
	emul
	tfr D,Y
	ldx #_MenuStackc+4
	tfr Y,D
	stx 0,S
	addd 0,S
	tfr D,Y
	ldab 0,Y
	clra
	cpd 59,S
	lbne L275
	ldy 46,S
	cpy #0
	lbne L275
	.dbline 657
; 					{
	.dbline 658
; 						 Menu[i][Menuc[k].Pos[i+MenuStackc[StackPointer].FirstLine-1]+j-1] = '>';
	ldab _StackPointer
	clra
	tfr D,Y
	ldd #6
	emul
	tfr D,Y
	ldx #_MenuStackc+5
	tfr Y,D
	stx 0,S
	addd 0,S
	tfr D,Y
	ldab 0,Y
	clra
	tfr D,Y
	ldd 59,S
	sty 0,S
	addd 0,S
	tfr D,Y
	dey
	sty 14,S
	ldy 55,S
	ldd #311
	emul
	tfr D,Y
	ldx #_Menuc+256
	tfr Y,D
	stx 0,S
	addd 0,S
	tfr D,Y
	ldd 14,S
	sty 0,S
	addd 0,S
	tfr D,Y
	ldab 0,Y
	clra
	addd 57,S
	tfr D,Y
	dey
	sty 12,S
	ldy 59,S
	ldd #21
	emul
	tfr D,Y
	ldx #_Menu
	tfr Y,D
	stx 0,S
	addd 0,S
	tfr D,Y
	ldd 12,S
	sty 0,S
	addd 0,S
	tfr D,Y
	ldd #62
	stab 0,Y
	.dbline 659
; 					}
L275:
	.dbline 661
;                     
;     				 if ( var->len_str >= 0 )
	ldd 51,S
	addd #17
	tfr D,Y
	ldab 0,Y
	cmpb #0
	blt L280
	.dbline 662
;     				 {    
	.dbline 663
;     					 getstrval ( var );
	ldd 51,S
	xcall $_getstrval
	.dbline 664
;     				 }
L280:
	.dbline 665
;     				 if ( *(var->str_value+l) ) //if current char of string isn't a NULL
	ldd 51,S
	addd #18
	tfr D,Y
	ldd 46,S
	sty 0,S
	addd 0,S
	tfr D,Y
	ldab 0,Y
	cmpb #0
	lbeq L268
	.dbline 666
;                      {
	.dbline 667
;                           Menu[i][Menuc[k].Pos[i+MenuStackc[StackPointer].FirstLine-1]+j] = *(var->str_value+l);
	ldab _StackPointer
	clra
	tfr D,Y
	ldd #6
	emul
	tfr D,Y
	ldx #_MenuStackc+5
	tfr Y,D
	stx 0,S
	addd 0,S
	tfr D,Y
	ldab 0,Y
	clra
	tfr D,Y
	ldd 59,S
	sty 0,S
	addd 0,S
	tfr D,Y
	dey
	sty 10,S
	ldy 55,S
	ldd #311
	emul
	tfr D,Y
	ldx #_Menuc+256
	tfr Y,D
	stx 0,S
	addd 0,S
	tfr D,Y
	ldd 10,S
	sty 0,S
	addd 0,S
	tfr D,Y
	ldab 0,Y
	clra
	addd 57,S
	std 8,S
	ldy 59,S
	ldd #21
	emul
	tfr D,Y
	ldx #_Menu
	tfr Y,D
	stx 0,S
	addd 0,S
	tfr D,Y
	ldd 8,S
	sty 0,S
	addd 0,S
	tfr D,Y
	sty 6,S
	ldd 51,S
	addd #18
	tfr D,X
	ldd 46,S
	stx 0,S
	addd 0,S
	tfr D,Y
	ldab 0,Y
	tfr B,Y
	ldx 6,S
	tfr Y,B
	stab 0,X
	.dbline 668
;                      }
	.dbline 670
;                      else
;                      {
	.dbline 671
;                          break;
L283:
	.dbline 673
;                      }
;                  }
L267:
	.dbline 650
	ldy 57,S
	iny
	sty 57,S
	ldy 46,S
	iny
	sty 46,S
L269:
	.dbline 650
	ldy 57,S
	cpy #20
	lble L266
L268:
	.dbline 674
; 				 if (var->next_var)
	ldd 51,S
	addd #32
	tfr D,Y
	ldy 0,Y
	cpy #0
	lbeq L286
	.dbline 675
; 				 {
	.dbline 676
; 					 var = var->next_var;
	ldy 51,S
	leay 32,Y
	leax 51,S
	movw 0,y,0,x
	.dbline 677
; 					 Menu[i][Menuc[k].Pos[i+MenuStackc[StackPointer].FirstLine-1]+j] = ' ';
	ldab _StackPointer
	clra
	tfr D,Y
	ldd #6
	emul
	tfr D,Y
	ldx #_MenuStackc+5
	tfr Y,D
	stx 0,S
	addd 0,S
	tfr D,Y
	ldab 0,Y
	clra
	tfr D,Y
	ldd 59,S
	sty 0,S
	addd 0,S
	tfr D,Y
	dey
	sty 4,S
	ldy 55,S
	ldd #311
	emul
	tfr D,Y
	ldx #_Menuc+256
	tfr Y,D
	stx 0,S
	addd 0,S
	tfr D,Y
	ldd 4,S
	sty 0,S
	addd 0,S
	tfr D,Y
	ldab 0,Y
	clra
	addd 57,S
	std 2,S
	ldy 59,S
	ldd #21
	emul
	tfr D,Y
	ldx #_Menu
	tfr Y,D
	stx 0,S
	addd 0,S
	tfr D,Y
	ldd 2,S
	sty 0,S
	addd 0,S
	tfr D,Y
	ldd #32
	stab 0,Y
	.dbline 678
; 					 j++;
	ldy 57,S
	iny
	sty 57,S
	.dbline 679
; 				  	 var_cntr++;
	ldy 49,S
	iny
	sty 49,S
	.dbline 680
; 				 }
	bra L287
L286:
	.dbline 682
; 				 else
; 				 {
	.dbline 683
; 				     next_flag = 0;
	clr 48,S
	.dbline 684
; 				 }
L287:
	.dbline 685
; 			 }while(next_flag);
L264:
	.dbline 685
	ldab 48,S
	cmpb #0
	lbne L263
	.dbline 686
;         }            
L257:
	.dbline 687
; 	}
L254:
	.dbline 636
	ldy 59,S
	iny
	sty 59,S
	.dbline 636
	cpy #8
	lble L253
	.dbline -2
L190:
	.dbline 0 ; func end
	leas 63,S
	rtc
	.dbsym l l 46 I
	.dbsym l next_flag 48 c
	.dbsym l var_cntr 49 I
	.dbsym l var 51 pS[menu_var]
	.dbsym l l 53 I
	.dbsym l k 55 I
	.dbsym l j 57 I
	.dbsym l i 59 I
	.dbsym l Index 61 pc
	.dbend
	.dbfunc e InsertCursor _InsertCursor fV
$_InsertCursor::
	leas -2,S
	.dbline -1
	.dbline 691
; }
; 
; void InsertCursor ( void )
; {
	.dbline 693
; 	//Display Cursor Pointer
;     Menu[MenuStackc[StackPointer].CursorPos][0] = '>';
	ldab _StackPointer
	clra
	tfr D,Y
	ldd #6
	emul
	tfr D,Y
	ldx #_MenuStackc+4
	tfr Y,D
	stx 0,S
	addd 0,S
	tfr D,Y
	ldab 0,Y
	clra
	tfr D,Y
	ldd #21
	emul
	tfr D,Y
	ldx #_Menu
	tfr Y,D
	stx 0,S
	addd 0,S
	tfr D,Y
	ldd #62
	stab 0,Y
	.dbline -2
L290:
	.dbline 0 ; func end
	leas 2,S
	rtc
	.dbend
	.dbfunc e DisplayTitler _DisplayTitler fV
;              l -> 3,SP
;              i -> 5,SP
;              j -> 7,SP
;              k -> 9,SP
$_DisplayTitler::
	leas -11,S
	.dbline -1
	.dbline 700
; }     
; 
; #define Disp_Wait_Time1  0.001
; #define Disp_Wait_Time2  0.005
; 
; void DisplayTitler ( void )
; {
	.dbline 703
; 	int i,j,k,l;
; 	
;     PositionDisplay ();
	xcall $_PositionDisplay
	.dbline 705
; 
; 	gTxMsg.ID = WIM_ID;
	movw #784,_gTxMsg
	.dbline 706
; 	gTxMsg.LEN = 8;
	movb #8,_gTxMsg+2
	.dbline 707
; 	gTxMsg.BUF[0] = 0;
	clr _gTxMsg+4
	.dbline 708
; 	gTxMsg.BUF[1] = 0x02;
	movb #2,_gTxMsg+4+1
	.dbline 709
; 	gTxMsg.BUF[2] = 'M';
	movb #77,_gTxMsg+4+2
	.dbline 710
; 	gTxMsg.BUF[3] = 'e';
	movb #101,_gTxMsg+4+3
	.dbline 711
; 	gTxMsg.BUF[4] = 'n';
	movb #110,_gTxMsg+4+4
	.dbline 712
; 	gTxMsg.BUF[5] = 'u';
	movb #117,_gTxMsg+4+5
	.dbline 713
; 	gTxMsg.BUF[6] = ':';
	movb #58,_gTxMsg+4+6
	.dbline 714
; 	gTxMsg.BUF[7] = 0;
	clr _gTxMsg+4+7
	.dbline 716
; 	
;    	if (!MCOHW_PushMessage(&gTxMsg))
	ldd #_gTxMsg
	xcall $_MCOHW_PushMessage
	clra
	cmpb #0
	bne L309
	.dbline 717
;    	{
	.dbline 719
;         // failed to transmit
;        	MCOUSER_FatalError(0x8801);
	ldd #34817
	xcall $_MCOUSER_FatalError
	.dbline 720
;     }
L309:
	.dbline 721
; 	Timer1 = RTI_One_Sec * Disp_Wait_Time1;
	movw #0,_Timer1
L311:
	.dbline 722
; 	while ( Timer1 );
L312:
	.dbline 722
	ldy _Timer1
	cpy #0
	bne L311
	.dbline 724
; 	
; 	for ( i=0;i<=8;i++ )        //9 lines
	movw #0,5,S
L314:
	.dbline 725
; 	{
	.dbline 726
; 	    gTxMsg.ID = WIM_ID;
	movw #784,_gTxMsg
	.dbline 727
; 		gTxMsg.LEN = 7;
	movb #7,_gTxMsg+2
	.dbline 728
; 		gTxMsg.BUF[0] = 0;
	clr _gTxMsg+4
	.dbline 729
; 		gTxMsg.BUF[6] = 0;
	clr _gTxMsg+4+6
	.dbline 730
; 	    for ( j=0;j<=15;j+=5 )
	movw #0,7,S
L322:
	.dbline 731
; 		{
	.dbline 732
;     	    ARMCOP = 0x55;
	movb #85,0x3f
	.dbline 733
;     		ARMCOP = 0xAA;
	movb #170,0x3f
	.dbline 734
; 		 	for ( k=0;k<=4;k++ )
	movw #0,9,S
L326:
	.dbline 735
; 			{
	.dbline 736
; 		     	gTxMsg.BUF[k+1] = Menu[i][j+k];
	ldd #21
	ldy 5,S
	emul
	tfr D,Y
	ldx #_Menu
	tfr Y,D
	stx 0,S
	addd 0,S
	tfr D,Y
	ldd 7,S
	addd 9,S
	sty 0,S
	addd 0,S
	tfr D,Y
	ldab 0,Y
	stab 2,S
	ldd 9,S
	ldx #_gTxMsg+4+1
	stx 0,S
	addd 0,S
	tfr D,Y
	ldab 2,S
	stab 0,Y
	.dbline 737
; 			}
L327:
	.dbline 734
	ldy 9,S
	iny
	sty 9,S
	.dbline 734
	cpy #4
	ble L326
	.dbline 738
;    	    	if (!MCOHW_PushMessage(&gTxMsg))
	ldd #_gTxMsg
	xcall $_MCOHW_PushMessage
	clra
	cmpb #0
	bne L332
	.dbline 739
;    			{
	.dbline 741
;                 // failed to transmit
;        			MCOUSER_FatalError(0x8801);
	ldd #34817
	xcall $_MCOUSER_FatalError
	.dbline 742
;     		}
L332:
	.dbline 743
; 			Timer1 = RTI_One_Sec * Disp_Wait_Time2;
	movw #4,_Timer1
L334:
	.dbline 744
; 			while ( Timer1 );
L335:
	.dbline 744
	ldy _Timer1
	cpy #0
	bne L334
	.dbline 745
; 			l = MCO_ProcessStack();
	xcall $_MCO_ProcessStack
	clra
	std 3,S
	.dbline 746
; 		}
L323:
	.dbline 730
	ldd 7,S
	addd #5
	std 7,S
	.dbline 730
	cpd #15
	lble L322
	.dbline 747
; 		MCO_ProcessStack();
	xcall $_MCO_ProcessStack
	.dbline 748
; 	}
L315:
	.dbline 724
	ldy 5,S
	iny
	sty 5,S
	.dbline 724
	cpy #8
	lble L314
	.dbline 750
; 
; 	gTxMsg.ID = WIM_ID;
	movw #784,_gTxMsg
	.dbline 751
; 	gTxMsg.LEN = 3;
	movb #3,_gTxMsg+2
	.dbline 752
; 	gTxMsg.BUF[0] = 0;
	clr _gTxMsg+4
	.dbline 753
; 	gTxMsg.BUF[1] = 0x03;
	movb #3,_gTxMsg+4+1
	.dbline 754
; 	gTxMsg.BUF[2] = 0;
	clr _gTxMsg+4+2
	.dbline 756
; 
;    	if (!MCOHW_PushMessage(&gTxMsg))
	ldd #_gTxMsg
	xcall $_MCOHW_PushMessage
	clra
	cmpb #0
	bne L343
	.dbline 757
;    	{
	.dbline 759
;         // failed to transmit
;        	MCOUSER_FatalError(0x8801);
	ldd #34817
	xcall $_MCOUSER_FatalError
	.dbline 760
;     }
L343:
	.dbline 761
; 	Timer1 = RTI_One_Sec * Disp_Wait_Time1;
	movw #0,_Timer1
L345:
	.dbline 762
; 	while ( Timer1 );
L346:
	.dbline 762
	ldy _Timer1
	cpy #0
	bne L345
	.dbline -2
L292:
	.dbline 0 ; func end
	leas 11,S
	rtc
	.dbsym l l 3 I
	.dbsym l i 5 I
	.dbsym l j 7 I
	.dbsym l k 9 I
	.dbend
	.area bss
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines1.c
L349:
	.blkb 2
L350:
	.blkb 2
	.area extcode(paged)
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines1.c
	.dbfunc e Display _Display fV
	.dbsym s j L350 I
	.dbsym s i L349 I
;           buff -> 4,SP
$_Display::
	pshd
	leas -4,S
	.dbline -1
	.dbline 767
; 
; }
; 
; void Display(char buff[27])
; {
	.dbline 770
;     static int i,j;
;     
;     gTxMsg.ID = WIM_ID;
	movw #784,_gTxMsg
	.dbline 771
;     gTxMsg.LEN = 8;
	movb #8,_gTxMsg+2
	.dbline 772
;     gTxMsg.BUF[0] = NODE_ID; //not sent
	movb #72,_gTxMsg+4
	.dbline 773
;     gTxMsg.BUF[1] = 0x02; //starting w/ Rev 2.0, <STX> indicates beginning of command
	movb #2,_gTxMsg+4+1
	.dbline 775
;     
;     for (i=0; i<=5; i++)
	movw #0,L349
L355:
	.dbline 776
;     {
	.dbline 777
;         gTxMsg.BUF[i+2] = buff[i];
	ldd L349
	ldy #_gTxMsg+4+2
	sty 0,S
	addd 0,S
	tfr D,Y
	ldd L349
	addd 4,S
	tfr D,X
	ldab 0,X
	stab 0,Y
	.dbline 778
;     }
L356:
	.dbline 775
	ldy L349
	iny
	sty L349
	.dbline 775
	ldy L349
	cpy #5
	ble L355
	.dbline 780
;     
;     if (!MCOHW_PushMessage(&gTxMsg))
	ldd #_gTxMsg
	xcall $_MCOHW_PushMessage
	clra
	cmpb #0
	bne L361
	.dbline 781
;         MCOUSER_FatalError(0x8801);
	ldd #34817
	xcall $_MCOUSER_FatalError
L361:
	.dbline 783
;     
;     Timer1 = RTI_One_Sec * Disp_Wait_Time1;
	movw #0,_Timer1
L363:
	.dbline 784
;     while ( Timer1 );
L364:
	.dbline 784
	ldy _Timer1
	cpy #0
	bne L363
	.dbline 786
;     
;     gTxMsg.BUF[0] = NODE_ID; 
	movb #72,_gTxMsg+4
	.dbline 788
;     
;     for (i=6; i<strlen(buff); i+=7)
	movw #6,L349
	bra L370
L367:
	.dbline 789
;     {
	.dbline 790
;         if (i >= 27)
	ldy L349
	cpy #27
	blt L371
	.dbline 791
;             break;
	lbra L369
L371:
	.dbline 793
;         
;         for (j=0; j<=6; j++)
	movw #0,L350
L373:
	.dbline 794
;         {
	.dbline 795
;             gTxMsg.BUF[j+1] = buff[i+j]; //6-12; 13-19; 14-20
	ldd L350
	ldy #_gTxMsg+4+1
	sty 0,S
	addd 0,S
	tfr D,Y
	ldd L349
	addd L350
	addd 4,S
	tfr D,X
	ldab 0,X
	stab 0,Y
	.dbline 796
;         }
L374:
	.dbline 793
	ldy L350
	iny
	sty L350
	.dbline 793
	ldy L350
	cpy #6
	ble L373
	.dbline 798
;         
;         if (!MCOHW_PushMessage(&gTxMsg))
	ldd #_gTxMsg
	xcall $_MCOHW_PushMessage
	clra
	cmpb #0
	bne L379
	.dbline 799
;             MCOUSER_FatalError(0x8801);
	ldd #34817
	xcall $_MCOUSER_FatalError
L379:
	.dbline 801
;         
;         Timer1 = RTI_One_Sec * Disp_Wait_Time2;
	movw #4,_Timer1
L381:
	.dbline 802
;         while ( Timer1 );
L382:
	.dbline 802
	ldy _Timer1
	cpy #0
	bne L381
	.dbline 804
;         
;         MCO_ProcessStack();
	xcall $_MCO_ProcessStack
	.dbline 805
;     }
L368:
	.dbline 788
	ldd L349
	addd #7
	std L349
L370:
	.dbline 788
	ldd 4,S
	xcall $_strlen
	std 2,S
	ldy L349
	cpy 2,S
	lblo L367
L369:
	.dbline 807
;     
;     gTxMsg.ID = WIM_ID;
	movw #784,_gTxMsg
	.dbline 808
;     gTxMsg.LEN = 3;
	movb #3,_gTxMsg+2
	.dbline 809
;     gTxMsg.BUF[0] = NODE_ID;
	movb #72,_gTxMsg+4
	.dbline 810
;     gTxMsg.BUF[1] = 0x03;
	movb #3,_gTxMsg+4+1
	.dbline 811
;     gTxMsg.BUF[2] = 0;
	clr _gTxMsg+4+2
	.dbline 813
;     
;     if (!MCOHW_PushMessage(&gTxMsg))
	ldd #_gTxMsg
	xcall $_MCOHW_PushMessage
	clra
	cmpb #0
	bne L390
	.dbline 814
;         MCOUSER_FatalError(0x8801);
	ldd #34817
	xcall $_MCOUSER_FatalError
L390:
	.dbline 816
;     
;     Timer1 = RTI_One_Sec * Disp_Wait_Time1;
	movw #0,_Timer1
L392:
	.dbline 817
;     while ( Timer1 );
L393:
	.dbline 817
	ldy _Timer1
	cpy #0
	bne L392
	.dbline -2
L348:
	.dbline 0 ; func end
	leas 6,S
	rtc
	.dbsym l buff 4 pc
	.dbend
	.dbfunc e PositionDisplay _PositionDisplay fV
$_PositionDisplay::
	.dbline -1
	.dbline 822
;     
; }
; 
; void PositionDisplay ( void )
; {
	.dbline 823
; 	gTxMsg.ID = WIM_ID;
	movw #784,_gTxMsg
	.dbline 824
; 	gTxMsg.LEN = 8;
	movb #8,_gTxMsg+2
	.dbline 825
; 	gTxMsg.BUF[0] = 0;
	clr _gTxMsg+4
	.dbline 826
; 	gTxMsg.BUF[1] = 0x02;
	movb #2,_gTxMsg+4+1
	.dbline 827
; 	gTxMsg.BUF[2] = 'H';
	movb #72,_gTxMsg+4+2
	.dbline 828
; 	gTxMsg.BUF[3] = 'o';
	movb #111,_gTxMsg+4+3
	.dbline 829
; 	gTxMsg.BUF[4] = 'm';
	movb #109,_gTxMsg+4+4
	.dbline 830
; 	gTxMsg.BUF[5] = 'e';
	movb #101,_gTxMsg+4+5
	.dbline 831
; 	gTxMsg.BUF[6] = ':';
	movb #58,_gTxMsg+4+6
	.dbline 832
; 	gTxMsg.BUF[7] = 0x03;
	movb #3,_gTxMsg+4+7
	.dbline 834
; 	
;    	if (!MCOHW_PushMessage(&gTxMsg))
	ldd #_gTxMsg
	xcall $_MCOHW_PushMessage
	clra
	cmpb #0
	bne L412
	.dbline 835
;    	{
	.dbline 837
;         // failed to transmit
;        	MCOUSER_FatalError(0x8801);
	ldd #34817
	xcall $_MCOUSER_FatalError
	.dbline 838
;     }
L412:
	.dbline 839
; 	Timer1 = RTI_One_Sec * Disp_Wait_Time1;
	movw #0,_Timer1
L414:
	.dbline 840
; 	while ( Timer1 );
L415:
	.dbline 840
	ldy _Timer1
	cpy #0
	bne L414
	.dbline -2
L395:
	.dbline 0 ; func end
	rtc
	.dbend
	.dbfunc e ClearTitler _ClearTitler fV
	.dbstruct 0 12 .1
	.dbfield 0 ID i
	.dbfield 2 LEN c
	.dbfield 3 dummy32bit c
	.dbfield 4 BUF A[8:8]c
	.dbend
;              i -> 0,SP
;         pTxMsg -> 2,SP
;         gTxMsg -> 4,SP
$_ClearTitler::
	leas -16,S
	.dbline -1
	.dbline 844
; }
; 
; void ClearTitler ( void )
; {
	.dbline 847
;     int i;
; 	CAN_MSG gTxMsg;
; 	CAN_MSG *pTxMsg = &gTxMsg;
	leay 4,S
	sty 2,S
	.dbline 849
; 
; 	gTxMsg.ID = WIM_ID;
	movw #784,4,S
	.dbline 850
; 	gTxMsg.LEN = 8;
	movb #8,6,S
	.dbline 851
; 	gTxMsg.BUF[0] = 0;
	clr 8,S
	.dbline 852
; 	gTxMsg.BUF[1] = 0x02;
	movb #2,9,S
	.dbline 853
; 	gTxMsg.BUF[2] = 'C';
	movb #67,10,S
	.dbline 854
; 	gTxMsg.BUF[3] = 'l';
	movb #108,11,S
	.dbline 855
; 	gTxMsg.BUF[4] = 'r';
	movb #114,12,S
	.dbline 856
; 	gTxMsg.BUF[5] = ':';
	movb #58,13,S
	.dbline 857
; 	gTxMsg.BUF[6] = 0x03;
	movb #3,14,S
	.dbline 858
; 	gTxMsg.BUF[7] = 0;       //bogus place-holder character, RF will not transmit null
	clr 15,S
	.dbline 861
; 
; 	
; 	if (!MCOHW_PushMessage(&gTxMsg))
	leay 4,S
	tfr Y,D
	xcall $_MCOHW_PushMessage
	clra
	cmpb #0
	bne L434
	.dbline 862
;    	{
	.dbline 864
;         // failed to transmit
;        	MCOUSER_FatalError(0x8801);
	ldd #34817
	xcall $_MCOUSER_FatalError
	.dbline 865
;     }
L434:
	.dbline 866
; 	Timer1 = RTI_One_Sec * Disp_Wait_Time1;
	movw #0,_Timer1
L436:
	.dbline 867
; 	while ( Timer1 );
L437:
	.dbline 867
	ldy _Timer1
	cpy #0
	bne L436
	.dbline -2
L417:
	.dbline 0 ; func end
	leas 16,S
	rtc
	.dbsym l i 0 I
	.dbsym l pTxMsg 2 pS[.1]
	.dbsym l gTxMsg 4 S[.1]
	.dbend
	.dbfunc e menu_function _menu_function fI
; CamAddressXmitd -> 6,SP
;              i -> 7,SP
$_menu_function::
	leas -9,S
	.dbline -1
	.dbline 873
; 
; }
; 
; 
; int menu_function (void)
; {
	.dbline 878
;     int i;
; 	
;     char CamAddressXmitd;
; 
;     if ( TC0_RCVD_Data != ( gProcImg[OUT_digi_2]<<8 | gProcImg[OUT_digi_1] ) )
	ldab _gProcImg+16
	tfr B,D
	tfr B,A
	ldab _gProcImg+15
	cpd _TC0_RCVD_Data
	beq L440
	.dbline 879
;     {
	.dbline 880
;         TC0_RCVD_Data = gProcImg[OUT_digi_2]<<8 | gProcImg[OUT_digi_1];
	ldab _gProcImg+16
	tfr B,D
	tfr B,A
	ldab _gProcImg+15
	std _TC0_RCVD_Data
	.dbline 883
; //        if ( MenuTimer < MenuTime )   
; //           MenuTimer = 0;
;     }
L440:
	.dbline 885
; 
;     if ( gProcImg[OUT_digi_0] & 0x01 && !(Gen_Flags & Gen_Flags_Menu_Active) )
	brclr _gProcImg+14,#1,X0
	bra X1
X0: lbra L446
X1:
	ldab _Gen_Flags
	bitb #64
	lbne L446
	.dbline 886
;     {
	.dbline 893
; /*        Timer1 = RTI_One_Sec * .10;
;         while ( Timer1 );
;         gProcImg[IN_digi_0] |= 0x01;
;         i = MCO_ProcessStack();
;         Timer1 = RTI_One_Sec * .10;
;         while ( Timer1 );*/  
;         MenuTimer = MenuTime * 2;
	movw #488,_MenuTimer
	.dbline 895
;       
;         gProcImg[OUT_digi_0] &= ~0x01;
	bclr _gProcImg+14,#1
	.dbline 897
; 		
;         StackPointer = 0;
	clr _StackPointer
	.dbline 898
;         MenuStackc[StackPointer].Index[0] = 0;
	ldab _StackPointer
	clra
	tfr D,Y
	ldd #6
	emul
	tfr D,Y
	ldx #_MenuStackc
	tfr Y,D
	stx 0,S
	addd 0,S
	tfr D,Y
	ldd #0
	stab 0,Y
	.dbline 899
;         MenuStackc[StackPointer].Index[1] = 0;
	ldab _StackPointer
	clra
	tfr D,Y
	ldd #6
	emul
	tfr D,Y
	ldx #_MenuStackc+1
	tfr Y,D
	stx 0,S
	addd 0,S
	tfr D,Y
	ldd #0
	stab 0,Y
	.dbline 900
;         MenuStackc[StackPointer].Index[2] = 0;
	ldab _StackPointer
	clra
	tfr D,Y
	ldd #6
	emul
	tfr D,Y
	ldx #_MenuStackc+2
	tfr Y,D
	stx 0,S
	addd 0,S
	tfr D,Y
	ldd #0
	stab 0,Y
	.dbline 901
;         MenuStackc[StackPointer].Index[3] = 0;
	ldab _StackPointer
	clra
	tfr D,Y
	ldd #6
	emul
	tfr D,Y
	ldx #_MenuStackc+3
	tfr Y,D
	stx 0,S
	addd 0,S
	tfr D,Y
	ldd #0
	stab 0,Y
	.dbline 902
;         MenuStackc[StackPointer].CursorPos = 1;
	ldab _StackPointer
	clra
	tfr D,Y
	ldd #6
	emul
	tfr D,Y
	ldx #_MenuStackc+4
	tfr Y,D
	stx 0,S
	addd 0,S
	tfr D,Y
	ldd #1
	stab 0,Y
	.dbline 903
;         MenuStackc[StackPointer].FirstLine = 0;
	ldab _StackPointer
	clra
	tfr D,Y
	ldd #6
	emul
	tfr D,Y
	ldx #_MenuStackc+5
	tfr Y,D
	stx 0,S
	addd 0,S
	tfr D,Y
	ldd #0
	stab 0,Y
	.dbline 904
;         Gen_Flags |= Gen_Flags_Menu_Active;
	bset _Gen_Flags,#64
	.dbline 906
;         
;         LoadMenu ( MenuStackc[StackPointer].Index );
	ldab _StackPointer
	clra
	tfr D,Y
	ldd #6
	emul
	tfr D,Y
	ldx #_MenuStackc
	tfr Y,D
	stx 0,S
	addd 0,S
	xcall $_LoadMenu
	.dbline 907
;         InsertCursor ();
	xcall $_InsertCursor
	.dbline 909
; //        DisplayTitler ();			
; 		UpdateMenu = 1;
	movb #1,_UpdateMenu
	.dbline 911
; //        TC0_RCVD_Data &= ~0x07;  //Make sure up/down/select not active
; 		AcceptKeys = 0;
	clr _AcceptKeys
	.dbline 912
;         CursorDownFlag = 0;
	clr _CursorDownFlag
	.dbline 913
;         CursorUpFlag = 0;
	clr _CursorUpFlag
	.dbline 914
;         SelectFlag = -1;
	movb #255,_SelectFlag
	.dbline 915
; 		Send_Menu_Status (0x01);
	ldd #1
	xcall $_Send_Menu_Status
	.dbline 918
;         
;         //gProcImg[IN_digi_0] |= 0x01;
;     }
L446:
	.dbline 920
; 
; 	if (AcceptKeys)
	ldab _AcceptKeys
	cmpb #0
	lbeq L455
	.dbline 921
; 	{
	.dbline 922
;     	if ( ( TC0_RCVD_Data & TeleData_CamTog1 ) && CursorDownFlag == 0 )
	ldd _TC0_RCVD_Data
	anda #0
	andb #1
	cpd #0
	beq L457
	ldab _CursorDownFlag
	cmpb #0
	bne L457
	.dbline 923
;     		CursorDownFlag = 1;
	movb #1,_CursorDownFlag
	bra L458
L457:
	.dbline 924
;     	else if ( CursorDownFlag == -1 && !( TC0_RCVD_Data & TeleData_CamTog1 ) )
	ldab _CursorDownFlag
	cmpb #65535
	bne L459
	ldd _TC0_RCVD_Data
	anda #0
	andb #1
	cpd #0
	bne L459
	.dbline 925
;     		CursorDownFlag = 0;
	clr _CursorDownFlag
L459:
L458:
	.dbline 927
;     
;     	if ( ( TC0_RCVD_Data &  TeleData_CamTog2 ) && CursorUpFlag == 0 )
	ldd _TC0_RCVD_Data
	anda #0
	andb #2
	cpd #0
	beq L461
	ldab _CursorUpFlag
	cmpb #0
	bne L461
	.dbline 928
;     		CursorUpFlag = 1;
	movb #1,_CursorUpFlag
	bra L462
L461:
	.dbline 929
;     	else if ( CursorUpFlag == -1 && !( TC0_RCVD_Data & TeleData_CamTog2 ) )
	ldab _CursorUpFlag
	cmpb #65535
	bne L463
	ldd _TC0_RCVD_Data
	anda #0
	andb #2
	cpd #0
	bne L463
	.dbline 930
;     		CursorUpFlag = 0;
	clr _CursorUpFlag
L463:
L462:
	.dbline 932
;     
;     	if ( ( TC0_RCVD_Data & TeleData_PLCTrig ) && SelectFlag == 0 )
	ldd _TC0_RCVD_Data
	anda #0
	andb #4
	cpd #0
	beq L465
	ldab _SelectFlag
	cmpb #0
	bne L465
	.dbline 933
;     		SelectFlag = 1;
	movb #1,_SelectFlag
	bra L466
L465:
	.dbline 934
;     	else if ( SelectFlag == -1 && !( TC0_RCVD_Data & TeleData_PLCTrig ) )
	ldab _SelectFlag
	cmpb #65535
	bne L467
	ldd _TC0_RCVD_Data
	anda #0
	andb #4
	cpd #0
	bne L467
	.dbline 935
;     		SelectFlag = 0;
	clr _SelectFlag
L467:
L466:
	.dbline 936
; 	}
L455:
	.dbline 938
; 	
; 	if ( !MenuTimer )
	ldy _MenuTimer
	cpy #0
	lbne L469
	.dbline 939
; 	{
	.dbline 940
; 		MenuTimer = (InProcess ? MenuTime*2.5 : MenuTime);
	ldab _InProcess
	cmpb #0
	beq L472
	movw #17432,2,S
	movw #32768,4,S
	bra L473
L472:
	movw #17268,2,S
	movw #0,4,S
L473:
	ldd 4,S
	pshd
	ldd 4,S
	pshd
	jsr fp2int
	std _MenuTimer
	.dbline 941
; 		AcceptKeys = 1;
	movb #1,_AcceptKeys
	.dbline 943
; 		
; 		if ( Gen_Flags & Gen_Flags_Menu_Active )
	brclr _Gen_Flags,#64,X2
	bra X3
X2: lbra L474
X3:
	.dbline 944
; 		{
	.dbline 945
; 			if ( CursorDownFlag )
	ldab _CursorDownFlag
	cmpb #0
	beq L476
	.dbline 946
; 			{
	.dbline 947
; 				CursorDownFlag = -1;
	movb #255,_CursorDownFlag
	.dbline 948
; 				CursorDown ();				
	xcall $_CursorDown
	.dbline 949
; 			}
L476:
	.dbline 950
; 			if ( CursorUpFlag )
	ldab _CursorUpFlag
	cmpb #0
	beq L478
	.dbline 951
; 			{
	.dbline 952
; 				CursorUpFlag = -1;
	movb #255,_CursorUpFlag
	.dbline 953
; 				CursorUp ();			
	xcall $_CursorUp
	.dbline 954
; 			}			 
L478:
	.dbline 955
; 			if ( SelectFlag == 1)
	ldab _SelectFlag
	cmpb #1
	bne L480
	.dbline 956
; 			{
	.dbline 957
; 				MenuTimer = MenuTime * 2; //briefly disable select after menu is selected
	movw #488,_MenuTimer
	.dbline 958
; 				SelectFlag = -1;
	movb #255,_SelectFlag
	.dbline 959
; 				AcceptKeys = 0;
	clr _AcceptKeys
	.dbline 960
; 				Select ();						
	xcall $_Select
	.dbline 961
; 			}
L480:
	.dbline 962
; 			if ( UpdateMenu )
	ldab _UpdateMenu
	cmpb #0
	beq L482
	.dbline 963
; 			{
	.dbline 964
; 				LoadMenu ( MenuStackc[StackPointer].Index );
	ldab _StackPointer
	clra
	tfr D,Y
	ldd #6
	emul
	tfr D,Y
	ldx #_MenuStackc
	tfr Y,D
	stx 0,S
	addd 0,S
	xcall $_LoadMenu
	.dbline 965
; 				if ( !Variable_flag )
	ldab _Variable_flag
	cmpb #0
	bne L484
	.dbline 966
; 					InsertCursor ();
	xcall $_InsertCursor
L484:
	.dbline 967
; 				DisplayTitler ();
	xcall $_DisplayTitler
	.dbline 968
; 				UpdateMenu = 0;
	clr _UpdateMenu
	.dbline 969
; 			}
L482:
	.dbline 970
; 		}
L474:
	.dbline 972
; 	
;         if ( UpdateMenu )
	ldab _UpdateMenu
	cmpb #0
	beq L486
	.dbline 973
;         {
	.dbline 974
;             if ( Gen_Flags & Gen_Flags_Menu_Active )
	brclr _Gen_Flags,#64,L488
	.dbline 975
;             {
	.dbline 976
;                 LoadMenu ( MenuStackc[StackPointer].Index );
	ldab _StackPointer
	clra
	tfr D,Y
	ldd #6
	emul
	tfr D,Y
	ldx #_MenuStackc
	tfr Y,D
	stx 0,S
	addd 0,S
	xcall $_LoadMenu
	.dbline 977
;                 if ( !Variable_flag )
	ldab _Variable_flag
	cmpb #0
	bne L490
	.dbline 978
;                     InsertCursor ();
	xcall $_InsertCursor
L490:
	.dbline 979
;                 DisplayTitler ();
	xcall $_DisplayTitler
	.dbline 980
;             }
	bra L489
L488:
	.dbline 982
;             else
;             {
	.dbline 983
;                 ClearTitler ();
	xcall $_ClearTitler
	.dbline 984
;             }
L489:
	.dbline 985
;             UpdateMenu = 0;
	clr _UpdateMenu
	.dbline 986
;         }
L486:
	.dbline 987
; 	}
L469:
	.dbline 989
; 
;     if ( Gen_Flags & Gen_Flags_Menu_Active )
	brclr _Gen_Flags,#64,L492
	.dbline 990
; 	    return 1;
	ldd #1
	bra L439
L492:
	.dbline 992
; 	else
; 	    return 0;
	ldd #0
	.dbline -2
L439:
	.dbline 0 ; func end
	leas 9,S
	rtc
	.dbsym l CamAddressXmitd 6 c
	.dbsym l i 7 I
	.dbend
	.dbfunc e Send_Menu_Status _Send_Menu_Status fV
;           stat -> 1,SP
$_Send_Menu_Status::
	pshd
	.dbline -1
	.dbline 997
; } 
; 
; 
; void Send_Menu_Status (char stat)
; {
	.dbline 998
;    gTxMsg.ID = 0x200;
	movw #512,_gTxMsg
	.dbline 999
;    gTxMsg.LEN = 1; 
	movb #1,_gTxMsg+2
	.dbline 1001
; 
;    gTxMsg.BUF[0] = stat;
	movb 1,S,_gTxMsg+4
	.dbline 1004
; 
;    	   
;    if (!MCOHW_PushMessage(&gTxMsg))
	ldd #_gTxMsg
	xcall $_MCOHW_PushMessage
	clra
	cmpb #0
	bne L497
	.dbline 1005
;    {
	.dbline 1007
;        // failed to transmit
;        MCOUSER_FatalError(0x8801);
	ldd #34817
	xcall $_MCOUSER_FatalError
	.dbline 1008
;    }
L497:
	.dbline -2
L494:
	.dbline 0 ; func end
	leas 2,S
	rtc
	.dbsym l stat 1 c
	.dbend
	.area bss
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines1.c
_InProcess::
	.blkb 1
	.dbsym e InProcess _InProcess c
_AcceptKeys::
	.blkb 1
	.dbsym e AcceptKeys _AcceptKeys c
_SelectFlag::
	.blkb 1
	.dbsym e SelectFlag _SelectFlag c
_CursorUpFlag::
	.blkb 1
	.dbsym e CursorUpFlag _CursorUpFlag c
_CursorDownFlag::
	.blkb 1
	.dbsym e CursorDownFlag _CursorDownFlag c
	.area text
	.dbfile C:\Users\vbenton.crtsglobal\Desktop\temp\REV3~1.25\SOURCE~1\Subroutines1.c
L106:
	.byte 37,42,'s,37,46,42,'f,0
L103:
	.byte 37,42,'s,37,35,46,42,'f,0
L92:
	.byte 32,0
L91:
	.byte 37,42,'s,37,'s,0
L69:
	.byte 44,0
