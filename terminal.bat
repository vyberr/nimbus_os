@echo off
:: Editable Vars:
::"if you would like to customize your terminal, please only change these variables"
set version=1.0
set name=Vyberr
set companyname=NulBerry
set github=github.com/vyberr
set titlecolor=[40;34m
set token=6501
:: end of editable vars!
set version=1.1
set updatedate=2022-5-23
::start of code.
::
:: ___  __    _______   _______   ________        ________  ___  ___  _________   
::|\  \|\  \ |\  ___ \ |\  ___ \ |\   __  \      |\   __  \|\  \|\  \|\___   ___\ 
::\ \  \/  /|\ \   __/|\ \   __/|\ \  \|\  \     \ \  \|\  \ \  \\\  \|___ \  \_| 
:: \ \   ___  \ \  \_|/_\ \  \_|/_\ \   ____\     \ \  \\\  \ \  \\\  \   \ \  \  
::  \ \  \\ \  \ \  \_|\ \ \  \_|\ \ \  \___|      \ \  \\\  \ \  \\\  \   \ \  \ 
::   \ \__\\ \__\ \_______\ \_______\ \__\          \ \_______\ \_______\   \ \__\
::    \|__| \|__|\|_______|\|_______|\|__|           \|_______|\|_______|    \|__|
::
::
::
:: _____ ______   ________  ___  ________           ________  ________  ________  _______      
::|\   _ \  _   \|\   __  \|\  \|\   ___  \        |\   ____\|\   __  \|\   ___ \|\  ___ \     
::\ \  \\\__\ \  \ \  \|\  \ \  \ \  \\ \  \       \ \  \___|\ \  \|\  \ \  \_|\ \ \   __/|    
:: \ \  \\|__| \  \ \   __  \ \  \ \  \\ \  \       \ \  \    \ \  \\\  \ \  \ \\ \ \  \_|/__  
::  \ \  \    \ \  \ \  \ \  \ \  \ \  \\ \  \       \ \  \____\ \  \\\  \ \  \_\\ \ \  \_|\ \ 
::   \ \__\    \ \__\ \__\ \__\ \__\ \__\\ \__\       \ \_______\ \_______\ \_______\ \_______\
::    \|__|     \|__|\|__|\|__|\|__|\|__| \|__|        \|_______|\|_______|\|_______|\|_______|
::
::          
:: UPDATE LOGGER
echo - - - - - - - %date%- - - - - - - - ->> UPDATE.txt   
echo Last Launch %date% - %time%>> UPDATE.txt
echo Latest Update %updatedate%>> UPDATE.txt
echo Version %version% >> UPDATE.txt
echo Next Version [N/A]>> UPDATE.txt                        
chcp 65001
cls
mode 90,50
title NimBus Terminal %date% %time%
:main
cls
echo.  
echo  %titlecolor%╔╗╔╦╔╦╗╔╗ ╦ ╦╔═╗  ┌┬┐┌─┐┬─┐┌┬┐┬┌┐┌┌─┐┬     [40;37m│ Date: %date%    [40;37m│ %name%
echo  %titlecolor%║║║║║║║╠╩╗║ ║╚═╗   │ ├┤ ├┬┘│││││││├─┤│     [40;37m│ Time: %time%   [40;37m│ %companyname%
echo  %titlecolor%╝╚╝╩╩ ╩╚═╝╚═╝╚═╝   ┴ └─┘┴└─┴ ┴┴┘└┘┴ ┴┴─┘   [40;37m│ User: %username%         [40;37m│ %github%
echo. 
:commandline
echo.
set command=
set /p command=%titlecolor%$root/[40;32m%username%/%titlecolor%Nimbus:[40;37m
::
:: - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
::
rem commandlist >
if %command%==help goto help
if %command%==cls goto clearlist
if %command%==clear goto clearlist
if %command%==search goto search
if %command%==searchgoogle goto search
if %command%==searchedge goto searchedge
if %command%==searchurl goto searchurl
if %command%==watch goto youtube
if %command%==youtube goto youtube
if %command%==yt goto youtube
if %command%==startapp goto startapp
if %command%==start goto start
if %command%==shutdownlan start shutdown -i && goto commandline
if %command%==setwinsize goto setsize
if %command%==setwinsizelong goto setsizelong
if %command%==setwinsizeshort goto setsizeshort
if %command%==del goto del
if %command%==writetxt goto writetxt
if %command%==erasetxt goto erasetxt
if %command%==install goto startinstall
if %command%==iptool goto launchip
if %command%==nettool goto launchnet
if %command%==pingtool goto launchping
if %command%==allfiles goto allfiles
if %command%==rubx3 goto secret
if %command%==debugmode goto debugmode
if %command%==scriptswrite goto scriptwrite
if %command%==terminalmini goto terminalmini
if %command%==forceclearsh goto forceclearsh
if %command%==getinfo goto getinfo
if %command%==get goto get
if %command%==searchhistory start searchhistory.txt && goto commandline
if %command%==sh start searchhistory.txt && goto commandline
if %command%==shortcuts goto listshortcuts
if %command%==makeshortcut goto makeshortcut
if %command%==harvest goto harvest
if %command%==lock start Rundll32.exe user32.dll,LockWorkStation
if %command%==done goto exit
if %command%==saveinfo goto svinfo
if %command%==checkupdates goto updatechecker
if %command%==changetoken goto changetoken
if %command%==updatestates goto updatestates
if %command%==read goto read
if %command%==color goto changecolor
if %command%==colorops goto colorops
goto commandlinecommand
:exit
echo Good Bye!
timeout 2 >nul
exit
rem commandlinecommand >
:commandlinecommand
echo [40;31mW[40;33mh[40;32mo[40;34mo[40;35mp[40;36ms, [40;31mCommand Is Invalid. Use "help" for Commands!
goto commandline

rem commandvalues
:clearlist
cls
goto main
:help
echo Welcome To Nimbus Terminal.
echo Made By vyberr
echo.
echo *all commands are in lowercase*
echo.
echo getinfo - Shows You Info About The OS [Nerd Stats!]
echo help - Shows Commands.
echo cls - Clears Prompt.
echo search - Searches The Web [Google].
echo searchgoogle - Searches With Google.
echo searchedge - Searches With Micorsoft Edge.
echo searchurl - Searches Direct Links
echo startapp - Launches Downloaded Apps.
echo start - Starts Files In The Same Folder.
echo shutdownlan - Shutdown Prompt.
echo setwinsize - Resize Window.
echo setwinsizeshort - Makes Window Short.
echo setwinsizelong - Makes Window Long.
echo del - Deletes a file (textfile.txt).
echo writetxt - Writes a Text File to a Present File, Or Creates A File.
echo erasetxt - Cleares a Text File .
echo iptool - Launches IP Tool [Requires Download]
echo nettool - Launches Ping Tool [Requires Download]
echo pingtool - Launches Ping Tool [Requires Download]
echo allfiles - Shows You The Contents Of The Folder, The Terminal Is In
echo get - Shows Availability Of Files In Your Folder
echo searchhistory / sh - Shows Recent Searches
echo makeshortcut - Creates A Temporary Shortcut Key [Resets Upon Closing Terminal]
echo shortcuts - Lists Premade and Created Shortcuts
echo harvest - Sends Tool To Harvest Information About Current Device
echo lock - Locks The PC, Sets A Timer When To Shutoff After Inactivity
echo done - Closes The Terminal
echo saveinfo - Saves The OS Information [For IT Help Purposes]
echo checkupdates - Checks For Auto Updates, And For Downloaded Updates
echo changetoken - Changes Connection Token.
echo updatestates - Shows Update History.
:: end of help list
goto commandline
:search
set search=
set /p search=[[40;34mG[40;31mo[40;33mo[40;34mg[40;32ml[40;31me[40;37m]Enter Search Keyword:[40;33m
if %search%==halt goto commandline
goto searchg
:searchg
start https://www.google.com/search?q=%search% 
echo [%search%] Searched With [Google]>> searchhistory.txt
goto commandline

:searchurl
set searchurl=
set /p searchurl=[[40;34mG[40;31mo[40;33mo[40;34mg[40;32ml[40;31me[40;37m]Enter Search Keyword:[40;33m
if %searchurl%==halt goto commandline
goto searchu
:searchu
start https://%searchurl% 
echo [%searchurl%] Searched With [Google]>> searchhistory.txt
goto commandline

:searchedge
set searchedge=
set /p searchedge=[[40;34mEdge[40;37m]Enter Search Keyword:[40;33m
if %c
start https://www.bing.com/search?q=%searchedge%
echo [%searchedge%] Searched With [MicroSoft Edge]>> searchhistory.txt
goto commandline

:youtube
set ytsearch=
set /p ytsearch=[40;37m[You[40;31mTube[40;37m]Search Youtube:[40;33m
if %ytsearch%==halt goto commandline
start https://www.youtube.com/results?search_query=%ytsearch%
echo [%ytsearch%] Watched With [Youtube]>> watchhistory.txt
goto commandline

:startapp
set startapp=
set /p startapp=[EXE]Enter Application Name:[40;33m
start %startapp%.exe
goto commandline

:start
set start=
set /p start=Enter File Name:[40;33m
start %start%
goto commandline

:setsize
set setsize=
set /p setsize=[##,##]Set Window Size:[40;33m
mode %setsize%
goto main

:setwinsizelong
set setsize=85,55
mode %setsize%
goto main

:setwinsizeshort
set setsize=85,7
mode %setsize%
goto main

:del
set del=
set /p del=[40;37mDelete A File in This Folder:[40;33m
if %del%==halt goto commandline
if %del%==searchhistory.txt goto errordel
if %del%==searchhistory goto errordel
if %del%==terminal.bat goto crazy
goto verifydel
:crazy
echo [40;31mBro Your Deleting The Terminal File.
echo Are You Okay?
goto del
:errordel
echo [40;31mThis File Cannot Be Deleted!
echo Please Try Another File
goto del
:verifydel
del %del%
echo Deleted %del%.
goto commandline

:writetxt
set file=
set /p file=[40;37m[.txt]Enter File Name, Existing or NonExisting:[40;33m
if %file%==searchhistory.txt goto erroredit2
if %file%==searchhistory goto erroredit2
goto write
:erroredit2
echo [40;31mThis File Has Been Restricted From Being Edited!
echo Please Try Another File!
echo.
goto writetxt
echo.
:write
set text=
set /p text=[40;37mEnter Text To Populate The File With:[40;33m
:: writing the data to chosen file
echo %date% - %time%>> %file%.txt
echo %text%>> %file%.txt
echo ㅤ>> %file%.txt
echo.
echo Writing. . . 
timeout 3 >nul
echo Written!
timeout 2>nul
goto commandline

:erasetxt
set file=
set /p file=[40;37mEnter The File Name To Erase:[40;33m
if exist %file%.txt goto filecheck
if not exist %file%.txt goto notexists
:notexists
echo [40;31m%file%.txt does not exist.
echo [40;31mPlease Try A Diffrent File!
goto erasetxt
:filecheck
if %file%==searchhistory.txt goto erroredit
if %file%==searchhistory goto erroredit
goto verify
:erroredit
echo [40;31mThis File Has Been Restricted From Being Edited!
echo Please Try Another File!
echo.
goto erasetxt
:: erase the data
:verify
set verify=
set /p verify=[40;37mAll Data Will Be Erased, Continue?(y/n):[40;33m
if %verify%==y goto erasecont
if %verify%==Y goto erasecont
if %verify%==n goto abortederase
if %verify%==N goto abortederase
:erasecont
echo ㅤ> %file%.txt
echo Erasing File. . . 
timeout 3 >nul
echo Erased!
goto commandline
:abortederase
echo Erase Aborted of File [%file%]
echo No Data Erased
goto commandline

:startinstall
echo Apps Available To Install
echo 1) NetTool
echo 2) PingTool
echo 3) IP Tool
echo Custom Install
set install=
set /p install=:[40;33m
if %install%==1 goto nettool
if %install%==2 goto pingtool
if %install%==3 goto iptool
if %install%==custom goto custominstall
goto commandline


:custominstall
echo.
set packagelink=
set /p packagelink=[40;37mEnter The Download Package Link([40;31mSupported Download Links[40;37m)[40;33m:
start https://%packagelink%
echo.
echo [40;37mTo Install, Extract The Package File (.txt, .bat, .exe etc) To The Terminal Folder
echo To Start The Program, You Can Use "Start" Command.
echo Or Edit A Start Link in EDE, Or NotePad. ([40;31mNot Recomended[40;37m)
goto commandline

:: Token Tool (Discarded)

::tokentoolinstall
::if exist tokentool.bat echo [40;31mTokenTool Has Already Been Downloaded!
::goto commandline
::if not exist tokentool.bat goto tkdwnld
:::tkdwnld
::echo @echo off> tokentool.bat
::echo mode 40,20>> tokentool.bat
::echo title Token Tool [User: %username%]>> tokentool.bat
::echo :A>> tokentool.bat
::echo echo %random% %random% %random% %random%>> tokentool.bat
::echo goto A>> tokentool.bat
::echo echo Tokens Created!>> tokentool.bat
::echo pause>nul>> tokentool.bat
::echo [40;32mToken Tool Installed!
::goto commandline
:nettool
start https://github.com/vyberr/nettool/archive/refs/heads/main.zip
echo [40;37m--instructions--
echo extract the file into the same folder as the terminal
echo goto to terminal and start the application
echo using [nettool.bat] or [nettool]
goto commandline

:pingtool
start https://github.com/vyberr/pingtool/archive/refs/heads/main.zip
echo [40;37m--instructions--
echo extract the file into the same folder as the terminal
echo goto to terminal and start the application
echo using [start pingtool.bat] or [pingtool]
goto commandline

:iptool
start https://github.com/vyberr/iptool/archive/refs/heads/main.zip
echo [40;37m--instructions--
echo extract the file into the same folder as the terminal
echo goto to terminal and start the application
echo using "start iptool.bat" or "iptool"
goto commandline

:launchip
if exist iptool.bat goto ipcont
if not exist iptool.bat goto iperror
:iperror
echo [40;37mIPTool Has Not Been Installed
echo Use "install" command to download
goto commandline
:ipcont
start iptool.bat
goto commandline
:launchnet
if exist nettool.bat goto netcont
if not exist nettool.bat goto neterror
:neterror
echo [40;37mNetTool Has Not Been Installed
echo Use "install" command to download
goto commandline
:netcont
start nettool.bat
goto commandline
:launchping
if exist pingtool.bat goto pingcont
if not exist pingtool.bat goto pingerror
:pingerror
echo [40;37mPingTool Has Not Been Installed
echo Use "install" command to download
goto commandline
:pingcont
start pingtool.bat
goto commandline

:allfiles
dir
goto commandline

:secret
echo [40;37mWait What...
echo.
echo thanks for freeing me from this terminal!
echo.
echo I Will Grant You 1 Wish
set secretwish=
set /p secretwish= Enter Your Wish!:[40;33m
echo.
echo Whoops, We Ran Into An Error Processing: %secretwish%
goto commandline

:forceclearsh
echo Last Erase %date% %time%> searchhistory.txt
echo ------------------------------------>> searchhistory.txt
echo [40;31mcleared!
goto commandline

:get
echo [40;37mCheck Downloaded Packets
set get=
set /p get=:[40;33m
if %get%==iptool goto check
if %get%==pingtool goto check
:check
if exist %get% echo [40;37m[%get%] Status [[40;32mAvailable[40;37m]
if not exist %get% echo [40;37m[%get%] Status [[40;31mNot Available[40;37m]
goto commandline

:harvest
echo [40;37mHarvest %computername%'s Information
echo.
echo [40;37m1) Save Harvest File
echo [40;37m2) Saved Harvest Files
echo [40;37m3) Export Harvest Files
echo 4) Open Exported Harvest Files
set choice=
set /p choice=:[40;33m
if %choice%==1 goto sendharvest
if %choice%==2 goto launchharvest
if %choice%==3 goto saveharvest
if %choice%==4 start C:\Users\%username% && goto warn
goto commandline
:warn
echo [40;31mPlease Make A Seperate Folder For These Files. 
echo They Can Get Mixed With System Files.
goto commandline
:sendharvest
if not exist harvest1.txt set filename=harvest1.txt && goto startharvest
if exist harvest1.txt goto harvest2
:harvest2
if not exist harvest2.txt set filename=harvest2.txt && goto startharvest
if exist harvest2.txt goto harvest3
:harvest3
if not exist harvest3.txt set filename=harvest3.txt && goto startharvest
if exist harvest3.txt goto slotsfull
:slotsfull
echo [40;31mAll Harvest Slots Are Full.
echo [40;31mPlease Export Or Delete Old Harvest Files.
goto commandline
goto startharvest
:startharvest
echo Date Harvested: %date%>>%filename%
echo Time Harvested: %time%>>%filename%
echo ┌┬┐┌─┐┬  ┬┬┌─┐┌─┐  ┌┬┐┌─┐┌┬┐┌─┐┬┬  ┌─┐>>%filename%
echo  ││├┤ └┐┌┘││  ├┤    ││├┤  │ ├─┤││  └─┐>>%filename%
echo ─┴┘└─┘ └┘ ┴└─┘└─┘  ─┴┘└─┘ ┴ ┴ ┴┴┴─┘└─┘>>%filename%
echo - - - - - - - - - - - - - - - - - - - ->>%filename%
echo %computername%>>%filename%
echo %username%>>%filename%
echo ┬┌─┐  ┌┬┐┌─┐┌┬┐┌─┐┬┬  ┌─┐>>%filename% 
echo │├─┘   ││├┤  │ ├─┤││  └─┐>>%filename%
echo ┴┴    ─┴┘└─┘ ┴ ┴ ┴┴┴─┘└─┘>>%filename%
echo - - - - - - - - - - - - - - - - ->>%filename% 
ipconfig /release>>%filename%
timeout 5 >nul
echo [40;32m%computername%'s Device Info Hase Been Harvested!
echo Saved as %filename% And Can Be Accessed From Saved Harvest Files!
goto commandline
:launchharvest
echo [40;32mOpen Collected Harvest Files.[40;37m
echo.
if exist harvest1.txt echo 1) Harvest File 1 = [[40;31mFilled[40;37m]
if not exist harvest1.txt echo 1) Harvest File 1 = [[40;32mEmpty[40;37m]
if exist harvest2.txt echo 2) Harvest File 2 = [[40;31mFilled[40;37m]
if not exist harvest2.txt echo 2) Harvest File 2 = [[40;32mEmpty[40;37m]
if exist harvest3.txt echo 3) Harvest File 3 = [[40;31mFilled[40;37m]
if not exist harvest3.txt echo 3) Harvest File 3 = [[40;32mEmpty[40;37m]
echo.
set choice=
set /p choice=[40;37mChoose Which Data To Access:[40;33m:
if %choice%==1 start harvest1.txt && goto commandline
if %choice%==2 start harvest2.txt && goto commandline
if %choice%==3 start harvest3.txt && goto commandline
goto commandline
:saveharvest
echo [40;31mChoose A Harvest File To Export[40;37m
echo.
if exist harvest1.txt echo 1) Harvest File 1 = [[40;31mFilled[40;37m]
if not exist harvest1.txt echo 1) Harvest File 1 = [[40;32mEmpty[40;37m]
if exist harvest2.txt echo 2) Harvest File 2 = [[40;31mFilled[40;37m]
if not exist harvest2.txt echo 2) Harvest File 2 = [[40;32mEmpty[40;37m]
if exist harvest3.txt echo 3) Harvest File 3 = [[40;31mFilled[40;37m]
if not exist harvest3.txt echo 3) Harvest File 3 = [[40;32mEmpty[40;37m]
set choice=
set /p choice=:[40;33m
if %choice%==1 goto exportharvest1
if %choice%==2 goto exportharvest2
if %choice%==3 goto exportharvest3
goto commandline
:existerrortxt
echo [40;31mFile Does Not Exist.
echo Please Use Harvest Command First.
goto commandline
:exportharvest1
if exist harvest1.txt goto movetxt1
if not exist harvest1.txt goto existerrortxt
:movetxt1
move harvest1.txt C:\Users\%username%
echo [40;32m Exported Harvest File #3 into "C:\Users\%username%"
goto commandline
:exportharvest2
if exist harvest2.txt goto movetxt2
if not exist harvest2.txt goto existerrortxt
:movetxt2
move harvest2.txt C:\Users\%username%
echo [40;32m Exported Harvest File #3 into "C:\Users\%username%"
goto commandline
:exportharvest3
if exist harvest3.txt goto movetxt3
if not exist harvest3.txt goto existerrortxt
:movetxt3
move harvest3.txt C:\Users\%username%
echo [40;32m Exported Harvest File #3 into "C:\Users\%username%"
goto commandline

:changetoken
set token#=
set /p token#=[40;31mWarning, Changing Token May Change Your Custom Configuration!:[40;33m
echo [40;32mToken Changed To %token#%
goto commandline

:updatechecker
echo Last Update: %updatedate%
echo Update Version: %version%
if exist updatefile.bat echo [[40;31mOutdated[40;31m]
if not exist updatefile.bat echo [[40;32mLatest Version[40;32m]
echo.
set lookforupdates=
set /p lookforupdates=[40;37mLook For Updates?(y/n):
if %lookforupdates%==y goto check
if %lookforupdates%==Y goto check
if %lookforupdates%==n goto checkagain
if %lookforupdates%==N goto checkagain
goto checkagain
:checkagain
if not exist updatefile.bat goto commandline
if exist updatefile.bat echo [40;31mUpdates Are Available, Are You Sure You Want To Exit?
set verifyy=
set /p verifyy=[40;37m
if %verifyy%==y goto commandline
if %verifyy%==Y goto commandline
if %verifyy%==n goto check
if %verifyy%==N goto check
:check
if exist updatefile.bat goto startupdate
if not exist updatefile.bat echo [40;32mNo Updates Found, You Are On The Latest Version Of Nimbus!
goto commandline
:startupdate
rem look for update packets, and compare files, if any thing has changed, update it in the main file
rem configs have been changed please reconfigurize your terminal, and changible vars!
echo [40;32mUpDates Have Occured, You Will Be Started In The New Terminal.
echo [40;37mAll of Your Configurations Have Been Reset.
echo Please Set Up Your Configuration and Changible Vars.
echo Thanks For Understanding!
echo [40;31mOld Terminal Deleting in 30 Seconds!
timeout 30 >nul
goto commandline

:read
set read=
set /p read=Select A Motive For The Terminal To Read

:changecolor
set colorchoice=
set /p colorchoice=[40;37mChoose A Color:[40;33m
if %colorchoice%==red set titlecolor=[40;31m
if %colorchoice%==yellow set titlecolor=[40;33m
if %colorchoice%==green set titlecolor=[40;32m
if %colorchoice%==blue set titlecolor=[40;34m
if %colorchoice%==purple set titlecolor=[40;35m
if %colorchoice%==cyan set titlecolor=[40;36m
if %colorchoice%==white set titlecolor=[40;37m
goto main

:colorops
echo RED
echo YELLOW 
echo GREEN
echo BLUE 
echo PURPLE
echo CYAN
echo white
goto commandline



:updatestates
echo UpDate Manager
echo.a
echo Version       │Date Released │Date Applied   
echo --------------│--------------│--------------
echo [40;32mInitial       │2022-05-01    │2022-05-01
echo [40;32mSecondary     │2022-05-05    │2022-05-05
echo [40;33mTertiary      │2022-05-23    │PENDING
echo [40;31mNOT RELEASED  │              │
goto commandline

:getinfo
cls
echo.
echo.
echo [40;34m                  .-~*~--,.   .-.
echo [40;34m          .-~-. ./OOOOOOOOO\.'OOO`9~~-.                     [40;37mOS:      NIMBUS_OS
echo [40;34m        .`OOOOOO.OOM.OLSONOOOOO@@OOOOOO\                    [40;37mDev:     vyberr. (Saaim J.)
echo [40;34m       /OOOO@@@O[40;33m╔╗╔╦╔╦╗╔╗ ╦ ╦╔═╗[40;34m@@@@OOOO`.                  [40;37mCreated: 2022-05-03
echo [40;34m        OO@@@WWW[40;33m║║║║║║║╠╩╗║ ║╚═╗[40;34m@@@@@@OOOO).                [40;37mUser:    %username%
echo [40;34m     .-'OO@@@@WW[40;33m╝╚╝╩╩ ╩╚═╝╚═╝╚═╝[40;34mW@@@@@OOOOOO}               [40;37mDesk:    %computername%
echo [40;34m    /OOO@@O@@@@W@@@@@OOWWWWWOOWOO@@@OOO@@@OO                [40;37mVers:    %version% 
echo [40;34m   lOOO@@@OO@@@WWWWWWW\OWWWO\WWWOOOOOO@@@O.'                [40;37mRoot:    github.com/vyberr
echo [40;34m    \OOO@@@OOO@@@@@@OOW[40;33m\     \[40;34mWWWW@@@@@@@O'.                [40;37mToken:   [%token#%]  
echo [40;34m     `,OO@@@OOOOOOOOOOWW[40;33m\     \[40;34mWWWW@@@@@@OOO)               [40;37mOG Token:[6501] 
echo [40;34m      \,O@@@@@OOOOOOWWWWW[40;33m\     \[40;34mWW@@@@@OOOO.'               [40;37mSVR:     [-NA-]
echo [40;34m        `~c~8~@@@@WWW@@W[40;33m\       \[40;34mWOO \UO-~'                 [40;37mOS#:     [0001]
echo [40;34m             (OWWWWWW@/\W[40;33m\    ___\[40;34mWO)
echo [40;34m               `~-~''     [40;33m\   \[40;34mWW=*'
echo [40;33m                         __\   \
echo [40;33m                         \      \
echo [40;33m                          \    __\
echo [40;33m                           \  \
echo [40;33m                            \ \
echo [40;33m                             \ \
echo [40;33m                              \\
echo [40;33m                               \\
echo [40;33m                                \
echo [40;33m                                 \
echo.
echo.
pause>nul
goto main
:svinfo
if not exist infoexport.txt echo [40;32mCreated New Info Exported File
if exist infoexport.txt echo [40;32mUpdated Info Export File
echo LAST EXPORTED %date% - %time%> infoexport.txt
echo - - - - - - - - - - - - - - - - - - ->> infoexport.txt
echo ┬┌┐┌┌─┐┌─┐  ┌─┐┌─┐┬  ┬┌─┐>> infoexport.txt
echo ││││├┤ │ │  └─┐├─┤└┐┌┘├┤>> infoexport.txt
echo ┴┘└┘└  └─┘  └─┘┴ ┴ └┘ └─┘>> infoexport.txt
echo - - - - - - - - - - - - - - - - - - ->> infoexport.txt
echo OS:      NIMBUS_OS>> infoexport.txt
echo Dev:     vyberr. (Saaim J.)>> infoexport.txt
echo Created: 2022-05-03>> infoexport.txt
echo User:    %username%>> infoexport.txt
echo Desk:    %computername%>> infoexport.txt
echo Vers:    %version%>> infoexport.txt 
echo Root:    github.com/vyberr>> infoexport.txt
echo Token:   [6592]>> infoexport.txt
echo OS#:     [0001]>> infoexport.txt
goto commandline