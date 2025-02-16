@echo off
color 2
title GMFL v1.1.0 - By OMER_075
chcp 65001 >nul 
call :banner
pause

:banner
echo.
echo.
echo                   ▄████  ▒█████   ██▓      ▄████ ▓█████ 
echo                  ██▒ ▀█▒▒██▒  ██▒▓██▒     ██▒ ▀█▒▓█   ▀ 
echo                 ▒██░▄▄▄░▒██░  ██▒▒██░    ▒██░▄▄▄░▒███   
echo                 ░▓█  ██▓▒██   ██░▒██░    ░▓█  ██▓▒▓█  ▄ 
echo                 ░▒▓███▀▒░ ████▓▒░░██████▒░▒▓███▀▒░▒████▒
echo                  ░▒   ▒ ░ ▒░▒░▒░ ░ ▒░▓  ░ ░▒   ▒ ░░ ▒░ ░
echo                   ░   ░   ░ ▒ ▒░ ░ ░ ▒  ░  ░   ░  ░ ░  ░
echo                 ░ ░   ░ ░ ░ ░ ▒    ░ ░   ░ ░   ░    ░   
echo                       ░     ░ ░      ░  ░      ░    ░  ░                                  
echo.
echo               BY@omer_075
echo.
echo [1] Launch GOLGE
echo [2] Exit
echo.
set /p option="Choose an option: "
if "%option%"=="1" goto :test
if "%option%"=="2" exit

:test
echo.
echo Cleaning temporary files...
del /q /f /s %temp%\*
rd /s /q %temp%
echo Temporary files cleaned.
pause
goto :banner

