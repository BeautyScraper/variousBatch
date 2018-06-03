del /s /f/q D:\paradise\stuff\new\*.txt
del /s /f/q D:\paradise\stuff\new\*.nfo
for /f "delims=" %%d in ('dir /s /b /ad D:\paradise\stuff\new\ ^| sort /r') do rd "%%d"
for /f "delims=" %%d in ('dir /s /b /ad C:\GalImgs\incomplete\comics\ ^| sort /r') do rd "%%d"