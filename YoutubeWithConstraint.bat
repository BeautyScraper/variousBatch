
cd /d D:\Developed\Automation\Batch
findstr "youtube.com" "D:\Developed\Automation\inHaste\quicKlip.txt" >> uTubeLinksWithConstraint.txt
findstr /v "youtube.com" "D:\Developed\Automation\inHaste\quicKlip.txt" > "D:\Developed\Automation\inHaste\temp.txt"
del /f "D:\Developed\Automation\inHaste\quicKlip.txt"
ren "D:\Developed\Automation\inHaste\temp.txt" quicKlip.txt 

cd /d D:\paradise\Youtube\Dota
D:\Developed\Automation\Batch\youtube-dl -f 136+140 --no-playlist --download-archive  D:\Developed\Automation\Batch\completedC.txt -a D:\Developed\Automation\Batch\uTubeLinksWithConstraint.txt --match-title "(Dota| vs )" 
echo %errorlevel%
set WINSCP_RESULT=%ERRORLEVEL%
if %WINSCP_RESULT% equ 0 (
  echo Success
  REM del /f D:\Developed\Automation\Batch\uTubeLinksWithConstraint.txt
  start D:\paradise\Youtube\Dota
) else (
  timeout 6
  echo Error
  cd /d D:\Developed\Automation\Batch
  call YoutubeWithConstraint.bat
)
