set src=%1
REM set src="D:\Developed\Automation\Batch\RandomSync\Source"
set dst=%2
REM set dst="D:\Developed\Automation\Batch\RandomSync\Desstination"
dir /b %src% > temp.txt
set _src=%src:"=%
python "D:\Developed\Automation\python\randomizeFile.py" temp.txt
python "D:\Developed\Automation\python\head.py" temp.txt %3 >temp1.txt
for /f "delims=" %%i in (temp1.txt) do echo "%_src%\%%i">>SelectedFiles.txt 
call ..\FmoveBytxt.bat SelectedFiles.txt %dst%\

del tem*txt