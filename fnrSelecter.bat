if exist %1 (
"D:\Developed\Automation\fnr\fnr.exe" --cl --dir %~dp1 --fileMask "%~nx1"  --useRegEx --find " W1t81N " --replace "\\"
echo Shagun > Temp
for /f "delims=" %%i in (TargetDirs.opml) do copy "%1" "TempCopy" && call ReplaceWithThis.bat %%i && Type TempCopy >> Temp && del /f TempCopy
del /f %1 
copy Temp %1
del /f Temp
)