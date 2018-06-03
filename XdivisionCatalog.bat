set file1=..\inHaste\8.txt
for /f "delims=" %%i in (%file1%) do call XDivision "%%i"
del %file1%