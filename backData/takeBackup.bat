for %%i in (A,B,C,D,E,F,G,H) do call checkLetter %%i



IF DEFINED _packupDrive (
call actualPacker.bat
echo hello
) else (
echo BYE BYE nothing to do here
)