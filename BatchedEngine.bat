@echo Off
:: Wish you luck exploring this mess!- Opticulex
:START
REM ------------------------------------------------------------------------------------------------------------------------------ Very Start of Program
mode 100,30
set version=v1.1.0
set bevlversion=1.1.0
set build=040317
set latoken=[err]
set starttoken=%random%%random%%random%
set uid=[err]
set OFFLINE=false
set noexit=0
set dev=0
set ts=0
if "%firstuse1%"=="1" goto skipSTARTfirstuse
set firstuse=0
set firstuse1=0
:skipSTARTfirstuse
title BatchedEngine - %version%
color 1f
if "%firstuse1%"=="1" goto skipSTARTlaunch
echo LAUNCHING BATCHEDENGINE AT %TIME% %DATE% under CMD.exe
echo FILE: Running version %version%; BEVL version %bevlversion%; build %build%
echo SECURITY: local access Token %latoken%; Start Token %starttoken%
echo Batched Engine by AuthorFilms Studios 2017.
echo.
ping 1.1.1.1 -n 1 -w 1000 >nul
:skipSTARTlaunch
echo [%time%] [STARTUP] [LAUNCH] Setting file mode; title; color; variable; etc
echo [%time%] [STARTUP] [LAUNCH] Checking install
echo [%time%] [STARTUP] [LAUNCH] Checking troubleshooter settings..
if "%tsskip%"=="1" goto skipTS
if exist "C:\BatchedEngine\Temp\troubleshooterReinstall.bat" goto TROUBLESHOOTER
if exist "C:\BatchedEngine\Temp\troubleshooter.bat" goto TROUBLESHOOTER1
:skipTS
if exist "C:\BatchedEngine" goto STARTUP
if not exist "C:\BatchedEngine" goto INSTALL
:INSTALL
REM ------------------------------------------------------------------------------------------------------------------------------ Installation of Program
set firstuse=1
echo [%time%] [INSTALL] Changing color to "0f"
color 1f
echo [%time%] [INSTALL] Setting DIR to "C:"
Cd C:\
echo [%time%] [INSTALL] [ACCESS] Running file permission check..
echo [%time%] [INSTALL] [ACCESS] Making folder "BatchedEngine"
md BatchedEngine
echo [%time%] [INSTALL] [ACCESS] Checking folder "BatchedEngine" exists
if not exist BatchedEngine goto ERR_INSTALL_1
echo [%time%] [INSTALL] [ACCESS] PASSED ACCESS CHECK!
echo [%time%] [INSTALL] [ACCESS] RESUMING INSTALLATION!
echo [%time%] [INSTALL] Setting DIR to "C:\BatchedEngine"
cd C:\BatchedEngine\
echo [%time%] [INSTALL] Making folder "C:\BatchedEngine\BatchedEngine"
md BatchedEngine
echo [%time%] [INSTALL] Setting DIR to "C:\BatchedEngine\BatchedEngine"
cd C:\BatchedEngine\BatchedEngine
echo [%time%] [INSTALL] Setting DIR to "C:\BatchedEngine"
cd C:\BatchedEngine\
echo [%time%] [INSTALL] Checking if "C:\BatchedEngine\BatchedEngine" exists.
echo [%time%] [INSTALL] Verifiying install...
if not exist C:\BatchedEngine\BatchedEngine goto INSTALL_FAIL
echo [%time%] [INSTALL] Program is installable. Resuming install.
echo [%time%] [INSTALL] Making folder "Plugins"
md Plugins
echo [%time%] [INSTALL] Making folder "Resources"
md Resources
echo [%time%] [INSTALL] Making folder "Projects"
md Projects
echo [%time%] [INSTALL] Making folder "Assets"
md Assets
echo [%time%] [INSTALL] Setting DIR to "C:\BatchedEngine\BatchedEngine\"
cd C:\BatchedEngine\BatchedEngine\
echo [%time%] [INSTALL] Making folder "messages"
md messages
echo [%time%] [INSTALL] Setting DIR to "C:\BatchedEngine\BatchedEngine\messages\"
cd C:\BatchedEngine\BatchedEngine\messages\
echo [%time%] [INSTALL] Making file "ERR_MAKE_FILE.vbs"
echo x= msgbox ("Error making file! (Code: ERR_MAKE_FILE)",16+0,"Batched Engine - Error") > ERR_MAKE_FILE.vbs
echo [%time%] [INSTALL] Making file "ERR_READ_FILE.vbs"
echo x= msgbox ("Error reading file! (Code: ERR_READ_FILE)",16+0,"Batched Engine - Error") > ERR_READ_FILE.vbs
echo [%time%] [INSTALL] Making file "ERR_TOKEN_1.vbs"
echo x= msgbox ("Invalid access token number. (Code: ERR_TOKEN_1)",16+0,"Batched Engine - Fatal Error") > ERR_TOKEN_1.vbs
echo [%time%] [INSTALL] Making file "ERR_TOKEN_2.vbs"
echo x= msgbox ("Invalid activation. Please activate your software. (Code: ERR_TOKEN_2)",16+0,"Batched Engine - Fatal Error") > ERR_TOKEN_2.vbs
echo [%time%] [INSTALL] Making file "ERR_PROG_1.vbs"
echo x= msgbox ("Fatal Error in program! Force Shutdown. (Code: ERR_PROG_1)",16+0,"Batched Engine - Program Error") > ERR_PROG_1.vbs
echo [%time%] [INSTALL] Making file "MAKE_CMD.vbs"
echo x =msgbox ("Command created!",64+0,"Batched Engine") > MAKE_CMD.vbs
echo [%time%] [INSTALL] Making file "ERR_FATAL_LOAD.vbs"
echo x =msgbox ("Fatal Error in program! Force shutdown. (Code: ERR_FATAL_LOAD)",16+0,"Batched Engine - Fatal load error") > ERR_FATAL_LOAD.vbs
echo [%time%] [INSTALL] Setting DIR "C:\BatchedEngine"
cd C:/BatchedEngine
echo [%time%] [INSTALL] Making folder "Presets"
md Presets
echo [%time%] [INSTALL] Making folder "Temp"
md Temp
echo [%time%] [INSTALL] Making folder "Recovery"
md Recovery
echo [%time%] [INSTALL] Making folder "Prefs"
md Prefs
echo [%time%] [INSTALL] Setting DIR "C:\BatchedEngine\Resources"
cd C:\BatchedEngine\Resources
echo set be_version=%version% > version.bat
echo [%time%] [INSTALL] Making file "FirstUse.txt"
echo [FIRST USE: %date%_%time%] > FirstUse.txt
echo [%time%] [INSTALL] Making file "Installed.vbs"
echo x= msgbox ("BatchedEngine installed at %date% %time%.",64+0,"BatchedEngine Installer") > Installed.vbs
echo [%time%] [INSTALL] Setting DIR "C:\BatchedEngine"
cd C:\BatchedEngine\
echo [%time%] [INSTALL] Making folder "Log"
md Log
echo [%time%] [INSTALL] Setting DIR "C:\BatchedEngine\Log"
cd C:\BatchedEngine\Log
echo [%time%] [INSTALL] Making file "INPUTDATA.log"
echo -------------------------------------------------------------------------------- > C:\BatchedEngine\Log\INPUTDATA.log
echo Program Installed at %DATE% %TIME% by %username% >> C:\BatchedEngine\Log\INPUTDATA.log
echo Batched Engine Version %version%, BEVL Version %bevlversion% >> C:\BatchedEngine\Log\INPUTDATA.log
echo -------------------------------------------------------------------------------- >> C:\BatchedEngine\Log\INPUTDATA.log
echo. >> C:\BatchedEngine\Log\INPUTDATA.log
echo [%time%] [INSTALL] Setting DIR "C:\BatchedEngine"
cd C:\BatchedEngine\
echo [%time%] [INSTALL] Making file "batchedEngineBackground.bat"
echo @echo off > batchedEngineBackground.bat
echo title BE Background Runner >> batchedEngineBackground.bat
echo mode 70,20 >> batchedEngineBackground.bat
echo color f0 >> batchedEngineBackground.bat
echo :LOOP >> batchedEngineBackground.bat
echo cls >> batchedEngineBackground.bat
echo if exist C:\BatchedEngine\Prefs\Backgroundrunner.bat call C:\BatchedEngine\Prefs\Backgroundrunner.bat >> batchedEngineBackground.bat
echo echo _BE_%version% >> batchedEngineBackground.bat
echo echo .BGRunner >> batchedEngineBackground.bat
echo goto LOOP >> batchedEngineBackground.bat
echo [%time%] [INSTALL] Setting DIR "C:\BatchedEngine\Resources"
cd C:\BatchedEngine\Resources


echo [%time%] [INSTALL] Making file "networkCheck.vbs"
echo [%time%] [INSTALL] ! WARNING! The following part of the installation creates the downloaders.
echo [%time%] [INSTALL] ! WARNING! These are used to download files neocities.org.
echo [%time%] [INSTALL] ! WARNING! The files are ONLY for network checking and autoupdates.
echo [%time%] [INSTALL] ! WARNING! YOUR ANTIVIRUS MAY GET TRIGGERED BY THIS.
echo dim xHttp: Set xHttp = createobject("Microsoft.XMLHTTP") > networkCheck.vbs
echo dim bStrm: Set bStrm = createobject("Adodb.Stream") >> networkCheck.vbs
echo xHttp.Open "GET", "https://batchedengine.neocities.org/files/BEnetcheck.txt", False >> networkCheck.vbs
echo xHttp.Send >> networkCheck.vbs
echo. >> networkCheck.vbs
echo with bStrm >> networkCheck.vbs
echo     .type = 1 '//binary >> networkCheck.vbs
echo     .open >> networkCheck.vbs
echo     .write xHttp.responseBody >> networkCheck.vbs
echo     .savetofile "C:\BatchedEngine\Temp\testFile.txt", 2 '//overwrite >> networkCheck.vbs
echo end with >> networkCheck.vbs


echo [%time%] [INSTALL] Making file "networkUpdate.vbs"
echo dim xHttp: Set xHttp = createobject("Microsoft.XMLHTTP") > networkUpdate.vbs
echo dim bStrm: Set bStrm = createobject("Adodb.Stream") >> networkUpdate.vbs
echo xHttp.Open "GET", "https://batchedengine.neocities.org/files/BEautoupdate.txt", False >> networkUpdate.vbs
echo xHttp.Send >> networkUpdate.vbs
echo. >> networkUpdate.vbs
echo with bStrm >> networkUpdate.vbs
echo     .type = 1 '//binary >> networkUpdate.vbs
echo     .open >> networkUpdate.vbs
echo     .write xHttp.responseBody >> networkUpdate.vbs
echo     .savetofile "C:\BatchedEngine\Temp\networkUpdate.bat", 2 '//overwrite >> networkUpdate.vbs
echo end with >> networkUpdate.vbs


echo [%time%] [INSTALL] Making file "tokenCheck.vbs"
echo dim xHttp: Set xHttp = createobject("Microsoft.XMLHTTP") > tokenCheck.vbs
echo dim bStrm: Set bStrm = createobject("Adodb.Stream") >> tokenCheck.vbs
echo xHttp.Open "GET", "https://batchedengine.neocities.org/files/BEtoken.txt", False >> tokenCheck.vbs
echo xHttp.Send >> tokenCheck.vbs
echo. >> tokenCheck.vbs
echo with bStrm >> tokenCheck.vbs
echo     .type = 1 '//binary >> tokenCheck.vbs
echo     .open >> tokenCheck.vbs
echo     .write xHttp.responseBody >> tokenCheck.vbs
echo     .savetofile "C:\BatchedEngine\Temp\token.bat", 2 '//overwrite >> tokenCheck.vbs
echo end with >> tokenCheck.vbs

echo [%time%] [INSTALL] Making file "DLahk.vbs"
echo dim xHttp: Set xHttp = createobject("Microsoft.XMLHTTP") > DLahk.vbs
echo dim bStrm: Set bStrm = createobject("Adodb.Stream") >> DLahk.vbs
echo xHttp.Open "GET", "https://autohotkey.com/download/ahk-install.exe", False >> DLahk.vbs
echo xHttp.Send >> DLahk.vbs
echo. >> DLahk.vbs
echo with bStrm >> DLahk.vbs
echo     .type = 1 '//binary >> DLahk.vbs
echo     .open >> DLahk.vbs
echo     .write xHttp.responseBody >> DLahk.vbs
echo     .savetofile "C:\BatchedEngine\Resources\ahk-install.exe", 2 '//overwrite >> DLahk.vbs
echo end with >> DLahk.vbs

echo [%time%] [INSTALL] DOWNLOADING ahk..
echo [%time%] [INSTALL] Please wait..
start DLahk.vbs
set ahktry=0
:ahkdownload
set /a ahktry+=1
if %ahktry% GTR 3000 goto ERR_INSTALL_2
if not exist "ahk-install.exe" goto ahkdownload
echo [%time%] [INSTALL] DOWNLOADED ahk with %ahktry% tries..
start ahk-install.exe


echo [%time%] [INSTALL] (DISABLED) Making file "nodejs.vbs"
echo [%time%] [INSTALL] Setting DIR "C:\BatchedEngine\Prefs"
cd C:\BatchedEngine\Prefs
echo [%time%] [INSTALL] DISABLED Making file "NOSTARTUPERROR.becf"
echo [NOSTARTUPERROR=TRUE] > NOSTARTUPERROR.becf
echo [%time%] [INSTALL] Setting DIR "C:\BatchedEngine\Prefs"
cd C:\BatchedEngine\Prefs
echo [%time%] [INSTALL] Checking file "author.bat" exists
echo [%time%] [INSTALL] Setting VAR "USER_AUTHOR" to value "%username%"
if not exist author.bat set USER_AUTHOR=%username%
echo [%time%] [INSTALL] Setting DIR "C:\BatchedEngine"
cd C:\BatchedEngine\

:INSTALL_VERIFIY
REM ------------------------------------------------------------------------------------------------------------------------------ Verifiying Installation
echo # Checking program install... >> C:\BatchedEngine\Log\INPUTDATA.log
echo # %DATE% %TIME% >> C:\BatchedEngine\Log\INPUTDATA.log
echo. >> C:\BatchedEngine\Log\INPUTDATA.log
echo [%time%] [INSTALL] Reverifiying Install...
if exist C:\BatchedEngine goto INSTALL_VERIFIED1
:INSTALL_FAIL
REM ------------------------------------------------------------------------------------------------------------------------------  Install Failure
echo # Error 0xINS_1: Program unsucessfully installed. >> C:\BatchedEngine\Log\INPUTDATA.log
echo # %DATE% %TIME% >> C:\BatchedEngine\Log\INPUTDATA.log
echo. >> C:\BatchedEngine\Log\INPUTDATA.log
echo [%time%] [INSTALL] Program install failed. Uh oh..
color 1f
cls
echo ��������������������������������� = BatchedEngine Installation = �����������������������������������
echo.
echo BatchedEngine was not successfully instslled on your system. Please try again.
echo Please make sure you are running BatchedEngine with administrator priveleges.
echo If this error persists, please contact help and support.
echo.
echo Error code: (0xINS_1)
echo.
echo Would you like to retry (Y/N)?
set /p RETRY_INSTALL=:
if %RETRY_INSTALL% == Y goto INSTALL
if %RETRY_INSTALL% == y goto INSTALL
if %RETRY_INSTALL% == N exit
if %RETRY_INSTALL% == n exit
:INSTALL_VERIFIED1
REM ------------------------------------------------------------------------------------------------------------------------------ Successful Install
REM ------------------------------------------------------------------------------------------------------------------------------ Launching Page
color 1f
cd C:\BatchedEngine\Resources
echo # Install successful! >> C:\BatchedEngine\Log\INPUTDATA.log
echo # %DATE% %TIME% >> C:\BatchedEngine\Log\INPUTDATA.log
echo. >> C:\BatchedEngine\Log\INPUTDATA.log
echo # Product Activation successful. >> C:\BatchedEngine\Log\INPUTDATA.log
echo # Product Key: %PKEY% >> C:\BatchedEngine\Log\INPUTDATA.log
echo # %DATE% %TIME% >> C:\BatchedEngine\Log\INPUTDATA.log
echo. >> C:\BatchedEngine\Log\INPUTDATA.log
goto BOOT

:STARTUP
REM ------------------------------------------------------------------------------------------------------------------------------ Startup of program 1/6
cd C:\BatchedEngine\Resources
echo [%time%] [STARTUP] [LAUNCH] Setting DIR to "C:\BatchedEngine\Resources\"
cd C:\BatchedEngine\Resources\
echo [%time%] [STARTUP] [LAUNCH] Checking if PKeyNotif.vbs exists
if exist PKeyNotif.vbs goto ACTIVATE_3
echo [%time%] [STARTUP] [LAUNCH] Checking if CRASH.bat (crash log) exists
echo [%time%] [STARTUP] [LAUNCH] Setting DIR to "C:\BatchedEngine\Prefs\"
cd C:/BatchedEngine/Prefs/
if exist CRASH.bat goto CRASH_REPORTER

:BOOT
REM ------------------------------------------------------------------------------------------------------------------------------ Startup of program 2/6
echo -------------------------------------------------------------------------------- >> C:\BatchedEngine\Log\INPUTDATA.log
echo Program Started at %DATE% %TIME% >> C:\BatchedEngine\Log\INPUTDATA.log
echo -------------------------------------------------------------------------------- >> C:\BatchedEngine\Log\INPUTDATA.log
echo [%time%] [STARTUP] [LAUNCH] Checking program shutdown..
echo. >> C:\BatchedEngine\Log\INPUTDATA.log
cd C:\BatchedEngine\Prefs
echo [%time%] [STARTUP] [LAUNCH] Checking if live1.txt exists
if exist live1.txt goto TEMP_ERROR

:MAKE_TEMP
REM ------------------------------------------------------------------------------------------------------------------------------ Make Temporary Files
echo [%time%] [STARTUP] [LAUNCH] Creating temporary files
echo # Setting up log.ini and live1/live2.txt startup files... >> C:\BatchedEngine\Log\INPUTDATA.log
echo # %DATE% %TIME% >> C:\BatchedEngine\Log\INPUTDATA.log
echo. >> C:\BatchedEngine\Log\INPUTDATA.log
cd C:\BatchedEngine\Prefs
echo [%time%] [STARTUP] [LAUNCH] Resetting log.ini, live1/2.txt files for status detect
echo [%time%] [STARTUP] [LAUNCH] Delete "log.ini"
if exist log.ini del log.ini
echo [%time%] [STARTUP] [LAUNCH] Delete "live2.txt"
if exist live2.txt del live2.txt
echo [%time%] [STARTUP] [LAUNCH] Delete "live1.txt"
if exist live1.txt del live1.txt
echo [%time%] [STARTUP] [LAUNCH] Making file "log.ini"
echo %Date%_%Username% > log.ini
echo [%time%] [STARTUP] [LAUNCH] Making file "live1.txt"
echo [ProgramIsLive=true] > live1.txt
goto LOAD_STARTUP



:CRASH_REPORTER
REM ------------------------------------------------------------------------------------------------------------------------------ Crash Reporter
echo # ! Entering crashreporter to fix and report a crash. >> C:\BatchedEngine\Log\INPUTDATA.log
echo # %DATE% %TIME% >> C:\BatchedEngine\Log\INPUTDATA.log
echo. >> C:\BatchedEngine\Log\INPUTDATA.log
cls
cd C:/BatchedEngine/Prefs/
call CRASH.bat
cd C:/BatchedEngine/
echo �������������������������������������� = STARTUP WARNING = �����������������������������������������
echo The program crashed on last use. Crash Type: %ERRTYPE% Occurence: %ERRDATE%
echo Message: %ERRMSG%
echo Status of Error: %ERRSTATUS%
if %ERRTYPE%==ERR_PROG_1 goto CRASH_ERR_PROG_1
if %ERRTYPE%==ERR_PROG_2 goto CRASH_ERR_PROG_2
if %ERRTYPE%==ERR_PROG_3 goto CRASH_ERR_PROG_3
if %ERRTYPE%==ERR_PROG_4 goto CRASH_ERR_PROG_4
if %ERRTYPE%==ERR_PROG_5 goto CRASH_ERR_PROG_5
goto CRASH_ERR_UNKNOWN
:CRASH_ERR_PROG_1
echo.
echo Press ANY KEY to fix and log the error and continue startup:
pause>nul
cd C:/BatchedEngine/Prefs/
del CRASH.bat
cd C:/BatchedEngine/
goto START
:CRASH_ERR_PROG_2
echo.
echo Program unable to start. Please reinstall BatchedEngine.
cd C:/BatchedEngine/
:FOREVER_LOOP
pause>nul
goto FOREVER_LOOP
:CRASH_ERR_PROG_3
echo.
echo Press ANY KEY to fix and log the error and continue startup:
pause>nul
cd C:/BatchedEngine/Prefs/
del CRASH.bat
cd C:/BatchedEngine/
goto START
:CRASH_ERR_PROG_4
echo.
echo Press ANY KEY to fix and log the error and continue startup:
pause>nul
cd C:/BatchedEngine/Prefs/
del CRASH.bat
cd C:/BatchedEngine/
goto START
:CRASH_ERR_PROG_5
echo.
echo Press ANY KEY to fix and log the error and continue startup:
pause>nul
cd C:/BatchedEngine/Prefs/
del CRASH.bat
cd C:/BatchedEngine/
goto START
:CRASH_ERR_UNKNOWN
echo.
echo Unknown error type detected. Press ANY KEY to resume normal startup:
pause>nul
cd C:/BatchedEngine/Prefs/
del CRASH.bat
cd C:/BatchedEngine/
goto START




:TEMP_ERROR
REM ------------------------------------------------------------------------------------------------------------------------------ Startup Error (Incorrect shutdown)
echo # Program did not shut down correctly. Displaying startup warning. >> C:\BatchedEngine\Log\INPUTDATA.log
echo # %DATE% %TIME% >> C:\BatchedEngine\Log\INPUTDATA.log
echo. >> C:\BatchedEngine\Log\INPUTDATA.log
cd C:\BatchedEngine\Prefs
if exist NOSTARTUPERROR.becf goto MAKE_TEMP
if "%firstuse%"=="1" goto MAKE_TEMP
cd C:\BatchedEngine\Resources
cls
echo �������������������������������������� = STARTUP WARNING = �����������������������������������������
echo The program did not shut down correctly. Please make sure you do not press the exit button to shut 
echo the program down but instead use the exit command (X) on a menu that contains it. You can disable 
echo this message buy going to Settings ^> Startup Settings ^> Toggle Startup Errors.
echo.
echo Press ANY KEY to continue startup:
pause>Nul
goto MAKE_TEMP
















:MAIN_MENU
REM ------------------------------------------------------------------------------------------------------------------------------ Main Menu
echo # Location: MAIN_MENU (Main Menu) >> C:\BatchedEngine\Log\INPUTDATA.log
echo # %DATE% %TIME% >> C:\BatchedEngine\Log\INPUTDATA.log
echo. >> C:\BatchedEngine\Log\INPUTDATA.log
cls
color 1f
set MAINMENU=NULL
mode 100,30
echo ���������������������������������� = BatchedEngine Main Menu = �������������������������������������
echo                               -=  N         New Project         =-
echo                               -=  O        Open Project         =-
echo                               -=  C          BE Cloud           =-
echo                               -=  S          Settings           =-
echo                               -=  H      Help and Support       =-
echo                               -=  A            About            =-
echo                               -=  X     Exit BatchedEngine      =-
echo                               ------------------------------------
echo                               -=         Select an Option:      =-
echo.
set /p MAINMENU=^>
if "%MAINMENU%"=="N" goto NEW
if "%MAINMENU%"=="n" goto NEW
if "%MAINMENU%"=="O" goto OPEN
if "%MAINMENU%"=="o" goto OPEN
if "%MAINMENU%"=="C" goto CLOUD
if "%MAINMENU%"=="c" goto CLOUD
if "%MAINMENU%"=="S" goto SETTINGS
if "%MAINMENU%"=="s" goto SETTINGS
if "%MAINMENU%"=="H" goto HELP
if "%MAINMENU%"=="h" goto HELP
if "%MAINMENU%"=="A" goto ABOUT
if "%MAINMENU%"=="a" goto ABOUT
if "%MAINMENU%"=="X" goto EXIT
if "%MAINMENU%"=="x" goto EXIT
goto MAIN_MENU
















:NEW
REM ------------------------------------------------------------------------------------------------------------------------------ New File Menu
echo # Location: NEW (New File) >> C:\BatchedEngine\Log\INPUTDATA.log
echo # %DATE% %TIME% >> C:\BatchedEngine\Log\INPUTDATA.log
echo. >> C:\BatchedEngine\Log\INPUTDATA.log
cls
set NEWFILE=NULL
mode 100,30
:!NEW
echo # Location: !NEW (Setting name of New file) >> C:\BatchedEngine\Log\INPUTDATA.log
echo # %DATE% %TIME% >> C:\BatchedEngine\Log\INPUTDATA.log
echo. >> C:\BatchedEngine\Log\INPUTDATA.log
cls
echo ���������������������������������� = BatchedEngine New File = ��������������������������������������
echo.
echo                               -=      Please name your file     =-
echo                               -=  B           Cancel            =-
echo                               ------------------------------------
echo                               -=         Select an Option:      =-
echo.
set /p !NEWFILE=^>
if "%!NEWFILE%"=="B" goto MAIN_MENU
if "%!NEWFILE%"=="b" goto MAIN_MENU
:NEW2
echo # Location: NEW2 (Making New File) >> C:\BatchedEngine\Log\INPUTDATA.log
echo # %DATE% %TIME% >> C:\BatchedEngine\Log\INPUTDATA.log
echo. >> C:\BatchedEngine\Log\INPUTDATA.log
echo Please wait...
echo [BatchedEngine Editor %version%]
echo [%time%] Logging creation in "INPUTDATA.log"
echo # Creating new file... >> C:\BatchedEngine\Log\INPUTDATA.log
echo # Setting up config.bat file >> C:\BatchedEngine\Log\INPUTDATA.log
echo # %DATE% %TIME% >> C:\BatchedEngine\Log\INPUTDATA.log
echo. >> C:\BatchedEngine\Log\INPUTDATA.log
echo [%time%] Setting DIR to "C:\BatchedEngine\Projects"
cd C:\BatchedEngine\Projects
echo [%time%] Checking for previous versions of file
echo [%time%] Cancelling creation if "C:\BatchedEngine\Projects\%!NEWFILE%" exists
if exist "C:\BatchedEngine\Projects\%!NEWFILE%" goto NEW3
echo [%time%] Creating Project folders and config.bat...
md %!NEWFILE% & cd "C:\BatchedEngine\Projects\%!NEWFILE%"
md data & cd C:\BatchedEngine\Projects\%!NEWFILE%\data
echo BATCHED ENGINE CONFIG FILE FOR PROJECT %!NEWFILE%> config.bat
echo DO NOT modifiy anything here as it will break the file! >> config.bat
echo. >> config.bat
echo set FILE_CREATIONDATE=%date% %time%>> config.bat
echo set FILE_CREATIONTOKEN=%random%%random%%random%>> config.bat
echo set FILE_LIVENAME=%!NEWFILE%>> config.bat
echo set FILE_AUTHOR=%USER_AUTHOR%>> config.bat
echo set FILE_AUTHOR1=%username%>> config.bat
echo set FILE_VERSION=%version%>> config.bat
echo set FILE_BEVL_VERSION=%bevlversion%>> config.bat
echo set FILE_BUILD=%build%>> config.bat
echo set LINES=1 >> lines.bat
call config.bat
echo ^:: Database for: %!NEWFILE%; TD/%FILE_CREATIONDATE%; Auth/%USER_AUTHOR% > db.bat
echo ^:: Token%FILE_CREATIONTOKEN%; BE%version%; BEVL%bevlversion% >> db.bat
REM FILE_STATUS / 0=created never opened, 1=opened or used, 3=disabled, 4=other
echo set FILE_STATUS=0 > status.bat
if not exist config.bat goto NEWFAIL
echo [%time%] Creation sucessful, returning...
goto OPEN
:NEWFAIL
echo # Location: NEWFAIL (Creation of New File failed) >> C:\BatchedEngine\Log\INPUTDATA.log
echo # %DATE% %TIME% >> C:\BatchedEngine\Log\INPUTDATA.log
echo. >> C:\BatchedEngine\Log\INPUTDATA.log
echo ���������������������������������� = BatchedEngine New File = ��������������������������������������
echo Error: "%!NEWFILE%" was not created. Could not make files.
echo Error: Make sure you are running this program as an Administrator.
echo.
echo                               -=      Please name your file     =-
echo                               -=  B           Cancel            =-
echo                               ------------------------------------
echo                               -=         Select an Option:      =-
echo.
set /p !NEWFILE=^>
if "%!NEWFILE%"=="B" goto MAIN_MENU
if "%!NEWFILE%"=="b" goto MAIN_MENU
goto NEW2

:NEW3
echo # Location: NEW3 (New File "name" already exists) >> C:\BatchedEngine\Log\INPUTDATA.log
echo # %DATE% %TIME% >> C:\BatchedEngine\Log\INPUTDATA.log
echo. >> C:\BatchedEngine\Log\INPUTDATA.log
cls
echo ���������������������������������� = BatchedEngine New File = ��������������������������������������
echo Error: "%!NEWFILE%" alreay exists. Please Choose a different name or delete the old one.
echo.
echo                               -=      Please name your file     =-
echo                               -=  B           Cancel            =-
echo                               ------------------------------------
echo                               -=         Select an Option:      =-
echo.
set /p !NEWFILE=^>
if "%!NEWFILE%"=="B" goto MAIN_MENU
if "%!NEWFILE%"=="b" goto MAIN_MENU
goto NEW2

:OPEN_VIEW
echo # Location: OPEN_VIEW (Viewing DIR of projects) >> C:\BatchedEngine\Log\INPUTDATA.log
echo # %DATE% %TIME% >> C:\BatchedEngine\Log\INPUTDATA.log
echo. >> C:\BatchedEngine\Log\INPUTDATA.log
cls
echo ��������������������������������� = BatchedEngine Open File = ��������������������������������������
echo.
dir C:\BatchedEngine\Projects\
echo.
echo Press any key to return...
pause>nul

:OPEN
echo # Location: OPEN (Redir to OPEN_FILE) >> C:\BatchedEngine\Log\INPUTDATA.log
echo # %DATE% %TIME% >> C:\BatchedEngine\Log\INPUTDATA.log
echo. >> C:\BatchedEngine\Log\INPUTDATA.log
REM ------------------------------------------------------------------------------------------------------------------------------ Open File Menu
:OPEN_FILE
REM ------------------------------------------------------------------------------------------------------------------------------ Open File
echo # Location: OPEN_FILE (Open File) >> C:\BatchedEngine\Log\INPUTDATA.log
echo # %DATE% %TIME% >> C:\BatchedEngine\Log\INPUTDATA.log
echo. >> C:\BatchedEngine\Log\INPUTDATA.log
set OPNFILE=NULL
cls
echo ��������������������������������� = BatchedEngine Open File = ��������������������������������������
echo.
echo                               -=       Name of file to open     =-
echo                               -=  V       View projects         =-
echo                               -=  B           Cancel            =-
echo                               ------------------------------------
echo                               -=         Select an Option:      =-
echo.
set /p OPNFILE=^>
if "%OPNFILE%"=="B" goto MAIN_MENU
if "%OPNFILE%"=="b" goto MAIN_MENU
if "%OPNFILE%"=="V" goto OPEN_VIEW
if "%OPNFILE%"=="v" goto OPEN_VIEW
if "%OPNFILE%"=="NULL" goto OPEN_FILE
:OPENAFTER
echo # Location: OPENAFTER (Redir to !OPEN_FILE) >> C:\BatchedEngine\Log\INPUTDATA.log
echo # %DATE% %TIME% >> C:\BatchedEngine\Log\INPUTDATA.log
echo. >> C:\BatchedEngine\Log\INPUTDATA.log
:!OPEN_FILE
echo # Location: !OPEN_FILE (Searching for openable file "%OPNFILE%") >> C:\BatchedEngine\Log\INPUTDATA.log
echo # %DATE% %TIME% >> C:\BatchedEngine\Log\INPUTDATA.log
echo. >> C:\BatchedEngine\Log\INPUTDATA.log
echo [%time%] Searching for file..
cd C:\BatchedEngine\Projects
if exist "C:\BatchedEngine\Projects\%OPNFILE%" set OPNFILEe=1
if not exist "C:\BatchedEngine\Projects\%OPNFILE%" set OPNFILEe=0
echo [%time%] File %OPNFILE% found!
if "%OPNFILEe%"=="1" goto OPEN_FILE1
if "%OPNFILEe%"=="0" goto OPEN_FILEfail
:OPEN_FILE1
echo # Location: OPEN_FILE1 (Found "%OPNFILE%") >> C:\BatchedEngine\Log\INPUTDATA.log
echo # %DATE% %TIME% >> C:\BatchedEngine\Log\INPUTDATA.log
echo. >> C:\BatchedEngine\Log\INPUTDATA.log
echo [%time%] File found. Opening...
cd "C:\BatchedEngine\Projects\%OPNFILE%\data"
echo [%time%] Calling config.bat
call config.bat
:EDITOR
echo # Location: EDITOR (VERY start of opening the editor) >> C:\BatchedEngine\Log\INPUTDATA.log
echo # %DATE% %TIME% >> C:\BatchedEngine\Log\INPUTDATA.log
echo. >> C:\BatchedEngine\Log\INPUTDATA.log
echo [%time%] Converting config.bat variables into EDIT variables
echo [%time%] CONVERT OPNFILE to EDITname (1/4)
set EDITname=%OPNFILE%
echo [%time%] CONVERT FILE_AUTHOR to EDITauth (2/4)
set EDITauth=%FILE_AUTHOR%
echo [%time%] CONVERT FILE_CREATIONTOKEN to EDITtokn (3/4)
set EDITtokn=%FILE_CREATIONTOKEN%
echo [%time%] CONVERT FILE_CREATIONDATE to EDITtime (4/4)
set EDITtime=%FILE_CREATIONDATE%
if "%EDITauth%"=="" set EDITauth=null
echo [%time%] Verifiying file and config exists..
echo [%time%] CHECK config.bat (1/4)
if not exist "C:\BatchedEngine\Projects\%OPNFILE%\data\config.bat" goto OPEN_FILEfail1
echo [%time%] CHECK db.bat (2/4)
if not exist "C:\BatchedEngine\Projects\%OPNFILE%\data\db.bat" goto OPEN_FILEfail1
echo [%time%] CHECK status.bat (3/4)
if not exist "C:\BatchedEngine\Projects\%OPNFILE%\data\status.bat" goto OPEN_FILEfail1
echo [%time%] CHECK noaccess.bat (4/4)
echo [%time%] Checking file status (noaccess.bat exists)
if exist "C:\BatchedEngine\Projects\%OPNFILE%\data\noaccess.bat" goto OPEN_FILEfail2
:EDIT_RECOVERY
echo # Location: EDIT_RECOVERY (Preparing "%OPNFILE%" recovery files) >> C:\BatchedEngine\Log\INPUTDATA.log
echo # %DATE% %TIME% >> C:\BatchedEngine\Log\INPUTDATA.log
echo. >> C:\BatchedEngine\Log\INPUTDATA.log
cd C:\BatchedEngine\Recovery
echo [%time%] BRUTALLY KILLING file recoverData.bat
if exist recoveryData.bat del recoveryData.bat
echo [%time%] BRUTALLY KILLING file recoverLocation.bat
if exist recoveyLocation.bat del recoveyLocation.bat
echo [%time%] Creating recovery file...
echo :: Recovery data updated %time% on %date% > recoveryData.bat
echo set RECLocation=C:\BatchedEngine\Projects\%OPNFILE%\ >> recoveryData.bat
echo set RECConfigLocation=C:\BatchedEngine\Projects\%OPNFILE%\data >> recoveryData.bat
echo set RECProjectName=%OPNFILE%>> recoveryData.bat
echo set RECProjectAuth=%EDITauth%>> recoveryData.bat
echo set RECProjectToken=%EDITtokn%>> recoveryData.bat
echo set RECProjectTime=%EDITtime%>> recoveryData.bat
echo set RECLoc=EDIT_RECOVERY>> recoveryLocation.bat
:AHK_CHECK
cls
echo [WARINING] AutoHotkey is not installed. Please install and press ANY KEY to try again.
:AHK_CHECK1
if exist "C:\Program Files\AutoHotkey" goto EDIT_MENU
pause>nul
goto AHK_CHECK1
:EDIT_MENU
@Echo off
echo # Location: EDIT_MENU (Main Menu of Editor) >> C:\BatchedEngine\Log\INPUTDATA.log
echo # %DATE% %TIME% >> C:\BatchedEngine\Log\INPUTDATA.log
echo. >> C:\BatchedEngine\Log\INPUTDATA.log
set EDITOR=NULL
cls
echo ���������������������������������� = BatchedEngine Editor = ����������������������������������������
echo Batched Engine %version% - Editor - Menu - %EDITname%
echo.
echo               -=            SETTINGS        ^|             EDITING             =-
echo               -=       A File Properties    ^|     1 Add a function            =-
echo               -=       B View Code          ^|     2 Add a template            =-
echo               -=       C View Files         ^|     3 Remove function           =-
echo               -=       D View help          ^|     4 Insert an external file   =-
echo               -=       E Settings           ^|     5 Debug                     =-
echo               -=       F Plugin Manager     ^|     6 Test run                  =-
echo               -=       G Delete Project     ^|     7 Compile Settings          =-
echo               -=       X Exit Editor        ^|     8 Compile project           =-
echo               ------------------------------------------------------------------
echo               -=                      Select an Option:                       =-
echo.
set /p EDITOR=^>
if "%EDITOR%"=="A" goto EDIT_A
if "%EDITOR%"=="a" goto EDIT_A
if "%EDITOR%"=="B" goto EDIT_B
if "%EDITOR%"=="b" goto EDIT_B
if "%EDITOR%"=="C" goto EDIT_C
if "%EDITOR%"=="c" goto EDIT_C
if "%EDITOR%"=="D" goto EDIT_D
if "%EDITOR%"=="d" goto EDIT_D
if "%EDITOR%"=="E" goto EDIT_E
if "%EDITOR%"=="e" goto EDIT_E
if "%EDITOR%"=="F" goto EDIT_F
if "%EDITOR%"=="f" goto EDIT_F
if "%EDITOR%"=="G" goto EDIT_G
if "%EDITOR%"=="g" goto EDIT_G
if "%EDITOR%"=="X" goto EDIT_X
if "%EDITOR%"=="x" goto EDIT_X
if "%EDITOR%"=="1" goto EDIT_1
if "%EDITOR%"=="2" goto EDIT_2
if "%EDITOR%"=="3" goto EDIT_3
if "%EDITOR%"=="4" goto EDIT_4
if "%EDITOR%"=="5" goto EDIT_5
if "%EDITOR%"=="6" goto EDIT_6
if "%EDITOR%"=="7" goto EDIT_7
if "%EDITOR%"=="8" goto EDIT_8
goto EDIT_MENU
pause

:EDIT_A
cls
echo ���������������������������������� = BatchedEngine Editor = ����������������������������������������
echo Batched Engine %version% - Editor - File Properties - %EDITname%
echo.
echo This file is running Batched Engine %FILE_VERSION% (%FILE_BUILD%; %FILE_BEVL_VERSION%)
echo.
echo File Name: "%EDITname%" by %EDITauth%
echo Created: %EDITtime%
echo File Token: %EDITtokn%
echo.
echo Press any key to return to the menu...
pause>nul
goto EDIT_MENU

:EDIT_B
cls
echo ���������������������������������� = BatchedEngine Editor = ����������������������������������������
echo Batched Engine %version% - Editor - View Code - %EDITname%
echo.
echo Press any key to return to the menu...
pause>nul
goto EDIT_MENU


:EDIT_C
cls
echo ���������������������������������� = BatchedEngine Editor = ����������������������������������������
echo Batched Engine %version% - Editor - View Files - %EDITname%
echo.
echo Press any key to return to the menu...
pause>nul
goto EDIT_MENU


:EDIT_D
cls
echo ���������������������������������� = BatchedEngine Editor = ����������������������������������������
echo Batched Engine %version% - Editor - Help - %EDITname%
echo.
echo Press any key to return to the menu...
pause>nul
goto EDIT_MENU



:EDIT_E
cls
echo ���������������������������������� = BatchedEngine Editor = ����������������������������������������
echo Batched Engine %version% - Editor - Settings - %EDITname%
echo.
echo Press any key to return to the menu...
pause>nul
goto EDIT_MENU


:EDIT_F
cls
echo ���������������������������������� = BatchedEngine Editor = ����������������������������������������
echo Batched Engine %version% - Editor - Plugin Manager - %EDITname%
echo.
echo Press any key to return to the menu...
pause>nul
goto EDIT_MENU


:EDIT_G
cls
echo ���������������������������������� = BatchedEngine Editor = ����������������������������������������
echo Batched Engine %version% - Editor - Delete Project - %EDITname%
echo.
echo Deleting the file makes it inaccessible but does not delete it. To delete it, go to the files
echo location and manually delete it from there. Do not treat this as an archiving feature!
set EDIT_G=NULL
echo.
echo                               -=  1        Disable File         =-
echo                               -=  B      Back to Main Menu      =-
echo                               ------------------------------------
echo                               -=         Select an Option:      =-
echo.
set /p EDIT_G=^>
if "%EDIT_G%"=="1" goto DISABLE_FILE
if "%EDIT_G%"=="2" goto DELETE_FILE
if "%EDIT_G%"=="B" goto EDIT_MENU
if "%EDIT_G%"=="b" goto EDIT_MENU
goto EDIT_G

:DISABLE_FILE
cls
set deletefile=null
echo ���������������������������������� = BatchedEngine Editor = ����������������������������������������
cd "C:\BatchedEngine\Projects\%OPNFILE%\data\"
echo Press ENTER to PERMANENTLY disable the file.
echo Press "X" and ENTER to return WITHOUT touching the file.
set /p deletefile=^>
if "%deletefile%"=="X" goto EDIT_MENU
if "%deletefile%"=="x" goto EDIT_MENU
echo.
echo Status=disabled > noaccess.bat
echo File disabled. Press any key to return.
pause>nul
goto MAIN_MENU

:EDIT_X
cls
echo ���������������������������������� = BatchedEngine Editor = ����������������������������������������
echo Batched Engine %version% - Editor - Menu - %EDITname%
cd C:\BatchedEngine\Recovery
del recoveryData.bat
del recoveryLocation.bat
goto MAIN_MENU

:EDIT_1
cls
set EDIT_1=NULL
cls
echo ���������������������������������� = BatchedEngine Editor = ����������������������������������������
echo Batched Engine %version% - Editor - Add Function - %EDITname%
echo.
echo               -=       A Add a Shell        ^|     1                           =-
echo               -=       B Add Click command  ^|     2                           =-
echo               -=       C Add Type command   ^|     3                           =-
echo               -=       D Add Image Search   ^|     4                           =-
echo               -=       E Add Pixel Search   ^|     5                           =-
echo               -=       F Add Delays/Timers  ^|     6                           =-
echo               -=       G Add Other function ^|     7                           =-
echo               -=       H Add CMD functions  ^|     8                           =-
echo               -=       I Add custom AHK's   ^|     X Go back to edit menu      =-
echo               ------------------------------------------------------------------
echo               -=                      Select an Option:                       =-
echo.
set /p EDIT_1=^>
if "%EDIT_1%"=="A" goto EDIT_1_A
if "%EDIT_1%"=="a" goto EDIT_1_A
if "%EDIT_1%"=="B" goto EDIT_1_B
if "%EDIT_1%"=="b" goto EDIT_1_B
if "%EDIT_1%"=="C" goto EDIT_1_C
if "%EDIT_1%"=="c" goto EDIT_1_C
if "%EDIT_1%"=="D" goto EDIT_1_D
if "%EDIT_1%"=="d" goto EDIT_1_D
if "%EDIT_1%"=="E" goto EDIT_1_E
if "%EDIT_1%"=="e" goto EDIT_1_E
if "%EDIT_1%"=="F" goto EDIT_1_F
if "%EDIT_1%"=="f" goto EDIT_1_F
if "%EDIT_1%"=="G" goto EDIT_1_G
if "%EDIT_1%"=="g" goto EDIT_1_G
if "%EDIT_1%"=="H" goto EDIT_1_H
if "%EDIT_1%"=="h" goto EDIT_1_H
if "%EDIT_1%"=="I" goto EDIT_1_I
if "%EDIT_1%"=="i" goto EDIT_1_I
if "%EDIT_1%"=="1" goto EDIT_1_1
if "%EDIT_1%"=="2" goto EDIT_1_2
if "%EDIT_1%"=="3" goto EDIT_1
if "%EDIT_1%"=="4" goto EDIT_1
if "%EDIT_1%"=="5" goto EDIT_1
if "%EDIT_1%"=="6" goto EDIT_1
if "%EDIT_1%"=="7" goto EDIT_1
if "%EDIT_1%"=="8" goto EDIT_1
if "%EDIT_1%"=="X" goto EDIT_MENU
if "%EDIT_1%"=="x" goto EDIT_MENU
goto EDIT_1
cd C:\BatchedEngine\Projects\%EDITname%

:EDIT_1_A
cls
echo ���������������������������������� = BatchedEngine Editor = ����������������������������������������
echo Batched Engine %version% - Editor - Add Shell - %EDITname%
echo.
echo The shell is the main part of the project that runs and controls everything else. The project can't 
echo function without a shell and there can only be one shell. The shell is a .BAT file. This function
echo requires the BEVL compiler "%FILE_BEVL_VERSION%".
echo. 
echo Press any key to return to the menu...
pause>nul
goto EDIT_1

:EDIT_1_B
cls
echo ���������������������������������� = BatchedEngine Editor = ����������������������������������������
echo Batched Engine %version% - Editor - Add Click - %EDITname%
echo.
echo A click command is an AutoHotkey command that can perform a physical click or scroll on the
echo selected part of the screen (using coordinates).
echo.
echo Press any key to return to the menu...
pause>nul
goto EDIT_1

:EDIT_1_C
cls
echo ���������������������������������� = BatchedEngine Editor = ����������������������������������������
echo Batched Engine %version% - Editor - Add Type - %EDITname%
echo.
echo The Type command is an AutoHotkey command that allows you to type letters, words, hotkeys and
echo other keyboard related stuff atomatically.
echo.
echo Press any key to return to the menu...
pause>nul
goto EDIT_1

:EDIT_1_D
cls
echo ���������������������������������� = BatchedEngine Editor = ����������������������������������������
echo Batched Engine %version% - Editor - Add Image Search - %EDITname%
echo.
echo The Image Search function is a complex AutoHotkey command that can search for images within a
echo selected coordinate range. The search images should be in the .BMP quality (24bit).
echo
echo.
echo Press any key to return to the menu...
pause>nul
goto EDIT_1

:EDIT_1_E
cls
echo ���������������������������������� = BatchedEngine Editor = ����������������������������������������
echo Batched Engine %version% - Editor - Add Pixel Search - %EDITname%
echo.
echo The Pixel Search function is a complex AutoHotkey command that, similar to the "Image Search"
echo command, can search for single pixel colors in a selected coordinate range. This command has
echo plenty of extra features and can sometimes be a lighter alternative to Image Search.
echo.
echo Press any key to return to the menu...
pause>nul
goto EDIT_1

:EDIT_1_F
cls
echo ���������������������������������� = BatchedEngine Editor = ����������������������������������������
echo Batched Engine %version% - Editor - Add Delays/Timers - %EDITname%
echo.
echo AutoHotkey delays and timers allow you to delay the program for a set amount of time to wait, for
echo example, the creation of a file or a webpage or menu to load.
echo.
echo Press any key to return to the menu...
pause>nul
goto EDIT_1

:EDIT_1_G
if not "%EDIT1GLINES%"=="0" goto EDIT_1_G_1
set EDIT1G=NULL
set EDIT1GLINES=0
cls
echo ���������������������������������� = BatchedEngine Editor = ����������������������������������������
echo Batched Engine %version% - Editor - Add Other Function - %EDITname%
echo.
echo Manually add another Auto Hotkey command that is not in the quick-selection menu.
echo.
echo Press any key to return to the menu...
pause>nul
goto EDIT_1




:EDIT_1_H
cls
echo ���������������������������������� = BatchedEngine Editor = ����������������������������������������
echo Batched Engine %version% - Editor - Add CMD fucntion - %EDITname%
echo.
echo Add other command prompt functions to the shell of the program.
echo.
echo Press any key to return to the menu...
pause>nul
goto EDIT_1

:EDIT_1_I
cls
echo ���������������������������������� = BatchedEngine Editor = ����������������������������������������
echo Batched Engine %version% - Editor - Add other AHK script - %EDITname%
echo.
echo Import a ready-made Auto Hotkey script.
echo.
echo Press any key to return to the menu...
pause>nul
goto EDIT_1






:EDIT_2
cls
echo ���������������������������������� = BatchedEngine Editor = ����������������������������������������
echo Batched Engine %version% - Editor - Menu - %EDITname%


:EDIT_3
cls
echo ���������������������������������� = BatchedEngine Editor = ����������������������������������������
echo Batched Engine %version% - Editor - Menu - %EDITname%


:EDIT_4
cls
echo ���������������������������������� = BatchedEngine Editor = ����������������������������������������
echo Batched Engine %version% - Editor - Menu - %EDITname%


:EDIT_5
cls
echo ���������������������������������� = BatchedEngine Editor = ����������������������������������������
echo Batched Engine %version% - Editor - Menu - %EDITname%


:EDIT_6
cls
echo ���������������������������������� = BatchedEngine Editor = ����������������������������������������
echo Batched Engine %version% - Editor - Menu - %EDITname%


:EDIT_7
cls
echo ���������������������������������� = BatchedEngine Editor = ����������������������������������������
echo Batched Engine %version% - Editor - Menu - %EDITname%


:EDIT_8
cls
echo ���������������������������������� = BatchedEngine Editor = ����������������������������������������
echo Batched Engine %version% - Editor - Menu - %EDITname%




:OPEN_FILEfail
cls
echo ��������������������������������� = BatchedEngine Open File = ��������������������������������������
echo Error: "%OPNFILE%" does not exist or was deleted.
set OPNFILE=NULL
echo.
echo                               -=       Name of file to open     =-
echo                               -=  V       View projects         =-
echo                               -=  B           Cancel            =-
echo                               ------------------------------------
echo                               -=         Select an Option:      =-
echo.
set /p OPNFILE=^>
if "%OPNFILE%"=="B" goto MAIN_MENU
if "%OPNFILE%"=="b" goto MAIN_MENU
if "%OPNFILE%"=="V" goto OPEN_VIEW
if "%OPNFILE%"=="v" goto OPEN_VIEW
if "%OPNFILE%"=="NULL" goto OPEN_FILE
goto OPENAFTER
:OPEN_FILEfail1
cls
echo ��������������������������������� = BatchedEngine Open File = ��������������������������������������
echo Error: "%OPNFILE%" is corrupted and could not be opened.
set OPNFILE=NULL
echo.
echo                               -=       Name of file to open     =-
echo                               -=  V       View projects         =-
echo                               -=  B           Cancel            =-
echo                               ------------------------------------
echo                               -=         Select an Option:      =-
echo.
set /p OPNFILE=^>
if "%OPNFILE%"=="B" goto MAIN_MENU
if "%OPNFILE%"=="b" goto MAIN_MENU
if "%OPNFILE%"=="V" goto OPEN_VIEW
if "%OPNFILE%"=="v" goto OPEN_VIEW
if "%OPNFILE%"=="NULL" goto OPEN_FILE
goto OPENAFTER
:OPEN_FILEfail2
goto OPEN_FILEfail















REM ======================================================================================================================================================= CLOUD
:CLOUD
REM ------------------------------------------------------------------------------------------------------------------------------ BatchedEngine Cloud
echo # Location: CLOUD (Under Construction) >> C:\BatchedEngine\Log\INPUTDATA.log
echo # %DATE% %TIME% >> C:\BatchedEngine\Log\INPUTDATA.log
echo. >> C:\BatchedEngine\Log\INPUTDATA.log
cls
color 0f
echo ����������������������������������� = BatchedEngine Cloud = ����������������������������������������
echo [%time%] [CLOUD] Cloud Service Initializing..
echo.
pause>nul
goto MAIN_MENU











REM ======================================================================================================================================================= SETTINGS
:SETTINGS
REM ------------------------------------------------------------------------------------------------------------------------------ Setting Menu
echo # Location: SETTINGS (Settings) >> C:\BatchedEngine\Log\INPUTDATA.log
echo # %DATE% %TIME% >> C:\BatchedEngine\Log\INPUTDATA.log
echo. >> C:\BatchedEngine\Log\INPUTDATA.log
cls
set SETT=NULL
mode 100,30
echo ����������������������������������� = BatchedEngine Settings = �������������������������������������
echo                               -=  S      Startup Settings       =-
echo                               -=  R     Recovery Settings       =-
echo                               -=  F       File Settings         =-
echo                               -=  G      General Settings       =-
echo                               -=  D     Developer Console       =-
echo                               -=  B      Back to Main Menu      =-
echo                               ------------------------------------
echo                               -=         Select an Option:      =-
echo.
set /p SETT=^>
if "%SETT%"=="S" goto SETT_STRT
if "%SETT%"=="s" goto SETT_STRT
if "%SETT%"=="R" goto SETT_REC
if "%SETT%"=="r" goto SETT_REC
if "%SETT%"=="F" goto SETT_FILE
if "%SETT%"=="f" goto SETT_FILE
if "%SETT%"=="G" goto SETT_GEN
if "%SETT%"=="g" goto SETT_GEN
if "%SETT%"=="B" goto MAIN_MENU
if "%SETT%"=="b" goto MAIN_MENU
if "%SETT%"=="D" goto DEVCONSOLE
if "%SETT%"=="d" goto DEVCONSOLE
goto SETTINGS
:SETT_STRT
REM ------------------------------------------------------------------------------------------------------------------------------ Startup Setting Menu
echo # Location: SETT_STRT (Startup Settings) >> C:\BatchedEngine\Log\INPUTDATA.log
echo # %DATE% %TIME% >> C:\BatchedEngine\Log\INPUTDATA.log
echo. >> C:\BatchedEngine\Log\INPUTDATA.log
cls
set STS=NULL
mode 100,30
echo ����������������������������������� = BatchedEngine Settings = �������������������������������������
echo                               -=  E    Toggle Startup Errors    =-
echo                               -=  I    Internet Connectivity    =-
echo                               -=  U     Toggle Auto Updater     =-
echo                               -=  A           Advanced          =-
echo                               -=  B    Back to Settings Menu    =-
echo                               ------------------------------------
echo                               -=         Select an Option:      =-
echo.
set /p STS=^>
if "%STS%"=="E" goto SETT_STRUP_ERR
if "%STS%"=="e" goto SETT_STRUP_ERR
if "%STS%"=="I" goto SETT_STRUP_INT
if "%STS%"=="i" goto SETT_STRUP_INT
if "%STS%"=="U" goto SETT_STRT_UPD
if "%STS%"=="u" goto SETT_STRT_UPD
if "%STS%"=="A" goto ERR_PROG_3
if "%STS%"=="a" goto ERR_PROG_3
if "%STS%"=="B" goto SETTINGS
if "%STS%"=="b" goto SETTINGS
goto SETT_STRT
REM ------------------------------------------------------------------------------------------------------------------------------ Startup Error Toggler
:SETT_STRUP_ERR
echo # Toggling startup errors. Checking current status. >> C:\BatchedEngine\Log\INPUTDATA.log
echo # %DATE% %TIME% >> C:\BatchedEngine\Log\INPUTDATA.log
echo. >> C:\BatchedEngine\Log\INPUTDATA.log
cd C:\BatchedEngine\Prefs
if exist NOSTARTUPERROR.becf goto ENA_STRUP_ERR
if not exist NOSTARTUPERROR.becf goto DIS_STRUP_ERR
:ENA_STRUP_ERR
echo # Enabling startup errors. >> C:\BatchedEngine\Log\INPUTDATA.log
echo # %DATE% %TIME% >> C:\BatchedEngine\Log\INPUTDATA.log
echo. >> C:\BatchedEngine\Log\INPUTDATA.log
cls
cd C:\BatchedEngine\Prefs
del NOSTARTUPERROR.becf
echo ����������������������������������� = BatchedEngine Settings = �������������������������������������
echo Enabled Startup errors. Press ANY KEY to return to the menu.
pause>nul
goto SETT_STRT
:DIS_STRUP_ERR
echo # Disabling startup errors. >> C:\BatchedEngine\Log\INPUTDATA.log
echo # %DATE% %TIME% >> C:\BatchedEngine\Log\INPUTDATA.log
echo. >> C:\BatchedEngine\Log\INPUTDATA.log
cls
cd C:\BatchedEngine\Prefs
echo [NOSTARTUPERROR=TRUE] > NOSTARTUPERROR.becf
echo ����������������������������������� = BatchedEngine Settings = �������������������������������������
echo Disabled Startup errors. Press ANY KEY to return to the menu.
pause>nul
goto SETT_STRT
:SETT_STRUP_INT
echo # Toggling internet connectivity. Checking current status. >> C:\BatchedEngine\Log\INPUTDATA.log
echo # %DATE% %TIME% >> C:\BatchedEngine\Log\INPUTDATA.log
echo. >> C:\BatchedEngine\Log\INPUTDATA.log
cd C:\BatchedEngine\Prefs
if exist NOINTERNET.becf goto ENA_STRUP_INT
if not exist NOINTERNET.becf goto DIS_STRUP_INT
:ENA_STRUP_INT
echo # Enabled Internet Connectivity. >> C:\BatchedEngine\Log\INPUTDATA.log
echo # %DATE% %TIME% >> C:\BatchedEngine\Log\INPUTDATA.log
echo. >> C:\BatchedEngine\Log\INPUTDATA.log
cls
cd C:\BatchedEngine\Prefs
del NOINTERNET.becf
echo ����������������������������������� = BatchedEngine Settings = �������������������������������������
echo Enabled Internet Connectivity. Press ANY KEY to return to the menu.
pause>nul
goto SETT_STRT
:DIS_STRUP_INT
echo # Disabled Internet Connectivity. >> C:\BatchedEngine\Log\INPUTDATA.log
echo # %DATE% %TIME% >> C:\BatchedEngine\Log\INPUTDATA.log
echo. >> C:\BatchedEngine\Log\INPUTDATA.log
cls
cd C:\BatchedEngine\Prefs
echo [NOINTERNET=TRUE] > NOINTERNET.becf
echo ����������������������������������� = BatchedEngine Settings = �������������������������������������
echo Disabled Internet Connectivity. Press ANY KEY to return to the menu.
pause>nul
goto SETT_STRT
REM ------------------------------------------------------------------------------------------------------------------------------ Auto Update Toggler
:SETT_STRT_UPD
echo # Toggling autoupdater. Checking current status. >> C:\BatchedEngine\Log\INPUTDATA.log
echo # %DATE% %TIME% >> C:\BatchedEngine\Log\INPUTDATA.log
echo. >> C:\BatchedEngine\Log\INPUTDATA.log
cd C:\BatchedEngine\Prefs
if exist AUTOUPDATE.becf goto ENA_STRT_UPD
if not exist AUTOUPDATE.becf goto DIS_STRT_UPD
:ENA_STRT_UPD
cls
echo # Enabling autoupdater. >> C:\BatchedEngine\Log\INPUTDATA.log
echo # %DATE% %TIME% >> C:\BatchedEngine\Log\INPUTDATA.log
echo. >> C:\BatchedEngine\Log\INPUTDATA.log
cd C:\BatchedEngine\Prefs
del AUTOUPDATE.becf
echo [AUTOUPDATE=FALSE] > AUTOUPDATE.becf
echo ����������������������������������� = BatchedEngine Settings = �������������������������������������
del AUTOUPDATE.becf
echo Enabled Auto Updater. Press ANY KEY to return to the menu.
pause>nul
goto SETT_STRT
:DIS_STRT_UPD
cls
echo # Disabling autoupdater. >> C:\BatchedEngine\Log\INPUTDATA.log
echo # %DATE% %TIME% >> C:\BatchedEngine\Log\INPUTDATA.log
echo. >> C:\BatchedEngine\Log\INPUTDATA.log
cd C:\BatchedEngine\Prefs
echo [AUTOUPDATE=FALSE] > AUTOUPDATE.becf
echo ����������������������������������� = BatchedEngine Settings = �������������������������������������
echo Disabled Auto Updater. Press ANY KEY to return to the menu.
pause>nul
goto SETT_STRT
:SETT_FILE
REM ------------------------------------------------------------------------------------------------------------------------------ File Settings
echo # Location: SETT_FILE (File Settings) >> C:\BatchedEngine\Log\INPUTDATA.log
echo # %DATE% %TIME% >> C:\BatchedEngine\Log\INPUTDATA.log
echo. >> C:\BatchedEngine\Log\INPUTDATA.log
cls
set STF=NULL
mode 100,30
echo ����������������������������������� = BatchedEngine Settings = �������������������������������������
echo                               -=  A       Set File Author       =-
echo                               -=  B    Back to Settings Menu    =-
echo                               ------------------------------------
echo                               -=         Select an Option:      =-
echo.
set /p STF=^>
if "%STF%"=="A" goto SETT_FILE_AUTH
if "%STF%"=="a" goto SETT_FILE_AUTH
if "%STF%"=="B" goto SETTINGS
if "%STF%"=="b" goto SETTINGS
goto SETT_FILE
:SETT_FILE_AUTH
echo # Location: SETT_FILE_AUTH (Setting file author) >> C:\BatchedEngine\Log\INPUTDATA.log
echo # %DATE% %TIME% >> C:\BatchedEngine\Log\INPUTDATA.log
echo. >> C:\BatchedEngine\Log\INPUTDATA.log
REM ------------------------------------------------------------------------------------------------------------------------------ Set File Author
cls
set STFA=NULL
mode 100,30
echo ����������������������������������� = BatchedEngine Settings = �������������������������������������
echo                               ------------------------------------
echo                               -=  Enter your desired name here: =-
echo.
set /p STFA=^>
set USER_AUTHOR=%STFA%
cd C:\BatchedEngine\Prefs
echo set USER_AUTHOR=%USER_AUTHOR% > author.bat
cd C:\BatchedEngine\
echo # FILE AUTHOR SET TO %STFA% >> C:\BatchedEngine\Log\INPUTDATA.log
echo # %DATE% %TIME% >> C:\BatchedEngine\Log\INPUTDATA.log
echo. >> C:\BatchedEngine\Log\INPUTDATA.log
goto SETT_FILE
:SETT_REC
REM ------------------------------------------------------------------------------------------------------------------------------ Recovery Settings
echo # Location: SETT_REC (Recovery Settings) >> C:\BatchedEngine\Log\INPUTDATA.log
echo # %DATE% %TIME% >> C:\BatchedEngine\Log\INPUTDATA.log
echo. >> C:\BatchedEngine\Log\INPUTDATA.log
cls
set STR=NULL
mode 100,30
echo ����������������������������������� = BatchedEngine Settings = �������������������������������������
echo                               -=  T  Toggle recovery/autosave   =-
echo                               -=  S  Set recovery preferences   =-
echo                               -=  B    Back to Settings Menu    =-
echo                               ------------------------------------
echo                               -=         Select an Option:      =-
echo.
set /p STR=^>
if "%STR%"=="T" goto SETT_REC_TOG
if "%STR%"=="t" goto SETT_REC_TOG
if "%STR%"=="S" goto SETT_REC_PREF
if "%STR%"=="s" goto SETT_REC_PREF
if "%STR%"=="B" goto SETTINGS
if "%STR%"=="b" goto SETTINGS
goto SETT_REC
:SETT_REC_TOG
REM ------------------------------------------------------------------------------------------------------------------------------ Recovery toggle
echo # Toggling recovery. Checking current status. >> C:\BatchedEngine\Log\INPUTDATA.log
echo # %DATE% %TIME% >> C:\BatchedEngine\Log\INPUTDATA.log
echo. >> C:\BatchedEngine\Log\INPUTDATA.log
cd C:\BatchedEngine\Prefs
if exist RECOVERY.becf goto ENA_REC
if not exist RECOVERY.becf goto DIS_REC
:ENA_REC
cls
echo # Enabling recovery. >> C:\BatchedEngine\Log\INPUTDATA.log
echo # %DATE% %TIME% >> C:\BatchedEngine\Log\INPUTDATA.log
echo. >> C:\BatchedEngine\Log\INPUTDATA.log
cd C:\BatchedEngine\Prefs
del RECOVERY.becf
echo ����������������������������������� = BatchedEngine Settings = �������������������������������������
echo Enabled Recovery and autosave. Press ANY KEY to return to the menu.
echo Press ANY KEY to return to the menu.
pause>nul
goto SETT_REC
:DIS_REC
cls
echo # Disabling recovery. >> C:\BatchedEngine\Log\INPUTDATA.log
echo # %DATE% %TIME% >> C:\BatchedEngine\Log\INPUTDATA.log
echo. >> C:\BatchedEngine\Log\INPUTDATA.log
cd C:\BatchedEngine\Prefs
echo [AUTOUPDATE=FALSE] > RECOVERY.becf
echo ����������������������������������� = BatchedEngine Settings = �������������������������������������
echo Disabled Recovery and autosave. Press ANY KEY to return to the menu.
pause>nul
goto SETT_REC
:SETT_REC_PREF
:SETT_GEN
REM ------------------------------------------------------------------------------------------------------------------------------ General Settings
echo # Location: SETT_GEN (General Settings) >> C:\BatchedEngine\Log\INPUTDATA.log
echo # %DATE% %TIME% >> C:\BatchedEngine\Log\INPUTDATA.log
echo. >> C:\BatchedEngine\Log\INPUTDATA.log
cls
set STG=NULL
mode 100,30
echo ����������������������������������� = BatchedEngine Settings = �������������������������������������
echo                               -=  S       Reset Settings        =-
echo                               -=  R     Reset BatchedEngine     =-
echo                               -=  L       Clear Log File        =-
echo                               -=  N     Run network checker     =-
echo                               -=  B    Back to Settings Menu    =-
echo                               ------------------------------------
echo                               -=         Select an Option:      =-
:STG
echo.
set /p STG=^>
if "%STG%"=="S" goto SETT_GEN_RSS
if "%STG%"=="s" goto SETT_GEN_RSS
if "%STG%"=="R" goto SETT_GEN_RSBE
if "%STG%"=="r" goto SETT_GEN_RSBE
if "%STG%"=="L" goto SETT_GEN_LOG
if "%STG%"=="l" goto SETT_GEN_LOG
if "%STG%"=="N" goto SETT_GEN_NET
if "%STG%"=="n" goto SETT_GEN_NET
if "%STG%"=="B" goto SETTINGS
if "%STG%"=="b" goto SETTINGS
goto SETT_GEN
cls
:SETT_GEN_NET
REM ------------------------------------------------------------------------------------------------------------------------------ General Settings ERROR
echo # Location: SETT_GEN (General Settings) >> C:\BatchedEngine\Log\INPUTDATA.log
echo # %DATE% %TIME% >> C:\BatchedEngine\Log\INPUTDATA.log
echo. >> C:\BatchedEngine\Log\INPUTDATA.log
cls
set STG=NULL
mode 100,30
echo ����������������������������������� = BatchedEngine Settings = �������������������������������������
echo Error: Network checker plugin can only be started at program launch.
echo                               -=  S       Reset Settings        =-
echo                               -=  R     Reset BatchedEngine     =-
echo                               -=  L       Clear Log File        =-
echo                               -=  N     Run network checker     =-
echo                               -=  B    Back to Settings Menu    =-
echo                               ------------------------------------
echo                               -=         Select an Option:      =-
goto STG
:SETT_GEN_RSS
REM ------------------------------------------------------------------------------------------------------------------------------ Reset Preferences
cd C:\BatchedEngine\Prefs
del NOSTARTUPERROR.becf
cls
echo # Reset all program preferences. >> C:\BatchedEngine\Log\INPUTDATA.log
echo # %DATE% %TIME% >> C:\BatchedEngine\Log\INPUTDATA.log
echo. >> C:\BatchedEngine\Log\INPUTDATA.log
echo ����������������������������������� = BatchedEngine Settings = �������������������������������������
echo Reset all Preferences. Press ANY KEY to return to the menu.
pause>nul
goto SETT_GEN
:SETT_GEN_RSBE
REM ------------------------------------------------------------------------------------------------------------------------------ Reset BatchedEngine
cls
echo ! Huh, what happened?! Was there an error? Oh no! >> C:\BatchedEngine\Log\INPUTDATA.log
echo # %DATE% %TIME% >> C:\BatchedEngine\Log\INPUTDATA.log
echo. >> C:\BatchedEngine\Log\INPUTDATA.log
echo Whoops!
pause
goto SETT_GEN
:SETT_GEN_LOG
REM ------------------------------------------------------------------------------------------------------------------------------ Delete Log Files
echo # Resetting log files! I'm a log file! Nooo! >> C:\BatchedEngine\Log\INPUTDATA.log
echo # %DATE% %TIME% >> C:\BatchedEngine\Log\INPUTDATA.log
echo. >> C:\BatchedEngine\Log\INPUTDATA.log
cls
cd C:\BatchedEngine\Log
del C:\BatchedEngine\Log\INPUTDATA.log
echo ����������������������������������� = BatchedEngine Settings = �������������������������������������
echo Reset log files. Press ANY KEY to restart BatchedEngine.
cd C:\BatchedEngine\Prefs
ping 1.1.1.1 -w 1000 -n 1 >nul
start /min LOGRESET.bat
echo 
goto SETTINGS











REM ======================================================================================================================================================= HELP AND ABOUT
:HELP
REM ------------------------------------------------------------------------------------------------------------------------------ Help & How To Use
echo # Location: HELP >> C:\BatchedEngine\Log\INPUTDATA.log
echo # %DATE% %TIME% >> C:\BatchedEngine\Log\INPUTDATA.log
echo. >> C:\BatchedEngine\Log\INPUTDATA.log
set HELPMENU=NULL
cls
echo ��������������������������������������� = BatchedEngine = ������������������������������������������
echo                               -=    Welcome to BatchedEngine!   =-
echo                               ------------------------------------
echo                               -=  1       Getting Started       =-
echo                               -=  2        Making a file        =-
echo                               -=  3    Working with your file   =-
echo                               -=  4       Setting up BEVL       =-
echo                               -=  5       Troubleshooting       =-
echo                               -=  6    Contact Help ^& Support   =-
echo                               -=  7       TIPS AND TRICKS       =-
echo                               -=  B    Back to Settings Menu    =-
echo                               ------------------------------------
echo                               -=         Select an Option:      =-
echo.
set /p HELPMENU=^>
if "%HELPMENU%"=="1" goto HELP_1
if "%HELPMENU%"=="2" goto HELP_2
if "%HELPMENU%"=="3" goto HELP_3
if "%HELPMENU%"=="4" goto HELP_4
if "%HELPMENU%"=="5" goto HELP_5
if "%HELPMENU%"=="6" goto HELP_6
if "%HELPMENU%"=="7" goto HELP_7
if "%HELPMENU%"=="B" goto MAIN_MENU
if "%HELPMENU%"=="b" goto MAIN_MENU
goto HELP
:ABOUT
REM ------------------------------------------------------------------------------------------------------------------------------ About BatchedEngine
echo # Location: ABOUT >> C:\BatchedEngine\Log\INPUTDATA.log
echo # %DATE% %TIME% >> C:\BatchedEngine\Log\INPUTDATA.log
echo. >> C:\BatchedEngine\Log\INPUTDATA.log
cls
echo ��������������������������������������� = BatchedEngine = ������������������������������������������
echo Batched Engine %version% created by PhySlax Media (Tech).
echo Copyright PhySlax Media 2016. All Rights Reserved.
echo.
echo BatchedEngine is a batch file compiler for creating automated tasks and scripts with ease
echo and without any coding knowledge or skills. It is constantly updated with many new features,
echo commands, scripts and templates making it easier than ever to create your own program/bot! 
echo.
echo Visit batchedengine.neocities.org for more information.
echo.
echo Press any key to return to the Main Menu...
pause>nul
goto MAIN_MENU











REM ======================================================================================================================================================= EXIT PROGRAM
:EXIT
REM ------------------------------------------------------------------------------------------------------------------------------ BatchedEngine Exit
echo # Program clearing up... >> C:\BatchedEngine\Log\INPUTDATA.log
echo # %DATE% %TIME% >> C:\BatchedEngine\Log\INPUTDATA.log
echo. >> C:\BatchedEngine\Log\INPUTDATA.log
echo [%time%] [EXIT] Setting DIR to "C:\BatchedEngine\Temp"
cd C:\BatchedEngine\Temp
echo [%time%] [EXIT] Checking if file "testFile.txt" exist and deleting
if exist testFile.txt del testFile.txt
echo [%time%] [EXIT] Checking if file "token.bat" exist and deleting
if exist token.bat del token.bat
echo [%time%] [EXIT] Checking if file "networkUpdate.bat" exist and deleting
if exist networkUpdate.bat del networkUpdate.bat
echo # Program shutting down... >> C:\BatchedEngine\Log\INPUTDATA.log
echo # %DATE% %TIME% >> C:\BatchedEngine\Log\INPUTDATA.log
echo. >> C:\BatchedEngine\Log\INPUTDATA.log
echo [%time%] [EXIT] Exiting program..
echo [%time%] [EXIT] Setting DIR to "C:\BatchedEngine\Prefs"
cd C:\BatchedEngine\Prefs
echo [%time%] [EXIT] Checking if file "live1.txt" exist and deleting
if exist live1.txt del live1.txt
echo [%time%] [EXIT] Checking if file "live2.txt" exist and deleting
if exist live2.txt del live2.txt
echo [%time%] [EXIT] Making file "live2.txt"
echo [ProgramIsLive=false] > live2.txt
exit












REM ======================================================================================================================================================= STARTUP OF PROGRAM
:LOAD_STARTUP
REM ------------------------------------------------------------------------------------------------------------------------------ Startup of program 3/6
echo # Loading startup resources. >> C:\BatchedEngine\Log\INPUTDATA.log
echo # %DATE% %TIME% >> C:\BatchedEngine\Log\INPUTDATA.log
echo. >> C:\BatchedEngine\Log\INPUTDATA.log
cd C:\BatchedEngine\Prefs
echo [%time%] [STARTUP] [CHECK] Checking file "author.bat" exist
echo [%time%] [STARTUP] [CHECK] Calling file "author.bat"
if exist "author.bat" call "author.bat"
if not exist author.bat set USER_AUTHOR=%username%
echo [%time%] [STARTUP] [CHECK] Resetting Engine resources (error messages)
cd C:\BatchedEngine\Resources
echo [%time%] [STARTUP] [CHECK] Deleting message templates (1/5)..
echo [%time%] [STARTUP] [CHECK] Deleting file "errormakefile.vbs" (1/5)..
if exist errormakefile.vbs del errormakefile.vbs
echo [%time%] [STARTUP] [CHECK] Deleting file "errorwritefile.vbs" (2/5)..
if exist errorwritefile.vbs del errorwritefile.vbs
echo [%time%] [STARTUP] [CHECK] Deleting file "errorreadfile.vbs" (3/5)..
if exist errorreadfile.vbs del errorreadfile.vbs
echo [%time%] [STARTUP] [CHECK] Deleting file "promptupdate.vbs" (4/5)..
if exist promptupdate.vbs del promptupdate.vbs
echo [%time%] [STARTUP] [CHECK] Deleting file "noupdatate.vbs" (5/5)..
if exist noupdate.vbs del noupdate.vbs
echo [%time%] [STARTUP] [CHECK] Setting message template variables "FILERR_N" and "FILERR_T"
set FILERR_N=NO_FILE
set FILERR_T=NO_TYPE
echo [%time%] [STARTUP] [CHECK] Creating message templates (1/5)..
echo [%time%] [STARTUP] [CHECK] Making file "errormakefile.vbs" (1/5)..
echo x=msgbox("%FILERR_N%.%FILERR_T% was not successfully written.",16+0,"BatchedEngine - %FILERR_N%.%FILERR_T% Error") > errormakefile.vbs
echo [%time%] [STARTUP] [CHECK] Making file "errorwritefile.vbs" (2/5)..
echo x=msgbox("%FILERR_N%.%FILERR_T% was not successfully made.",16+0,"BatchedEngine - %FILERR_N%.%FILERR_T% Error") > errorwritefile.vbs
echo [%time%] [STARTUP] [CHECK] Making file "errorreadfile.vbs" (3/5)..
echo x=msgbox("%FILERR_N%.%FILERR_T% could not be read. It may have been deleted or has become corrupted.",16+0,"BatchedEngine - %FILERR_N%.%FILERR_T% Error") > errorreadfile.vbs
echo [%time%] [STARTUP] [CHECK] Making file "promptupdate.vbs" (4/5)..
echo x=msgbox("Checking for BatchedEngine updates. Please wait...",0+0,"BatchedEngine - Auto Updater") > promptupdate.vbs
echo [%time%] [STARTUP] [CHECK] Making file "noupdatate.vbs" (5/5)..
echo x=msgbox("Started BatchedEngine %version%! You are using the latest version!",64+0,"BatchedEngine - Auto Updater") > noupdate.vbs
:STARTNETCHECK
REM ------------------------------------------------------------------------------------------------------------------------------ AutoUpdate Task
echo [%time%] [STARTUP] [NETCHECK] Starting NETCHECK Task..
echo # Running NETCHECK task... >> C:\BatchedEngine\Log\INPUTDATA.log
echo # %DATE% %TIME% >> C:\BatchedEngine\Log\INPUTDATA.log
echo. >> C:\BatchedEngine\Log\INPUTDATA.log
echo [%time%] [STARTUP] [NETCHECK] Setting DIR to "C:\BatchedEngine\Prefs"
cd C:\BatchedEngine\Prefs
echo [%time%] [STARTUP] [NETCHECK] Checking internet connectivity settings.
:NCOFFLINE
if exist NOINTERNET.becf call :OFFLINE
if exist NOINTERNET.becf goto NETCHECKDONE
:NETCHECK
echo [%time%] [STARTUP] [NETCHECK] Setting DIR to "C:\BatchedEngine\Temp"
cd C:\BatchedEngine\Temp
echo [%time%] [STARTUP] [NETCHECK] Deleting file "testFile.txt"
if exist testFile.txt del testFile.txt
echo [%time%] [STARTUP] [NETCHECK] Waiting for deletion..
set x=0
:NCLOOP
set /a x+=1
if exist testFile.txt goto NCLOOP
echo [%time%] [STARTUP] [NETCHECK] Deleting done in %x% tries.
set x=0 
:SKIPNETCHECK
echo [%time%] [STARTUP] [NETCHECK] Setting DIR to "C:\BatchedEngine\Resources"
cd C:\BatchedEngine\Resources
echo [%time%] [STARTUP] [NETCHECK] Running "networkCheck.vbs"
start networkCheck.vbs
echo [%time%] [STARTUP] [NETCHECK] Setting DIR to "C:\BatchedEngine\Temp"
cd C:\BatchedEngine\Temp
echo [%time%] [STARTUP] [AUTOUPDATE] File download "testFile.txt" (1/1)..
echo [%time%] [STARTUP] [AUTOUPDATE] Wating for files to download..
:SNC1
set /a x+=1
if "%x%"=="300" goto OFFLINE
if not exist testFile.txt goto SNC1
goto NETCHECKDONE
:OFFLINE
set OFFLINE=true
:NETCHECK2
TASKKILL /F /IM wscript.exe > nul
cls
echo �������������������������������������� = STARTUP WARNING = �����������������������������������������
echo You are launching BatchedEngine in offline mode or do not have an internet connection.
echo Some extra features may be limited or disabled but BE core features will still work normally.
echo To change this goto Settings ^> Startup Settings ^> Internet Connectivity. To disable this 
echo error goto Settings ^> Startup Settings ^> Toggle Startup Errors.
echo.
echo Press ANY KEY to start offline:
pause>nul
if "%aupd%"=="1" goto AUPDDONESKIP
:NETCHECKDONE
REM ------------------------------------------------------------------------------------------------------------------------------ Startup of program 5/6
echo [%time%] [STARTUP] [NETCHECK] NETCHECK complete
echo # NETCHECK complete (or skipped, depending on preferences) >> C:\BatchedEngine\Log\INPUTDATA.log
echo # %DATE% %TIME% >> C:\BatchedEngine\Log\INPUTDATA.log
echo. >> C:\BatchedEngine\Log\INPUTDATA.log
echo [%time%] [STARTUP] [NETCHECK] Netcheck done in %x% tries.
set x=0 
:AUTOUPDATE
echo [%time%] [STARTUP] [AUTOUPDATE] Setting DIR to "C:\BatchedEngine\Prefs"
cd C:\BatchedEngine\Prefs
echo [%time%] [STARTUP] [AUTOUPDATE] Checking internet connectivity settings.
if exist AUTOUPDATE.becf goto RECOVERY
if exist NOINTERNET.becf goto RECOVERY
echo [%time%] [STARTUP] [AUTOUPDATE] Setting DIR to "C:\BatchedEngine\Temp"
cd C:\BatchedEngine\Temp
echo [%time%] [STARTUP] [AUTOUPDATE] Deleting temp files..
if exist networkUpdate.bat del networkUpdate.bat
if exist token.bat del token.bat
echo [%time%] [STARTUP] [AUTOUPDATE] Setting DIR to "C:\BatchedEngine\Resources"
cd C:\BatchedEngine\Resources
echo [%time%] [STARTUP] [AUTOUPDATE] Running tasks..
start tokenCheck.vbs
start networkUpdate.vbs
set xx=0
echo [%time%] [STARTUP] [AUTOUPDATE] File download "tokenCheck.vbs" (1/2)..
echo [%time%] [STARTUP] [AUTOUPDATE] File download "networkUpdate.vbs" (2/2)..
echo [%time%] [STARTUP] [AUTOUPDATE] Wating for files to download..
set aupd=1
:AUPDDONEREFRESH
set /a xx+=1
cd C:\BatchedEngine\Temp
if %xx% GEQ 300 set aupd=1
if %xx% GEQ 300 goto OFFLINE
if not exist token.bat goto AUPDDONEREFRESH
if not exist networkUpdate.bat goto AUPDDONEREFRESH
echo [%time%] [STARTUP] [AUTOUPDATE] Download done with %xx% tries.
call token.bat
call networkUpdate.bat
:AUPDDONESKIP
if not "%badtoken%"=="1" echo [%time%] [STARTUP] [AUTOUPDATE] Access Token check passed!
if "%badtoken%"=="1" goto ERR_TOKEN_1
:RECOVERY
echo [%time%] [STARTUP] [AUTOUPDATE] Killing task "wscript.exe" (arguments: /F /IM)
TASKKILL /F /IM wscript.exe > nul
echo # Recovery being checked.. >> C:\BatchedEngine\Log\INPUTDATA.log
echo # %DATE% %TIME% >> C:\BatchedEngine\Log\INPUTDATA.log
echo. >> C:\BatchedEngine\Log\INPUTDATA.log
echo [%time%] [STARTUP] [RECOVERY] Checking recovery settings..
echo [%time%] [STARTUP] [RECOVERY] Setting DIR to "C:\BatchedEngine\Prefs"
cd C:\BatchedEngine\Prefs
if exist RECOVERY.becf goto FINALCLEANUP
cd C:\BatchedEngine\Recovery
echo [%time%] [STARTUP] [RECOVERY] Checking recovery files...
if exist recoveryData.bat goto RECOVERY_TRUE
echo [%time%] [STARTUP] [RECOVERY] No recovery files found
goto FINALCLEANUP
:RECOVERY_TRUE
echo # ! WARNING! Recovery file of damaged or crashed project found! >> C:\BatchedEngine\Log\INPUTDATA.log
echo # %DATE% %TIME% >> C:\BatchedEngine\Log\INPUTDATA.log
echo. >> C:\BatchedEngine\Log\INPUTDATA.log
cd C:\BatchedEngine\Recovery
call recoveryData.bat
if exist recoveryLocation.bat call recoveryLocation.bat
set RECOVERY_YN=null
cls
echo ��������������������������������������� = BatchedEngine = ������������������������������������������
echo The program did not shut down correctly.
echo A recovery file called "%RECProjectName%" was found. Would you like to recover (Y/N)?
echo.
set /p RECOVERY_YN=^>
if %RECOVERY_YN%==y goto RECOVER
if %RECOVERY_YN%==Y goto RECOVER
if %RECOVERY_YN%==n goto RECOVER1
if %RECOVERY_YN%==N goto RECOVER1
goto RECOVERY_TRUE
:RECOVER
echo # Recovery ACCEPTED by user. >> C:\BatchedEngine\Log\INPUTDATA.log
echo # ! WARINING! ATTEMPTING RECOVERY! >> C:\BatchedEngine\Log\INPUTDATA.log
echo # %DATE% %TIME% >> C:\BatchedEngine\Log\INPUTDATA.log
echo. >> C:\BatchedEngine\Log\INPUTDATA.log
echo.
echo [%time%] [STARTUP] [RECOVERY] Attempting recovery...
cd C:\BatchedEngine\Recovery
set RECLoc=EDIT_RECOVERY
set OPNFILE=%RECProjectName%
set EDITname=%OPNFILE%
set EDITauth=%RECProjectAuth%
set EDITtokn=%RECProjectToken%
set EDITtime=%RECProjectTime%
if exist recoveryLocation.bat call recoveryLocation.bat
del recoveryData.bat
del recoveryLocation.bat
cd %RECConfigLocation%
call config.bat
cd %RECLocation%
if not exist "C:\BatchedEngine\Projects\%RECProjectName%" goto RECOVER2
if not exist "C:\BatchedEngine\Projects\%RECProjectName%\data\config.bat" goto RECOVER2
if not exist "C:\BatchedEngine\Projects\%RECProjectName%\data\db.bat" goto RECOVER2
if not exist "C:\BatchedEngine\Projects\%RECProjectName%\data\status.bat" goto RECOVER2
if not exist "C:\BatchedEngine\Projects\%RECProjectName%\data\lines.bat" goto RECOVER2
if exist "C:\BatchedEngine\Projects\%RECProjectName%\data\noaccess.bat" goto RECOVER2
goto %RECLoc%
:RECOVER1
echo # Recovery CANCELLED by user >> C:\BatchedEngine\Log\INPUTDATA.log
echo # %DATE% %TIME% >> C:\BatchedEngine\Log\INPUTDATA.log
echo. >> C:\BatchedEngine\Log\INPUTDATA.log
del recoveryData.bat
if exist recoveryLocation.bat del recoveryLocation.bat
goto FINALCLEANUP
:RECOVER2
echo [%time%] [STARTUP] [RECOVERY] Can not recover "%RECProjectName%"! 
echo [%time%] [STARTUP] [RECOVERY] Project is disabled, deleted or corrupt. (ERR_REC_1)
goto ERR_REC_1
:FINALCLEANUP
echo [%time%] [STARTUP] [CLEANUP] Cleaning up startup..
cd C:/BatchedEngine
echo [%time%] [STARTUP] [CLEANUP] Verifiying that all program folder exist
echo [%time%] [STARTUP] [CLEANUP] Checking folder "Assets" exists
set CleanupLoc=Assets
if not exist "Assets" goto CLEANUPFAIL
echo [%time%] [STARTUP] [CLEANUP] Checking folder "BatchedEngine" exists
set CleanupLoc=BatchedEngine
if not exist "BatchedEngine" goto CLEANUPFAIL
echo [%time%] [STARTUP] [CLEANUP] Checking folder "Log" exists
set CleanupLoc=Log
if not exist "Log" goto CLEANUPFAIL
echo [%time%] [STARTUP] [CLEANUP] Checking folder "Plugins" exists
set CleanupLoc=Plugins
if not exist "Plugins" goto CLEANUPFAIL
echo [%time%] [STARTUP] [CLEANUP] Checking folder "Prefs" exists
set CleanupLoc=Prefs
if not exist "Prefs" goto CLEANUPFAIL
echo [%time%] [STARTUP] [CLEANUP] Checking folder "Presets" exists
set CleanupLoc=Presets
if not exist "Presets" goto CLEANUPFAIL
echo [%time%] [STARTUP] [CLEANUP] Checking folder "Projects" exists
set CleanupLoc=Projects
if not exist "Projects" goto CLEANUPFAIL
echo [%time%] [STARTUP] [CLEANUP] Checking folder "Recovery" exists
set CleanupLoc=Recovery
if not exist "Recovery" goto CLEANUPFAIL
echo [%time%] [STARTUP] [CLEANUP] Checking folder "Resources" exists
set CleanupLoc=Resources
if not exist "Resources" goto CLEANUPFAIL
echo [%time%] [STARTUP] [CLEANUP] Checking folder "Temp" exists
set CleanupLoc=Temp
if not exist "Temp" goto CLEANUPFAIL
echo [%time%] [STARTUP] [CLEANUP] Passed Program folder check
echo # Program clearing up... >> C:\BatchedEngine\Log\INPUTDATA.log
echo # %DATE% %TIME% >> C:\BatchedEngine\Log\INPUTDATA.log
echo. >> C:\BatchedEngine\Log\INPUTDATA.log
echo [%time%] [STARTUP] [CLEANUP] Setting DIR to "C:\BatchedEngine\Temp"
cd C:\BatchedEngine\Temp
echo [%time%] [STARTUP] [CLEANUP] Checking if file "testFile.txt" exist and deleting
if exist testFile.txt del testFile.txt
echo [%time%] [STARTUP] [CLEANUP] Checking if file "token.bat" exist and deleting
if exist token.bat del token.bat
echo [%time%] [STARTUP] [CLEANUP] Checking if file "networkUpdate.bat" exist and deleting
if exist networkUpdate.bat del networkUpdate.bat
if "%firstuse%"=="1" goto FIRSTUSE
goto MAIN_MENU
:CLEANUPFAIL
echo [%time%] [STARTUP] [CLEANUP] Program did not pass checks!
echo [%time%] [STARTUP] [CLEANUP] C:/BatchedEngine/%CleanupLoc% missing!
echo [%time%] [STARTUP] [CLEANUP] Please reinstall BatchedEngine!
goto ERR_PROG_2
:FIRSTUSE
echo.
echo RELOADING PROGRAM (FIRST USE RELOAD)
echo.
set firstuse=0
set firstuse1=1
goto START











REM ======================================================================================================================================================= ERROR REPORTER
:ERR_PROG_1
REM ------------------------------------------------------------------------------------------------------------------------------ ERR_PROG_1 Program Error
echo ! FATAL ERROR in program! Program forced shutdown. >> C:\BatchedEngine\Log\INPUTDATA.log
echo # %DATE% %TIME% >> C:\BatchedEngine\Log\INPUTDATA.log
echo. >> C:\BatchedEngine\Log\INPUTDATA.log
cd C:/BatchedEngine/Prefs/
echo set ERRTYPE=ERR_PROG_1 > CRASH.bat
echo set ERRDATE=%date% %time% >> CRASH.bat
echo set ERRMSG=Fatal Error in program. Program forced to shut down. >> CRASH.bat
echo set ERRSTATUS=This error is easily fixable. >> CRASH.bat
exit

:ERR_PROG_2
REM ------------------------------------------------------------------------------------------------------------------------------ ERR_PROG_2 Program Error
echo ! FATAL ERROR in program! Program forced shutdown. >> C:\BatchedEngine\Log\INPUTDATA.log
echo # %DATE% %TIME% >> C:\BatchedEngine\Log\INPUTDATA.log
echo. >> C:\BatchedEngine\Log\INPUTDATA.log
cd C:/BatchedEngine/
if not exist Prefs md Prefs
cd C:/BatchedEngine/Prefs/
echo set ERRTYPE=ERR_PROG_2 > CRASH.bat
echo set ERRDATE=%date% %time% >> CRASH.bat
echo set ERRMSG=One or more crucial folders including "%CleanupLoc%" missing! Program can't start. >> CRASH.bat
echo set ERRSTATUS=This error requires program reinstall. >> CRASH.bat
exit

:ERR_PROG_3
REM ------------------------------------------------------------------------------------------------------------------------------ ERR_PROG_3 Program Error
echo ! FATAL ERROR in program! Program forced shutdown. >> C:\BatchedEngine\Log\INPUTDATA.log
echo # %DATE% %TIME% >> C:\BatchedEngine\Log\INPUTDATA.log
echo. >> C:\BatchedEngine\Log\INPUTDATA.log
cd C:/BatchedEngine/Prefs/
echo set ERRTYPE=ERR_PROG_3 > CRASH.bat
echo set ERRDATE=%date% %time% >> CRASH.bat
echo set ERRMSG=You entered an invalid menu or location in the program. >> CRASH.bat
echo set ERRSTATUS=This error requires a simple restart. >> CRASH.bat
exit

:ERR_PROG_4
REM ------------------------------------------------------------------------------------------------------------------------------ ERR_PROG_4 Program Error
echo ! FATAL ERROR in program! Program forced shutdown. >> C:\BatchedEngine\Log\INPUTDATA.log
echo # %DATE% %TIME% >> C:\BatchedEngine\Log\INPUTDATA.log
echo. >> C:\BatchedEngine\Log\INPUTDATA.log
cd C:/BatchedEngine/Prefs/
echo set ERRTYPE=ERR_PROG_4 > CRASH.bat
echo set ERRDATE=%date% %time% >> CRASH.bat
echo set ERRMSG=The editor force closed to prevent file corruption. >> CRASH.bat
echo set ERRSTATUS=Unknown >> CRASH.bat
exit

:ERR_PROG_5
REM ------------------------------------------------------------------------------------------------------------------------------ ERR_PROG_5 Program Error
echo ! FATAL ERROR in program! Program forced shutdown. >> C:\BatchedEngine\Log\INPUTDATA.log
echo # %DATE% %TIME% >> C:\BatchedEngine\Log\INPUTDATA.log
echo. >> C:\BatchedEngine\Log\INPUTDATA.log
cd C:/BatchedEngine/Prefs/
echo set ERRTYPE=ERR_PROG_5 > CRASH.bat
echo set ERRDATE=%date% %time% >> CRASH.bat
echo set ERRMSG=Program moved to position ":START" while active. >> CRASH.bat
echo set ERRSTATUS=This error requires the error fixer. >> CRASH.bat
exit

:ERR_FILE_1
REM ------------------------------------------------------------------------------------------------------------------------------ ERR_FILE_1 File Error
cls
echo ��������������������������������������� = BatchedEngine = ������������������������������������������
echo A file could not be made.
echo Please make sure you have launched this program as an Administrator and have sufficient
echo priveleges to write to the "C:\" directory. Please close the program down and try again.
echo.
echo If you do have sufficient privelages and you keep getting this error, you may have a too slow
echo internet connection or harddrive or the webserver may be under load. To bypass this, launch
echo BatchedEngine in Offline mode by switching off your internet.
echo.
echo Error Code: ERR_FILE_1
goto FOREVER_LOOP

:ERR_TOKEN_1
REM ------------------------------------------------------------------------------------------------------------------------------ ERR_TOKEN_1 Token Error
cls
echo ��������������������������������������� = BatchedEngine = ������������������������������������������
echo There was an error verifiying the access token.
echo This is a rare but fatal error as the token is required to start up the program.
echo The access token is downloaded and then checked by the autoupdater. If this error persists,
echo please run the BatchedEngine Troubleshooter or contact authorfilmsstudions@gmail.com.
echo.
echo Error Code: ERR_TOKEN_1
goto FOREVER_LOOP

:ERR_INSTALL_1
REM ------------------------------------------------------------------------------------------------------------------------------ ERR_INSTALL_1 Install Error
TASKKILL /F /IM wscript.exe > nul
cls
echo ��������������������������������������� = BatchedEngine = ������������������������������������������
echo The program cannot be installed.
echo Please make sure you have launched this program as an Administrator and have sufficient
echo priveleges to write to the "C:\" directory. Please close the program down and try again. If
echo the error persists, please re-download the BatchedEngine file.
echo.
echo Error Code: ERR_INSTALL_1
goto FOREVER_LOOP

:ERR_REC_1
REM ------------------------------------------------------------------------------------------------------------------------------ ERR_REC_1 RECOVER Error
TASKKILL /F /IM wscript.exe > nul
cls
echo ��������������������������������������� = BatchedEngine = ������������������������������������������
echo File could not be recovered.
echo The recovery file or project file is corrupt, has been deleted or is incompatible.
echo Please restart BatchedEngine without attempting to recover the project.
echo.
echo Error Code: ERR_REC_1
goto FOREVER_LOOP

:TROUBLESHOOTER
set ts=1
echo [TROUBLESHOOTER] Fixing BatchedEngine by reinstall...
if exist C:\BatchedEngine\Temp\troubleshooterReinstall.bat del C:\BatchedEngine\Temp\troubleshooterReinstall.bat
goto INSTALL

:TROUBLESHOOTER1
:DEVCONSOLE
mode 100,10000
if exist "C:\BatchedEngine\Temp\troubleshooter.bat" call C:\BatchedEngine\Temp\troubleshooter.bat
cls
echo ��������������������������������������� = BatchedEngine = ������������������������������������������
echo BatchedEngine Console [%version% %build%]
echo Type 'HELP' for help with commands.
echo.
:DEVCONSOLE1
set console=NULL
set /p console=^>
if "%console%"=="HELP" goto DEVHELP
if "%console%"=="help" goto DEVHELP
if "%console%"=="HELP EXIT" goto DEVHELPEXIT
if "%console%"=="HELP exit" goto DEVHELPEXIT
if "%console%"=="help EXIT" goto DEVHELPEXIT
if "%console%"=="help exit" goto DEVHELPEXIT

if "%console%"=="HELP LAUNCH" goto DEVHELPLAUNCH
if "%console%"=="HELP launch" goto DEVHELPLAUNCH
if "%console%"=="help LAUNCH" goto DEVHELPLAUNCH
if "%console%"=="help launch" goto DEVHELPLAUNCH

if "%console%"=="CMD" cmd
if "%console%"=="cmd" cmd
if "%console%"=="GOTO" goto DEVGOTO
if "%console%"=="goto" goto DEVGOTO
if "%console%"=="DISDEV" goto DEVDISDEV
if "%console%"=="disdev" goto DEVDISDEV
if "%console%"=="ENDEV" goto DEVENDEV
if "%console%"=="endev" goto DEVENDEV
if "%console%"=="CLEAR" goto DEVCONSOLE
if "%console%"=="clear" goto DEVCONSOLE
if "%console%"=="CLS" goto DEVCONSOLE
if "%console%"=="cls" goto DEVCONSOLE
if "%console%"=="LAUNCH" goto START
if "%console%"=="launch" goto START
if "%console%"=="DEVCONSOLESTATUS" goto DEVCONSOLESTATUS
if "%console%"=="devconsolestatus" goto DEVCONSOLESTATUS
if "%console%"=="LAUNCH -ts" goto DEVLAUNCH
if "%console%"=="launch -ts" goto DEVLAUNCH
if "%console%"=="EXIT" exit
if "%console%"=="exit" exit
if "%console%"=="EXIT -safe" goto DEVEXITSAFE
if "%console%"=="exit -safe" goto DEVEXITSAFE
if "%console%"=="NULL" goto DEVCONSOLE1
echo Command '%console%' not found.
goto DEVCONSOLE1
:DEVHELP
echo All commands must be typed in all lowercase or UPPERCASE. Type "HELP [COMMAND]" for help with a 
echo specific command or function. The dev console will defaultly not register CMD commands.
echo.
echo CMD - Use Command Prompt.
echo CONSOLESTATUS - Status of the console.
echo DISDEV - Disable the dev console on startup.
echo ENDEV - Enable the dev console.
echo LAUNCH - Launch BatchedEngine Normally.
echo INSTALL - Install BatchedEngine.
echo CHECK - Checks BatchedEngine Installation.
echo CLEAR - Clear screen of all history.
echo GOTO - Go to a specific directory of BatchedEngine.
echo EXIT - Exit BatchedEngine.
goto DEVCONSOLE1
:DEVDISDEV
if not exist "C:\BatchedEngine\Temp\troubleshooter.bat" goto DEVDISDEV2 > nul
if exist "C:\BatchedEngine\Temp\troubleshooter.bat" del "C:\BatchedEngine\Temp\troubleshooter.bat" > nul
if exist "C:\BatchedEngine\Temp\troubleshooter.bat" goto DEVDISDEV1 > nul
echo Successfully disabled developer console.
goto DEVCONSOLE1
:DEVDISDEV1
echo Could not disable the developer console.
goto DEVCONSOLE1
:DEVDISDEV2
echo Developer console is not enabled.
goto DEVCONSOLE1
:DEVENDEV
if exist "C:\BatchedEngine\Temp\troubleshooter.bat" goto DEVENDEV1 > nul
echo set dev=1 > "C:\BatchedEngine\Temp\troubleshooter.bat"
echo Successfully enabled developer console.
goto DEVCONSOLE1
:DEVENDEV1
echo Developer console is already enabled.
goto DEVCONSOLE1
:DEVCONSOLESTATUS
if exist "C:\BatchedEngine\Temp\troubleshooter.bat" echo The Console wil start on program launch.
if exist "C:\BatchedEngine\Temp\troubleshooter.bat" goto DEVCONSOLE1
if not exist "C:\BatchedEngine\Temp\troubleshooter.bat" echo The Console is only temporarily active.
if not exist "C:\BatchedEngine\Temp\troubleshooter.bat" goto DEVCONSOLE1
echo Status error.
:DEVEXITSAFE
echo Exiting program safely..
goto EXIT
:DEVHELPEXIT
echo Help for 'EXIT' command.
echo.
echo EXIT - Exits the program normally and immediately.
echo EXIT -safe - Exits the program safely by deleting temp files. 
goto DEVCONSOLE1
:DEVHELPLAUNCH
echo Help for 'LAUNCH' command.
echo.
echo LAUNCH - Launches BatchedEngine again.
echo LAUNCH -ts - Launches BatchedEngine overriding any troubleshooter settings.
goto DEVCONSOLE1
:DEVGOTO
set console=NULL
set /p console=GOTO^>
if "%console%"=="NULL" goto DEVCONSOLE1
goto %console%
:DEVLAUNCH
set tsskip=1
goto START