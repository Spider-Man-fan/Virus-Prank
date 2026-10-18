@echo off
title SYSTEM ERROR
color 0C
cls
echo.
set /p "pass=Enter password to continue: "
if /i not "%pass%"=="Ad(am1" (
    echo.
    echo Access denied.
    timeout /t 2 /nobreak >nul
    exit
)

:: Fake BSOD screen
cls
color 1F
echo.
echo A problem has been detected and Windows has been shut down to prevent damage
echo to your computer.
echo.
echo If this is the first time you've seen this stop error screen,
echo restart your computer. If this screen appears again, follow
echo these steps:
echo.
echo Check to make sure any new hardware or software is properly installed.
echo If this is a new installation, ask your hardware or software manufacturer
echo for any Windows updates you might need.
echo.
echo If problems continue, disable or remove any newly installed hardware
echo or software. Disable BIOS memory options such as caching or shadowing.
echo If you need to use Safe Mode to remove or disable components, restart
echo your computer, press F8 to select Advanced Startup Options, and then
echo select Safe Mode.
echo.
echo Technical information:
echo.
echo *** STOP: 0x0000007B (0xFFFFF880009A97E8, 0xFFFFFFFFC0000034, 0x0000000000000000, 0x0000000000000000)
echo.
echo ERROR! Critical system failure detected!
echo.
echo Collecting data for crash dump...
timeout /t 4 /nobreak >nul
echo Initializing disk for crash dump...
timeout /t 3 /nobreak >nul
echo Beginning dump of physical memory.
timeout /t 3 /nobreak >nul
echo Dumping physical memory to disk: 100
timeout /t 2 /nobreak >nul
echo Physical memory dump complete.
timeout /t 2 /nobreak >nul
echo Contact your system administrator or technical support group for further
echo assistance.
echo.
echo.
echo SHUTTING DOWN IN 30 SECONDS...
echo To cancel: open Command Prompt and type   shutdown /a
echo.
timeout /t 5 /nobreak >nul

:: Start the real shutdown (30 second timer)
shutdown /s /t 30 /c "ERROR! Critical system failure - shutting down!"

exit
