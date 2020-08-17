REM Dnt put \ at the end of paths here
set Local=%1
set Remote=%2
set fileNum=%3
call ..\FastCopy.bat %Local% %Remote%
Call RandCopy.bat %Remote% %Local% %fileNum%