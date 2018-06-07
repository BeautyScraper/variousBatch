set file1=backupFileList.txt
for /f "delims=" %%i in (%file1%) do call ../FastCopy.bat "%%i" "%_packupDrive%%%~pi" 