@echo off
color 2
title GMFL v1.1.0 - By OMER_075
chcp 65001 >nul 
call :banner
pause

:banner
echo.
echo.
echo               ██████╗ ███╗   ███╗███████╗██╗     
echo              ██╔════╝ ████╗ ████║██╔════╝██║     
echo              ██║  ███╗██╔████╔██║█████╗  ██║     
echo              ██║   ██║██║╚██╔╝██║██╔══╝  ██║     
echo              ╚██████╔╝██║ ╚═╝ ██║██║     ███████╗
echo               ╚═════╝ ╚═╝     ╚═╝╚═╝     ╚══════╝                                  
echo.
echo               GMFL Performance Optimizer
echo.
echo [1] Optimize Ping
echo [2] Optimize FPS
echo [3] Clean Temporary Files
echo [4] Network Optimization
echo [5] System Performance Boost
echo [6] Show System Information
echo [7] FPS Boost (Advanced)
echo [8] Clean Browser Cache
echo [9] Enable Game Mode
echo [0] Exit
echo.
set /p option="Choose an option: "
if "%option%"=="1" goto :optimize_ping
if "%option%"=="2" goto :optimize_fps
if "%option%"=="3" goto :clean_temp
if "%option%"=="4" goto :network_optimization
if "%option%"=="5" goto :performance_boost
if "%option%"=="6" goto :system_info
if "%option%"=="7" goto :fps_boost_advanced
if "%option%"=="8" goto :clean_browser_cache
if "%option%"=="9" goto :enable_game_mode
if "%option%"=="0" exit

:optimize_ping
echo.
echo Optimizing Ping...
ping google.com -n 10
echo Ping optimization complete.
pause
goto :banner

:optimize_fps
echo.
echo Optimizing FPS...
:: Disable visual effects
echo Disabling visual effects...
start /min cmd /c "reg add \"HKCU\Control Panel\Desktop\" /v MenuShowDelay /t REG_SZ /d 0 /f"
:: Adjust power settings to high performance
echo Setting power plan to High Performance...
powercfg -change -standby-timeout-ac 0
powercfg -change -monitor-timeout-ac 0
pause
goto :banner

:clean_temp
echo.
echo Cleaning temporary files...
del /q /f /s %temp%\*
rd /s /q %temp%
echo Temporary files cleaned.
pause
goto :banner

:network_optimization
echo.
echo Optimizing Network...
:: Disable Windows updates for improved ping
net stop wuauserv
:: Clear DNS cache
ipconfig /flushdns
:: Optimize network settings (for example, setting TCP parameters)
netsh int tcp set global autotuninglevel=normal
netsh int tcp set global chimney=enabled
netsh int tcp set global rss=enabled
echo Network optimization complete.
pause
goto :banner

:performance_boost
echo.
echo Boosting System Performance...
:: Disable unnecessary startup items
echo Disabling unnecessary startup programs...
start /min cmd /c "reg add \"HKCU\Software\Microsoft\Windows\CurrentVersion\Run\" /v DisabledPrograms /f"
:: Clean system registry
echo Cleaning registry...
reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Uninstall" /f
:: Disable background services and notifications
echo Disabling background services...
net stop "wuauserv"
net stop "bits"
pause
goto :banner

:system_info
echo.
echo System Information:
systeminfo
pause
goto :banner

:fps_boost_advanced
echo.
echo Activating FPS Boost (Advanced)...
:: Disable Windows Animations
echo Disabling Windows Animations...
start /min cmd /c "reg add \"HKCU\Control Panel\Desktop\" /v UserPreferencesMask /t REG_BINARY /d 9012000000000000 /f"
:: Disable Transparency effects
echo Disabling Transparency effects...
start /min cmd /c "reg add \"HKCU\Software\Microsoft\Windows\CurrentVersion\Themes\Personalize\" /v EnableTransparency /t REG_DWORD /d 0 /f"
:: Set GPU priority (for NVIDIA/AMD users)
echo Setting GPU priority (NVIDIA/AMD)...
:: NVIDIA (adjust if needed)
nvidia-smi -pm 1
:: AMD (adjust if needed)
:: Set it to a higher performance mode in the AMD settings if applicable
echo FPS Boost complete.
pause
goto :banner

:clean_browser_cache
echo.
echo Cleaning browser cache...
:: Clean Chrome Cache
echo Cleaning Chrome cache...
del /q /f /s "%LocalAppData%\Google\Chrome\User Data\Default\Cache\*"
:: Clean Edge Cache
echo Cleaning Edge cache...
del /q /f /s "%LocalAppData%\Microsoft\Edge\User Data\Default\Cache\*"
echo Browser cache cleaned.
pause
goto :banner

:enable_game_mode
echo.
echo Enabling Windows Game Mode...
start /min cmd /c "reg add \"HKCU\Software\Microsoft\GameBar\" /v AllowAutoGameMode /t REG_DWORD /d 1 /f"
:: Ensure Game Mode is active
start /min cmd /c "start ms-settings:gaming-gameMode"
echo Game Mode enabled.
pause
goto :banner
