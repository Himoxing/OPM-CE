@ECHO OFF
Color A
Title OPM CE

:menu
cls
Color 5 
Title OPM checking engine
echo.
echo                                                      Hello %username%!
echo.
echo. 
echo. 
echo. 
echo                               $######$   $####$      $     $         $######$   $#######
echo                               $      $   $    $     $ $   $ $       $           $
echo                               $      $   $#####    $   $ $   $     #            $######
echo                               $      $   $        #     #     #    #            $
echo                               $      $   $        #           #     $           $
echo                               $######$   $        #           #      $#######   $########
echo. 
echo. 
echo. 

ECHO             -----------------                                                              ------------------
ECHO             PRESS "Q" TO QUIT                      ------------------                      PRESS "S" TO START
ECHO             -----------------                      PRESS "H" FOR HELP                      ------------------
ECHO                                                    ------------------
ECHO.
ECHO.
ECHO.
ECHO.
SET INPUT=
SET /P INPUT=Please select option and press Enter:
IF /I '%INPUT%'=='Q' GOTO exit
IF /I '%INPUT%'=='H' GOTO help
IF /I '%INPUT%'=='S' GOTO start1

:start1
cls
echo.
echo. 
echo. 
echo. 
echo                               $######$   $####$      $     $         $######$   $#######
echo                               $      $   $    $     $ $   $ $       $           $
echo                               $      $   $#####    $   $ $   $     #            $######
echo                               $      $   $        #     #     #    #            $
echo                               $      $   $        #           #     $           $
echo                               $######$   $        #           #      $#######   $########
echo. 
echo. 
echo. 
ECHO                            ---------------------                      ---------------------
ECHO                            PRESS "O" TO OPTIMIZE                      PRESS "C" To CHECKING
ECHO                            ---------------------                      ---------------------
ECHO.
ECHO.
SET INPUT=
SET /P INPUT=Please select option and press Enter:

IF /I '%INPUT%'=='O' GOTO Optimizer                             
IF /I '%INPUT%'=='C' GOTO start2

:Optimizer
cls
ECHO Now running Disk Cleanup...
c:\windows\system32\cleanmgr.exe /dc /sagerum: 1
GOTO Menu
:start2
cls
ECHO Scheduling Check Disk...
ECHO.
ECHO.
chkdsk /r

:CDchoice
set /P c=Reboot now to begin Check Disk? [Y/N]
if /I "%c%" EQU "Y" goto :CDREBOOT
if /I "%c%" EQU "N" goto :CDQUIT
goto :CDchoice
GOTO Quit

:CDREBOOT
taskkill /IM explorer.exe /F
shutdown -r -t 0
cls
ECHO Rebooting now!

:help
cls
color 1
title OPM CE - HELP
ECHO.
ECHO OPM CE is a program that checks the hard disk for errors (requires restart).
ECHO It also has additional functions to optimize your device by removing temporal files (unnecessery).
ECHO.
Pause
goto menu

:exit
cls
Color 1
Title OPM CE - EXITING

ECHO               Thank You!
ECHO -------------------------------------
ECHO       Press any key to exit...
PAUSE>NUL
EXIT