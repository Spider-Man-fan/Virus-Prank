@echo off
title SYSTEM ALERT - CRITICAL
color 0C
cls
echo.
echo  ====================================================
echo   CRITICAL ERROR 0x0000007B
echo   UNAUTHORIZED ENCRYPTION PROCESS DETECTED
echo  ====================================================
echo.
echo  Windows Defender has been disabled.
echo  Scanning for recoverable files...
timeout /t 2 /nobreak >nul
echo.
echo  [!] Encrypting documents, photos, and desktop files
echo.
echo  Progress:
echo  [##########                    ] 25%%
timeout /t 1 /nobreak >nul
echo  [####################          ] 50%%
timeout /t 1 /nobreak >nul
echo  [##############################] 75%%
timeout /t 1 /nobreak >nul
echo  [################################] 100%%
echo.
echo  Encryption complete.
echo  Your files have been locked.
echo.
echo  To restore access, contact support@fakevirus.invalid
echo  Reference ID: PRANK-2026-XXXX
echo.
timeout /t 3 /nobreak >nul
cls
color 0A
echo.
echo  ====================================================
echo   JUST KIDDING!
echo  ====================================================
echo.
echo  This was a harmless prank script.
echo  Nothing was encrypted or changed.
echo  Your computer is completely safe.
echo.
echo  You can close this window.
echo.
pause
exit