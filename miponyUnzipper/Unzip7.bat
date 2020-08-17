dir *.rar /s /b > rarlist.txt
dir *.zip /s /b >> rarlist.txt
REM call copyToRoot.bat ".\sb-stl\"
"D:\Developed\Automation\fnr\fnr.exe" --cl --dir "C:\Heaven\Compressed" --fileMask "*.txt" --excludeFileMask "*.dll, *.exe" --includeSubDirectories --useRegEx --find ".rar|.zip" --replace ""
for /f %%f in (rarlist.txt) do "C:\Program Files (x86)\7-Zip\7z.exe" x "%%f.zip" -o"%%f\" && xcopy "%%f.zip" .\Done\ && del /f "%%f.zip" && call copyToRoot.bat "%%f"
for /f %%f in (rarlist.txt) do "C:\Program Files (x86)\7-Zip\7z.exe" x "%%f.rar" -o"%%f\" && xcopy "%%f.rar" .\Done\ && del /f "%%f.rar" && call copyToRoot.bat "%%f"
pause
