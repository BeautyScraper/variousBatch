
set selDir=C:\Users\HP\Downloads\Compressed\rebuilt.etos-faceswap-master\etos-faceswap-master\results\matching
set inDir="C:\Users\HP\Downloads\Compressed\rebuilt.etos-faceswap-master\etos-faceswap-master\results"
set selDir2=C:\Users\HP\Downloads\Compressed\rebuilt.etos-faceswap-master\etos-faceswap-master\results\NewFaces
set selDir3=C:\Users\HP\Downloads\Compressed\rebuilt.etos-faceswap-master\etos-faceswap-master\results\GoodSource







del /f Scanned.opml
del /f Selected.opml
del /f RSelected.opml
del /f MSelected.opml
python "D:\Developed\Automation\ImgSelector\whoreCounselling.py" "%inDir%"
for /f "delims=" %%i in (Selected.opml) do xcopy "%%i" "%selDir2%" && del /f "%%i"
for /f "delims=" %%i in (MSelected.opml) do xcopy "%%i" "%selDir3%" && del /f "%%i"
for /f "delims=" %%i in (RSelected.opml) do xcopy "%%i" "%selDir%" && del /f "%%i"
for /f "delims=" %%i in (scanned.opml) do del /f "%%i"


Set _dummy="%temp:inisterBabe=%"
IF NOT %_dummy% == "%temp%" (python "D:\Developed\Automation\python\sinisterHtml.py") ELSE (ECHO .)



python ..\python\ifVeryLessFIle.py "%inDir%" 5



::python HeartQueensName.py >> heartQueens.txt
::xcopy D:\paradise\stuff\Images\permanent\2* C:\Users\Alind\PycharmProjects\ImgDownloader\chosen\