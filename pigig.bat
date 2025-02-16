@echo off
title GMFL v1.1.0 - By OMER_075
chcp 65001 >nul 

:: Active le support des couleurs ANSI (Windows 10+ requis)
for /f "tokens=2 delims=:" %%a in ('echo prompt $E ^| cmd') do set "ESC=%%a"
echo %ESC%[?25l

call :banner
pause

:banner
echo.
echo.
echo %ESC%[38;2;255;0;0m          ██████╗ ██╗ ██████╗ ██╗ ██████╗ 
echo %ESC%[38;2;255;64;0m          ██╔══██╗██║██╔════╝ ██║██╔════╝ 
echo %ESC%[38;2;255;128;0m          ██████╔╝██║██║  ███╗██║██║  ███╗
echo %ESC%[38;2;255;192;0m          ██╔═══╝ ██║██║   ██║██║██║   ██║
echo %ESC%[38;2;255;255;0m          ██║     ██║╚██████╔╝██║╚██████╔╝
echo %ESC%[38;2;200;200;0m          ╚═╝     ╚═╝ ╚═════╝ ╚═╝ ╚═════╝ 
                                                                 
echo.
echo              BY@omer_075 *bat*
echo.
echo [1] Spam CMD [Run as Admin]
echo [2] Fake Hacking Stuff
echo [3] Curl Parrot
echo.
set /p option="Choose an option: "
if "%option%"=="1" goto :spam_cmd
if "%option%"=="2" goto :fakehack
if "%option%"=="3" goto :curlparrot

:spam_cmd
set /a count=0
:loop
start cmd
set /a count+=1
if %count% lss 500000 goto loop
goto :eof

:fakehack
install tk
dir/s
tree
goto :fakehack

:curlparrot
curl parrot.live
goto :eof
