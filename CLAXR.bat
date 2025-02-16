@echo off
color 2
title CLAXR - Driver Update Utility
chcp 65001 >nul
call :banner

:menu
cls
echo.
echo ══════════════════════════════════════
echo   CLAXR - Driver Update Utility
echo ══════════════════════════════════════
echo.
echo [1] Check Installed Drivers
echo [2] Update All Drivers
echo [3] Return to Previous Menu
echo.
set /p option="Choose an option: "
if "%option%"=="1" goto :check
if "%option%"=="2" goto :update
if "%option%"=="3" exit
echo Invalid option. Please try again.
pause
goto :menu

:check
cls
echo Searching for installed devices and drivers...
echo.
REM List installed drivers
driverquery /FO TABLE
echo.
echo Press any key to return to the main menu.
pause
goto :menu

:update
cls
echo Updating drivers...
echo.
REM Update drivers using pnputil or Windows Update
REM This command reinstalls available drivers from the local store
for /f "tokens=*" %%a in ('pnputil /enum-drivers ^| findstr ".inf"') do pnputil /add-driver %%a /install

REM Run Windows Update to get driver updates
echo Checking for Windows updates...
powershell -Command "Install-Module -Name PSWindowsUpdate -Force -Scope CurrentUser; Import-Module PSWindowsUpdate; Get-WindowsUpdate -Install"

echo Update complete. Press any key to return to the main menu.
pause
goto :menu

:banner
echo.
echo ╔════════════════════════════════════════════════╗
echo ║           CLAXR - Driver Update Tool           ║
echo ╚════════════════════════════════════════════════╝
echo.
goto :menu
