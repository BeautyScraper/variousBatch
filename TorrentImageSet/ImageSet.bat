set OriginalDir=%cd%
cd D:\paradise\stuff\new
echo %OriginalDir%
FOR /D /r %%G in ("*iMAGESET*") DO call %OriginalDir%\RenameAccordingToParent.bat "%%G"

pause