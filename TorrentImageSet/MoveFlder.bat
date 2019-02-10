set OriginalDir=%cd%
cd D:\paradise\stuff\new
echo %OriginalDir%
FOR /D /r %%G in ("*iMAGESET*") DO echo "%%G" 

pause