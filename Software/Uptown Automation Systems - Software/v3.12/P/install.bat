echo off
if not exist uptown.exe goto NOTLOGGED
if not exist install.bat goto NOTLOGGED
if not exist batchman.com goto NOTLOGGED
batchman cls 1FH
batchman window 1,1,80,3,1FH,=
batchman setcursor 2, 27
batchman cecho UPTOWN Installation Program
batchman setcursor 4, 1
batchman cecho 1EH,Testing computer hardware....
batchman cpu
if errorlevel 3 goto CPUOK
batchman cecho 1CH,SORRY:  This program requires an 80286, 80386 or 80486
goto BREAK
:CPUOK
batchman cecho CPU type OK.
batchman display
if errorlevel 3 goto DISPLAYOK
batchman cecho 1CH,SORRY:  The graphics in this program require color or mono EGA, VGA or MCGA.
goto BREAK
:DISPLAYOK
batchman cecho Graphics display OK.
batchman mainmem 475
if errorlevel 1 goto NOMEM
batchman cecho System memory OK.
batchman expmem 375
if errorlevel 1 goto NOEXPMEM
batchman cecho Expanded memory OK.
goto EXPMEMOK
:NOEXPMEM
batchman cecho 1CH,No expanded memory available:  Length of mixes will be limited.
:EXPMEMOK
batchman cecho The program will now be installed in directory \MIX
batchman cecho
batchman cecho 1EH,Looking for disk drives...
batchman driveexist c:
if errorlevel 1 goto CFOUND
goto NOMORE
:CFOUND
batchman cecho Found C
set dstr=QC
batchman driveexist d:
if errorlevel 1 goto DFOUND
goto NOMORE
:DFOUND
batchman cecho Found D
set dstr=QCD
batchman driveexist e:
if errorlevel 1 goto EFOUND
goto NOMORE
:EFOUND
batchman cecho Found E
set dstr=QCDE
batchman driveexist f:
if errorlevel 1 goto FFOUND
goto NOMORE
:FFOUND
batchman cecho Found F
set dstr=QCDEF
batchman driveexist g:
if errorlevel 1 goto GFOUND
goto NOMORE
:GFOUND
batchman cecho Found G
set dstr=QCDEFG
batchman driveexist h:
if errorlevel 1 goto HFOUND
goto NOMORE
:HFOUND
batchman cecho Found H
set dstr=QCDEFGH
batchman driveexist i:
if errorlevel 1 goto IFOUND
goto NOMORE
:IFOUND
batchman cecho Found I
batchman cecho There may be more, but I quit!
set dstr=QCDEFGHI
:NOMORE
batchman cecho C 1AH,Enter disk drive to install software on (from list above, or Q to Quit)
batchman getkey "%DSTR%"
if errorlevel 255 goto BREAK
if errorlevel 1 set drive=0
if errorlevel 2 set drive=C
if errorlevel 3 set drive=D
if errorlevel 4 set drive=E
if errorlevel 5 set drive=F
if errorlevel 6 set drive=G
if errorlevel 7 set drive=H
if errorlevel 8 set drive=I
if %DRIVE% == 0 goto BREAK
batchman cecho 1FH, %DRIVE% 
batchman driveexist %DRIVE%:
if errorlevel 1 goto DRIVEOK
batchman cecho 1CH,Drive %DRIVE%: does not exist on this computer.
goto BREAK
:DRIVEOK
batchman direxist %DRIVE%:\mix
if errorlevel 1 goto DIROK
batchman cecho 1EH,Creating directory \MIX...
md %DRIVE%:\mix
:DIROK
batchman direxist %DRIVE%:\mixes
if errorlevel 1 goto DIR2OK
batchman cecho 1EH,Creating directory \MIXES...
md %DRIVE%:\mixes
:DIR2OK
cd %DRIVE%:\MIX
batchman cancopy *.* %DRIVE%:
if errorlevel 1 goto NOSPACE
batchman cecho 1EH,Installing MIX program...
uptown -o %DRIVE%:\MIX 
batchman cecho 1EH,Installing utility programs...
testdisk -o %DRIVE%:\MIX 
if exist tables copy tables %DRIVE%:\MIX
if exist mix.prm copy mix.prm %DRIVE%:\MIX
batchman cls 1FH
batchman window 1,1,80,3,1FH,=
batchman setcursor 2, 27
batchman cecho UPTOWN Installation Program
batchman setcursor 4, 1
batchman cecho 1EH,Installation now complete in %DRIVE%:\MIX
if not exist TABLES GOTO NO_TABLES
copy TABLES %DRIVE%:\MIX\TABLES
:NO_TABLES
if not exist MIX.CFG GOTO CFG_DONE
batchman cecho 1EH,
batchman cecho 1EH,The configuration file MIX.CFG has been deleted because it
batchman cecho 1EH,is not compatible with this version.
copy MIX.CFG %DRIVE%:\MIX\MIX.CFG
batchman cecho 1EH,
batchman cecho 1EH,A new MIX.CFG file has been written to the disk.  Some
batchman cecho 1EH,of your system parameters may have changed.
:CFG_DONE
batchman cecho 1EH,
batchman cecho 1EH,Type MIX to start program, or DEMO to start demo version.
batchman cecho 1EH,
batchman cecho 1EH,Since the program uses a mouse (if available), you should
batchman cecho 1EH,load your mouse driver if it is not loaded already.
%DRIVE%:
cd \MIX
goto DONE
:NOTLOGGED
echo ................... Uptown Installation Program .......................
echo You MUST run this install program from the disk drive its files are on.
echo For example, put the floppy disk in drive A, then type:
echo A:[Enter]
echo INSTALL[Enter]
echo .......................................................................
goto DONE
:NOSPACE
batchman cechoe 1CH,SORRY:  You do not have enough disk space available to install the program.
goto BREAK
:NOMEM
batchman cecho 1CH,SORRY:  You must have at least 475k of system memory to run this program.
:BREAK
batchman cecho
batchman cecho 1EH,Installation cancelled.
:DONE
set DRIVE=
set DSTR=
