
if exist %1:\.sync (
echo %1 is the syncUp drive
set _packupDrive=%1:
exit /b
) else (
exit /b
)