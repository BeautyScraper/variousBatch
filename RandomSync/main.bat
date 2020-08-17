
for %%i in (A,B,C,D,E,F,G,H,I,J,K) do call checkLetter %%i



IF DEFINED _packupDrive (
copy catalog.txt Catalogue.txt 
"D:\Developed\Automation\fnr\fnr.exe" --cl --dir "D:\Developed\Automation\Batch\RandomSync" --fileMask "cat*e.txt" --excludeFileMask "*.dll, *.exe" --useRegEx --find "Ex:" --replace "%_packupDrive%"
pause
call MtherShipCalling.bat
echo hello
del Catalogue.txt 
) else (
echo BYE BYE nothing to do here
)
