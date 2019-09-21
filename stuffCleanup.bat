del /s /f/q D:\paradise\stuff\new\*.txt
del /s /f/q D:\paradise\stuff\new\*.nfo
del /s /f/q D:\paradise\stuff\new\*.nfo
del /s /f/q D:\paradise\stuff\new\*更*
del /s /f/q D:\paradise\stuff\new\RARBG*.exe
for /f "delims=" %%d in ('dir /s /b /ad D:\paradise\stuff\new\ ^| sort /r') do rd "%%d"
for /f "delims=" %%d in ('dir /s /b /ad C:\GalImgs\incomplete\comics\ ^| sort /r') do rd "%%d"