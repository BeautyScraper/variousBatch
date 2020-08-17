dir /b /OD *.jpg > rg.txt
for /f "delims=" %%i in (rg.txt) do set _selLine="%%i"
echo %_selLine%
del /q rg.txt
del /q %_selLine%
pause