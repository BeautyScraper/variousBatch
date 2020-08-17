
if exist %1:\.SyncUp (
echo %1 is the packup drive
set _packupDrive=%1:
exit /b
) else (
exit /b
)