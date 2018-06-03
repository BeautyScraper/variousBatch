
if exist %1 (
"C:\app\FastCopyPortable\FastCopyPortable.exe" /log /cmd="move" /auto_close /srcfile=%1 /to=%2
del /q/f %1
exit /b
) else (
exit /b
)