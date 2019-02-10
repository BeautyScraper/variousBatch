set comicPath="D:\paradise\stuff\comics\PleasureRead\"

set inD=C:\GalImgs\comics
dir /b %inD% > temp
python "D:\Developed\Automation\python\randomizeFile.py" temp
call ..\GettingVariableFromFile.bat temp

set selDir=D:\paradise\stuff\comics\ComicExcerpts
set inDir=%inD%\%temp%
set selDir2=D:\paradise\stuff\Images\Chudvati
set selDir3=D:\paradise\stuff\Images\littleToImagination





Set _dummy="%temp:rtiFacia=%"
IF NOT %_dummy% == "%temp%" (set selDir=D:\paradise\stuff\Images\Warriors) ELSE (ECHO .)


Set _dummy="%temp:inisterBabe=%"
IF NOT %_dummy% == "%temp%" (set selDir3=C:\Heaven\Haven\NayaMaal) ELSE (ECHO .)




del /f Scanned.opml
del /f Selected.opml
del /f RSelected.opml
del /f MSelected.opml
python "D:\Developed\Automation\ImgSelector\whoreCounselling.py" "%inDir%"
for /f "delims=" %%i in (Selected.opml) do call excerpts.bat "%%i" %selDir%
set _tempDir=D:\GalImgs\comics
for /f "delims=" %%i in (MSelected.opml) do md D:%%~pi && xcopy %%~dpi. D:%%~pi && rd /s/q %%~dpi
xcopy /s/c/r/y %_tempDir% D:\paradise\stuff\comics\PleasureRead && rd /s/q %_tempDir%
for /f "delims=" %%i in (RSelected.opml) do rd /s/q %%~dpi
pause
