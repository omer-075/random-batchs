@echo off
title AXX
color 1
chcp 65001 >nul
:menu
echo.
echo           ╔═════════════════════════╗
echo           ║  █████╗ ██╗  ██╗██╗  ██╗║
echo           ║ ██╔══██╗╚██╗██╔╝╚██╗██╔╝║
echo           ║ ███████║ ╚███╔╝  ╚███╔╝ ║
echo           ║ ██╔══██║ ██╔██╗  ██╔██╗ ║
echo           ║ ██║  ██║██╔╝ ██╗██╔╝ ██╗║
echo           ║ ╚═╝  ╚═╝╚═╝  ╚═╝╚═╝  ╚═╝║
echo           ╚═════════════════════════╝  
echo.
set /p option=User: 

if /i "%option%"=="hello" (
    echo.
    echo AXX: Hello.
) else if /i "%option%"=="hi" (
    echo.
    echo AXX: Hi.
) else if /i "%option%"=="hii" (
    echo.
    echo AXX: Hi.
) else if /i "%option%"=="install pip" (
    echo.
    echo AXX: OKKKKK.
pip install pyperclip
color 1
) else if /i "%option%"=="helo" (
    echo.
    echo AXX: Hello.
) else if /i "%option%"=="hello axx" (
    echo.
    echo AXX: Hello, User!
) else if /i "%option%"=="hi axx" (
    echo.
    echo AXX: Hi, User!
) else if /i "%option%"=="KFEC2cjkcv1fK" (
    echo.
    echo AXX: [ https://freeferre999999.wixsite.com/omer075 ]
) else if /i "%option%"=="hey" (
    echo.
    echo AXX: Hey!
) else (
    echo.
    echo AXX: command not found.
)
echo.
echo Press any key to continue or close the window to exit.
pause > nul
cls
goto menu
