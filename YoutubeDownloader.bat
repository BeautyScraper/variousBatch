python "..\python\alreadyDone.py"
cd /d D:\Developed\Automation\Batch


findstr "youtube.com/channel/" "D:\Developed\Automation\inHaste\quicKlip.txt" >> "D:\Developed\Automation\GalleryDownloader\babesource.opml"
findstr /v "youtube.com/channel/" "D:\Developed\Automation\inHaste\quicKlip.txt" > "D:\Developed\Automation\inHaste\temp.txt"
del /f "D:\Developed\Automation\inHaste\quicKlip.txt"
ren "D:\Developed\Automation\inHaste\temp.txt" quicKlip.txt



findstr "youtube.com/user" "D:\Developed\Automation\inHaste\quicKlip.txt" >> "D:\Developed\Automation\GalleryDownloader\babesource.opml"
findstr /v "youtube.com/user" "D:\Developed\Automation\inHaste\quicKlip.txt" > "D:\Developed\Automation\inHaste\temp.txt"
del /f "D:\Developed\Automation\inHaste\quicKlip.txt"
ren "D:\Developed\Automation\inHaste\temp.txt" quicKlip.txt




findstr "youtube.com" "D:\Developed\Automation\inHaste\quicKlip.txt" >> uTubeLinks.txt
findstr /v "youtube.com" "D:\Developed\Automation\inHaste\quicKlip.txt" > "D:\Developed\Automation\inHaste\temp.txt"
del /f "D:\Developed\Automation\inHaste\quicKlip.txt"
ren "D:\Developed\Automation\inHaste\temp.txt" quicKlip.txt




 
python "D:\Developed\Automation\python\randomizeFile.py"
cd /d D:\paradise\Youtube
D:\Developed\Automation\Batch\youtube-dl --no-playlist --download-archive  D:\Developed\Automation\Batch\completed.txt -a D:\Developed\Automation\Batch\uTubeLinks.txt 
echo %errorlevel%
set WINSCP_RESULT=%ERRORLEVEL%
if %WINSCP_RESULT% equ 0 (
  echo Success
  del /f D:\Developed\Automation\Batch\uTubeLinks.txt
  start D:\paradise\Youtube
) else (
  timeout 60
  echo Error
  cd /d D:\Developed\Automation\Batch
  call YoutubeDownloader.bat
)
