
for %%i in (%1) do set parentDir=%%~ni
for /R %1 %%x in (*.*) do ren "%%x" "%parentDir%_%%~nx.jpg"
