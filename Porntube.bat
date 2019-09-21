python "D:\Developed\Automation\python\extractMatchingLines.py" D:\Developed\Automation\inHaste\quicKlip.txt pornhub >> D:\Developed\Automation\Batch\chudengi.txt
python "D:\Developed\Automation\python\extractMatchingLines.py" D:\Developed\Automation\inHaste\quicKlip.txt xvideos.com >> D:\Developed\Automation\Batch\chudengi.txt
python "D:\Developed\Automation\python\extractMatchingLines.py" D:\Developed\Automation\inHaste\quicKlip.txt mrdeepfakes.com >> D:\Developed\Automation\Batch\chudengi.txt
python "D:\Developed\Automation\python\extractMatchingLines.py" D:\Developed\Automation\inHaste\quicKlip.txt spankbang.com >> D:\Developed\Automation\Batch\chudengi.txt


python ..\getProxy\getFreeProxy.py
call GettingVariableFromFile.bat TProxy
del TProxy



cd /d C:\Heaven\Haven\pornTubes
REM D:\Developed\Automation\Batch\youtube-dl --verbose --download-archive D:\Developed\Automation\Batch\ChudiHuyi.txt -a D:\Developed\Automation\Batch\chudengi.txt --proxy %TProxy%
D:\Developed\Automation\Batch\youtube-dl --verbose --download-archive D:\Developed\Automation\Batch\ChudiHuyi.txt -a D:\Developed\Automation\Batch\chudengi.txt
echo %errorlevel%
set WINSCP_RESULT=%ERRORLEVEL%
if %WINSCP_RESULT% equ 0 (
  echo Success
  del /f D:\Developed\Automation\Batch\chudengi.txt
  start C:\Heaven\Haven\pornTubes
) else (
  timeout 60
  echo Error
  cd /d D:\Developed\Automation\Batch
  call Porntube.bat
)
