REM @echo off

REM Disable Wi-Fi
netsh interface set interface "Wi-Fi" admin=disable

REM Wait for 60 seconds
TIMEOUT /T 30

REM Enable Wi-Fi
netsh interface set interface "Wi-Fi" admin=enable

echo Wi-Fi has been disabled and enabled again.

pause