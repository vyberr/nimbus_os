@echo off
chcp 65001
mode 70,17
cls
:MAIN
mode 70,17
cls
title NetWork Tool [%username% / %computername%]
echo.
echo.
echo.
echo                [40;34m╔╗╔╔═╗╔╦╗╦ ╦╔═╗╦═╗╦╔═  [40;37m╔╦╗╔═╗╔═╗╦  
echo                [40;34m║║║║╣  ║ ║║║║ ║╠╦╝╠╩╗   [40;37m║ ║ ║║ ║║  
echo                [40;34m╝╚╝╚═╝ ╩ ╚╩╝╚═╝╩╚═╩ ╩   [40;37m╩ ╚═╝╚═╝╩═╝
echo.
echo.
echo.
echo               [40;34mPlease Choose an Action to Execute!
echo.
echo               [40;34m1) [40;37mDevice Net Config   
echo               [40;34m2) [40;37mRouter and Net Information
echo               [40;34m3) [40;37mDevice Network History
echo               [40;34m4) [40;37mConnected Net Information
echo               [40;34m5) [40;37mExit Script
echo.
echo.
set CHOICE=
set /p CHOICE=[40;34m$[40;37mUserChoice:[40;34m
if %CHOICE%==1 goto NETCONFIG
if %CHOICE%==2 goto ROUTERINFO
if %CHOICE%==3 goto HISTORY
if %CHOICE%==4 goto CONNECTEDINFO
if %CHOICE%==5 goto exit
goto VALID
exit

:VALID
echo [40;33mEnter Valid Option.
timeout 3 >nul
goto MAIN

:NETCONFIG
cls
netsh interface show interface
pause>nul
goto MAIN
:ROUTERINFO
mode 90,40
cls
ipconfig /all
pause>nul
goto MAIN
:HISTORY
cls
netsh wlan show profiles
pause>nul
goto MAIN
:CONNECTEDINFO
cls
netsh lan show profiles
pause>nul
goto MAIN

:exit
exit

