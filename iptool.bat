@echo off
set APP=crumble
chcp 65001
cls
title IP Lookup Tool [%date%]
color 05
mode 60,15
setlocal ENABLEDELAYEDEXPANSION
set webclient=webclient
del "%temp%\%webclient%.vbs" /f /q /s >nul
del "%temp%\response.txt" /f /q /s >nul
:menu
cls
echo.
rem goto iplookup
echo.
echo                  [40;34m╦╔═╗  [40;37m╦  ╔═╗╔═╗╔═╗╔╦╗╔═╗╦═╗
echo                  [40;34m║╠═╝  [40;37m║  ║ ║║  ╠═╣ ║ ║ ║╠╦╝
echo                  [40;34m╩╩    [40;37m╩═╝╚═╝╚═╝╩ ╩ ╩ ╚═╝╩╚═
echo.
echo.
echo.
echo        [40;34m1) Locate This Devices IP Information
echo        [40;34m2) Locate a Server / Device Using IP Address
goto action
:input
echo.
echo Please enter a valid input option.
timeout 3 >nul
goto menu
:action
echo.
set /p action= [40;34m:[40;37m
if '%action%'=='1' echo sUrl = "http://ipinfo.io/json" > %temp%\%webclient%.vbs & goto localip
if '%action%'=='2' goto iplookup
goto input
:iplookup
title IP Lookup [Connection Encrypted]
color 07
cls
echo.
echo                [40;34m╦  ┌─┐┌─┐┬┌─  ┬ ┬┌─┐  ┌─┐┌┐┌  ┬┌─┐
echo                ║  │ ││ │├┴┐  │ │├─┘  ├─┤│││  │├─┘
echo                ╩═╝└─┘└─┘┴ ┴  └─┘┴    ┴ ┴┘└┘  ┴┴  
echo.
echo                     [40;37mEnter An IP To Look Up.
echo.
echo.
echo.
set ip=127.0.0.1
set /p ip=IP: 
echo sUrl = "http://ipinfo.io/%ip%/json" > %temp%\%webclient%.vbs
:localip
cls
echo set oHTTP = CreateObject("MSXML2.ServerXMLHTTP.6.0") >> %temp%\%webclient%.vbs
echo oHTTP.open "GET", sUrl,false >> %temp%\%webclient%.vbs
echo oHTTP.setRequestHeader "Content-Type", "application/x-www-form-urlencoded" >> %temp%\%webclient%.vbs
echo oHTTP.setRequestHeader "Content-Length", Len(sRequest) >> %temp%\%webclient%.vbs
echo oHTTP.send sRequest >> %temp%\%webclient%.vbs
echo HTTPGET = oHTTP.responseText >> %temp%\%webclient%.vbs
echo strDirectory = "%temp%\response.txt" >> %temp%\%webclient%.vbs
echo set objFSO = CreateObject("Scripting.FileSystemObject") >> %temp%\%webclient%.vbs
echo set objFile = objFSO.CreateTextFile(strDirectory) >> %temp%\%webclient%.vbs
echo objFile.Write(HTTPGET) >> %temp%\%webclient%.vbs
echo objFile.Close >> %temp%\%webclient%.vbs
rem echo Msgbox HTTPGET,vbSystemModal+vbOKOnly+vbInformation, "IP Info" >> %temp%\%webclient%.vbs
echo Wscript.Quit >> %temp%\%webclient%.vbs
start %temp%\%webclient%.vbs
set /a requests=0
echo.
rem echo Waiting for API response. . .
echo.
echo.
echo.
echo.
echo        ┬─┐┌─┐┌─┐ ┬ ┬┌─┐┌─┐┌┬┐┬┌┐┌┌─┐  ┌┬┐┌─┐┌┬┐┌─┐     
echo        ├┬┘├┤ │─┼┐│ │├┤ └─┐ │ │││││ ┬   ││├─┤ │ ├─┤     
echo        ┴└─└─┘└─┘└└─┘└─┘└─┘ ┴ ┴┘└┘└─┘  ─┴┘┴ ┴ ┴ ┴ ┴  o o o
echo.
echo.
echo.
echo.
:checkresponseexists
set /a requests=%requests% + 1
if %requests% gtr 7 goto failed
IF EXIST "%temp%\response.txt" (
goto response_exist
) ELSE (
ping 127.0.0.1 -n 2 -w 1000 >nul
goto checkresponseexists
)
:failed
taskkill /f /im wscript.exe >nul
del "%temp%\%webclient%.vbs" /f /q /s >nul
echo.
echo Did not receive a response from the API.
echo.
pause
goto menu
:response_exist
cls
echo.
for /f "delims= 	" %%i in ('findstr /i "ip hostname city region country loc org postal" %temp%\response.txt') do (
	set data=%%i
	set data=!data:,=!
	set data=!data:""=Not Listed!
	set data=!data:"=!
	set data=!data:ip:=[40;34mIP:		!
	set data=!data:hostname:=[40;37mHostname:	!
	set data=!data:city:=[40;34mCity:		!
	set data=!data:region:=[40;37mState:	!
	set data=!data:country:=[40;34mCountry:	!
	set data=!data:loc:=[40;37mLocation:	!
	set data=!data:org:=[40;34mISP:		!
	set data=!data:postal:=[40;37mPostal:	!
	echo [40;33m!data!
)
echo.
del "%temp%\%webclient%.vbs" /f /q /s >nul
del "%temp%\response.txt" /f /q /s >nul
pause
if '%ip%'=='' goto menu
goto menu
exit
