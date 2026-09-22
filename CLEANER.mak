CC = icc12w
LIB = ilibw
CFLAGS =  -IC:\iccv712\include\ -e -D__ICC_VERSION=708 -D__BUILD=1690  -l -g -Wa-g -Wf-cpdon 
ASFLAGS = $(CFLAGS) 
LFLAGS =  -LC:\iccv712\lib\ -g -nb:1690 -ucrt12initrm.o -btext:0x4000.0x7FFF:0xC000.0xFFFF -bdata:0x2000 -bextcode:0xE0000.0xFFFFF -dinit_sp:0x4000 -fmots19 -dinitrm:0x21
FILES = Flash.o EEProm.o mco.o user.o mcohw.o Interrupts.o Subroutines.o Subroutines1.o PID.o Controller.o 

CLEANER:	$(FILES)
	$(CC) -o CLEANER $(LFLAGS) @CLEANER.lk   -lfp12p -lfp12 -lc12p
Flash.o: .\..\REV3~1.25\SOURCE~1\Flash.h .\..\REV3~1.25\SOURCE~1\mc9s12a128.h .\..\REV3~1.25\SOURCE~1\Subroutines.h
Flash.o:	..\REV3~1.25\SOURCE~1\Flash.c
	$(CC) -c $(CFLAGS) ..\REV3~1.25\SOURCE~1\Flash.c
EEProm.o: .\..\REV3~1.25\SOURCE~1\EEProm.h .\..\REV3~1.25\SOURCE~1\mc9s12a128.h .\..\REV3~1.25\SOURCE~1\Subroutines.h
EEProm.o:	..\REV3~1.25\SOURCE~1\EEProm.c
	$(CC) -c $(CFLAGS) ..\REV3~1.25\SOURCE~1\EEProm.c
mco.o: C:\iccv712\include\string.h C:\iccv712\include\_const.h .\..\REV3~1.25\SOURCE~1\Controller.h .\..\REV3~1.25\SOURCE~1\Interrupts.h .\..\REV3~1.25\SOURCE~1\Subroutines.h .\..\REV3~1.25\SOURCE~1\mco.h .\..\REV3~1.25\SOURCE~1\nodecfg.h .\..\REV3~1.25\SOURCE~1\procimg.h .\..\REV3~1.25\SOURCE~1\mcohw.h .\..\REV3~1.25\SOURCE~1\mc9s12a128.h
mco.o:	..\REV3~1.25\SOURCE~1\mco.c
	$(CC) -c $(CFLAGS) ..\REV3~1.25\SOURCE~1\mco.c
user.o: C:\iccv712\include\string.h C:\iccv712\include\_const.h .\..\REV3~1.25\SOURCE~1\Controller.h .\..\REV3~1.25\SOURCE~1\mco.h .\..\REV3~1.25\SOURCE~1\nodecfg.h .\..\REV3~1.25\SOURCE~1\procimg.h .\..\REV3~1.25\SOURCE~1\mcohw.h .\..\REV3~1.25\SOURCE~1\mc9s12a128.h .\..\REV3~1.25\SOURCE~1\subroutines.h
user.o:	..\REV3~1.25\SOURCE~1\user.c
	$(CC) -c $(CFLAGS) ..\REV3~1.25\SOURCE~1\user.c
mcohw.o: .\..\REV3~1.25\SOURCE~1\Controller.h .\..\REV3~1.25\SOURCE~1\mc9s12a128.h .\..\REV3~1.25\SOURCE~1\mcohw.h .\..\REV3~1.25\SOURCE~1\mco.h .\..\REV3~1.25\SOURCE~1\nodecfg.h .\..\REV3~1.25\SOURCE~1\procimg.h .\..\REV3~1.25\SOURCE~1\Interrupts.h .\..\REV3~1.25\SOURCE~1\Subroutines.h .\..\..\..\..\..\iccv712\include\stdarg.h
mcohw.o:	..\REV3~1.25\SOURCE~1\mcohw.c
	$(CC) -c $(CFLAGS) ..\REV3~1.25\SOURCE~1\mcohw.c
Interrupts.o: .\..\REV3~1.25\SOURCE~1\Interrupts.h .\..\REV3~1.25\SOURCE~1\mc9s12a128.h .\..\REV3~1.25\SOURCE~1\Controller.h .\..\REV3~1.25\SOURCE~1\mco.h .\..\REV3~1.25\SOURCE~1\nodecfg.h .\..\REV3~1.25\SOURCE~1\procimg.h .\..\REV3~1.25\SOURCE~1\mcohw.h .\..\REV3~1.25\SOURCE~1\Subroutines.h C:\iccv712\include\math.h C:\iccv712\include\stdlib.h C:\iccv712\include\_const.h C:\iccv712\include\limits.h .\..\REV3~1.25\SOURCE~1\vectors.h
Interrupts.o:	..\REV3~1.25\SOURCE~1\Interrupts.c
	$(CC) -c $(CFLAGS) ..\REV3~1.25\SOURCE~1\Interrupts.c
Subroutines.o: C:\iccv712\include\stdio.h C:\iccv712\include\stdarg.h C:\iccv712\include\_const.h C:\iccv712\include\string.h C:\iccv712\include\stdlib.h C:\iccv712\include\limits.h .\..\REV3~1.25\SOURCE~1\Subroutines.h .\..\REV3~1.25\SOURCE~1\mc9s12a128.h .\..\REV3~1.25\SOURCE~1\Interrupts.h .\..\REV3~1.25\SOURCE~1\mcohw.h .\..\REV3~1.25\SOURCE~1\mco.h .\..\REV3~1.25\SOURCE~1\nodecfg.h .\..\REV3~1.25\SOURCE~1\procimg.h .\..\REV3~1.25\SOURCE~1\EEProm.h .\..\REV3~1.25\SOURCE~1\PID.h
Subroutines.o:	..\REV3~1.25\SOURCE~1\Subroutines.c
	$(CC) -c $(CFLAGS) ..\REV3~1.25\SOURCE~1\Subroutines.c
Subroutines1.o: C:\iccv712\include\stdio.h C:\iccv712\include\stdarg.h C:\iccv712\include\_const.h C:\iccv712\include\string.h C:\iccv712\include\stdlib.h C:\iccv712\include\limits.h C:\iccv712\include\math.h .\..\REV3~1.25\SOURCE~1\nodecfg.h .\..\REV3~1.25\SOURCE~1\Subroutines.h .\..\REV3~1.25\SOURCE~1\mc9s12a128.h .\..\REV3~1.25\SOURCE~1\Interrupts.h .\..\REV3~1.25\SOURCE~1\mco.h .\..\REV3~1.25\SOURCE~1\procimg.h .\..\REV3~1.25\SOURCE~1\mcohw.h .\..\REV3~1.25\SOURCE~1\EEProm.h
Subroutines1.o:	..\REV3~1.25\SOURCE~1\Subroutines1.c
	$(CC) -c $(CFLAGS) ..\REV3~1.25\SOURCE~1\Subroutines1.c
PID.o: C:\iccv712\include\stdio.h C:\iccv712\include\stdarg.h C:\iccv712\include\_const.h C:\iccv712\include\string.h C:\iccv712\include\stdlib.h C:\iccv712\include\limits.h C:\iccv712\include\math.h .\..\REV3~1.25\SOURCE~1\PID.h
PID.o:	..\REV3~1.25\SOURCE~1\PID.c
	$(CC) -c $(CFLAGS) ..\REV3~1.25\SOURCE~1\PID.c
Controller.o: C:\iccv712\include\stdio.h C:\iccv712\include\stdarg.h C:\iccv712\include\_const.h .\..\REV3~1.25\SOURCE~1\Controller.h .\..\REV3~1.25\SOURCE~1\mc9s12a128.h .\..\REV3~1.25\SOURCE~1\Flash.h .\..\REV3~1.25\SOURCE~1\EEProm.h .\..\REV3~1.25\SOURCE~1\Subroutines.h
Controller.o:	..\REV3~1.25\SOURCE~1\Controller.c
	$(CC) -c $(CFLAGS) ..\REV3~1.25\SOURCE~1\Controller.c
