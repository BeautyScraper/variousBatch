set inD=C:\GalImgs\BabesImgs

set selDir=D:\paradise\stuff\Images\heartThrober
set inDir=%inD%
set selDir2=D:\paradise\stuff\Images\Chudvati
set selDir3=D:\paradise\stuff\Images\littleToImagination
set selDir4=D:\paradise\stuff\Images\FaceSwap




Set _dummy="%temp:rtiFacia=%"
IF NOT %_dummy% == "%temp%" (set selDir=D:\paradise\stuff\Images\Warriors) ELSE (ECHO .)


Set _dummy="%temp:inisterBabe=%"
IF NOT %_dummy% == "%temp%" (set selDir2=C:\Heaven\Haven\NayaMaal) ELSE (ECHO .)




del /f Scanned.opml
del /f Selected.opml
del /f RSelected.opml
del /f MSelected.opml
del /f ADSelected.opml
python "D:\Developed\Automation\ImgSelector\whoreCounselling.py" "%inDir%"
for /f "delims=" %%i in (Selected.opml) do xcopy "%%i" "%selDir%" 
for /f "delims=" %%i in (MSelected.opml) do xcopy "%%i" "%selDir2%" 
for /f "delims=" %%i in (RSelected.opml) do xcopy "%%i" "%selDir3%"
for /f "delims=" %%i in (ADSelected.opml) do xcopy "%%i" "%selDir4%" && del /f "%%i"
for /f "delims=" %%i in (scanned.opml) do del /f "%%i"


Set _dummy="%temp:inisterBabe=%"
IF NOT %_dummy% == "%temp%" (python "D:\Developed\Automation\python\sinisterHtml.py") ELSE (ECHO .)



python ..\python\ifVeryLessFIle.py "%inDir%" 5



::python HeartQueensName.py >> heartQueens.txt
::xcopy D:\paradise\stuff\Images\permanent\2* C:\Users\Alind\PycharmProjects\ImgDownloader\chosen\