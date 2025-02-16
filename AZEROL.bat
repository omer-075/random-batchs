@echo off
color 5
title AZEROL V1.0.0 BY omer_075
chcp 65001 >nul 
call :banner
pause

:banner
echo.
echo.
echo                            ▄████████  ▄███████▄     ▄████████    ▄████████  ▄██████▄   ▄█       
echo                           ███    ███ ██▀     ▄██   ███    ███   ███    ███ ███    ███ ███       
echo                           ███    ███       ▄███▀   ███    █▀    ███    ███ ███    ███ ███       
echo                           ███    ███  ▀█▀▄███▀▄▄  ▄███▄▄▄      ▄███▄▄▄▄██▀ ███    ███ ███       
echo                         ▀███████████   ▄███▀   ▀ ▀▀███▀▀▀     ▀▀███▀▀▀▀▀   ███    ███ ███       
echo                           ███    ███ ▄███▀         ███    █▄  ▀███████████ ███    ███ ███       
echo                           ███    ███ ███▄     ▄█   ███    ███   ███    ███ ███    ███ ███▌    ▄ 
echo                           ███    █▀   ▀████████▀   ██████████   ███    ███  ▀██████▀  █████▄▄██ 
echo                                                                 ███    ███            ▀                                                                                                                                                                                                                       
echo.
echo.
echo ══╗
echo   ║═[1] Launch AZEROL
echo   ║══[2] Go Back
echo   ║═══[3] Exit
echo ══╝
echo.
set /p option=""
if "%option%"=="1" goto :launch
if "%option%"=="2" goto :goback
if "%option%"=="3" exit

:launch
cls
echo.
echo Recherche de votre clé produit Windows...
powershell -Command "(Get-ItemProperty -Path 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\SoftwareProtectionPlatform').BackupProductKeyDefault" > temp.txt
set /p key=<temp.txt
del temp.txt
if "%key%"=="" (
    echo Clé produit introuvable. Votre système utilise probablement une licence numérique.
    echo Connectez-vous à votre compte Microsoft pour activer Windows.
) else (
    echo Votre clé produit Windows est : %key%
)
echo.
pause
exit

