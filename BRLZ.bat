@echo off
title BRLZ - Batch Request & Logging Zilla
color 0A
mode con: cols=80 lines=40

:: Fonction pour envoyer un Webhook
:send_webhook
cls
echo Enter the Webhook URL:
set /p webhook_url=
echo Enter the message to send:
set /p message=
echo Sending message to webhook...
curl -X POST -H "Content-Type: application/json" -d "{\"content\":\"%message%\"}" %webhook_url%
echo Message sent!
goto menu

:: Fonction pour envoyer une requête GET
:get_request
cls
echo Enter the URL for GET request:
set /p url=
echo Sending GET request to %url%...
curl -X GET %url%
goto menu

:: Fonction pour envoyer une requête POST
:post_request
cls
echo Enter the URL for POST request:
set /p url=
echo Enter data to send (in JSON format):
set /p json_data=
echo Sending POST request to %url% with data: %json_data%
curl -X POST -H "Content-Type: application/json" -d "%json_data%" %url%
goto menu

:: Fonction pour faire un spam de requêtes à une IP
:spam_ip
cls
echo Enter the IP address to spam:
set /p ip_address=
echo How many requests to send?
set /p request_count=
echo Spamming %ip_address% with %request_count% requests...
for /l %%i in (1,1,%request_count%) do (
    curl -X GET http://%ip_address%
    timeout /t 1 >nul
)
echo Spam completed!
goto menu

:: Fonction pour afficher des stats de requêtes
:view_logs
cls
echo Viewing logs of all requests...
:: Supposons que nous avons un fichier de logs généré lors des requêtes
type "requests.log"
goto menu

:: Menu principal
:menu
cls
echo ============================================
echo        BRLZ - Batch Request & Logging Zilla  
echo ============================================
echo [1] Send Webhook Message
echo [2] Send HTTP GET Request
echo [3] Send HTTP POST Request
echo [4] Spam IP Address with Requests
echo [5] View Request Logs
echo [6] Quit
echo ============================================
set /p choice=Choose an option:

if "%choice%"=="1" goto send_webhook
if "%choice%"=="2" goto get_request
if "%choice%"=="3" goto post_request
if "%choice%"=="4" goto spam_ip
if "%choice%"=="5" goto view_logs
if "%choice%"=="6" exit

echo Invalid option!
pause
goto menu
