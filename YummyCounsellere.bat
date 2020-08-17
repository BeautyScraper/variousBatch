
set selDir=D:\paradise\stuff\Essence\FS\littleBetter
set inDir=D:\paradise\stuff\Essence\FS\DekhoKaiseChdvaRahiHai
set selDir2=D:\paradise\stuff\Essence\FS\RejectX
set selDir3=D:\paradise\stuff\Essence\FS\SachMe







del /f Scanned.opml
del /f Selected.opml
del /f RSelected.opml
del /f MSelected.opml
python "D:\Developed\Automation\ImgSelector\whoreCounsellingRand.py" "%inDir%"
for /f "delims=" %%i in (Selected.opml) do  xcopy "%%i" "%selDir2%" && del /f "%%i"
for /f "delims=" %%i in (MSelected.opml) do xcopy "%%i" "%selDir2%" && del /f "%%i"
for /f "delims=" %%i in (RSelected.opml) do xcopy "%%i" "%selDir3%" && del /f "%%i"
for /f "delims=" %%i in (scanned.opml) do xcopy "%%i" "%selDir%" && del /f "%%i"
REM for /f "delims=" %%i in (scanned.opml) do del /f "%%i"


Set _dummy="%temp:inisterBabe=%"
IF NOT %_dummy% == "%temp%" (python "D:\Developed\Automation\python\sinisterHtml.py") ELSE (ECHO .)



python ..\python\ifVeryLessFIle.py "%inDir%" 5



::python HeartQueensName.py >> heartQueens.txt
::xcopy D:\paradise\stuff\Images\permanent\2* C:\Users\Alind\PycharmProjects\ImgDownloader\chosen\