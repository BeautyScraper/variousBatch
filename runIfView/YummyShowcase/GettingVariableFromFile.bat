python ..\..\python\randomizeFile.py %1
for /f "delims=" %%i in (%1) do set %1=%%i