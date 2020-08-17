
set selDir=D:\paradise\stuff\Essence\FS\DekhoKaiseChdvaRahiHai
set inDir="C:\Games\Sacred2"
set selDir2=D:\paradise\stuff\Essence\FS\BahuJaisi
set selDir3=C:\Games\MultiFaces
set selDir4=C:\Heaven\YummyBaker
set selDir5=D:\Developed\FaceSwapExperimental\Pavitra







del /f Scanned.opml
del /f Selected.opml
del /f RSelected.opml
del /f MSelected.opml
del /f RSelected.opml
del /f ADSelected.opml
del /f ADSelected1.opml
del /f 45Selected.opml

python "D:\Developed\Automation\ImgSelector\whoreCounselling.py" %inDir%


REM python "D:\Developed\FaceSwapExperimental\filelLink.py" "D:\Developed\FaceSwapExperimental\DeviDB.map" ADSelected.opml ADSelected1.opml 1
REM python "D:\Developed\FaceSwapExperimental\filelLink.py" "D:\Developed\FaceSwapExperimental\DeviDB.map" ADSelected.opml ADSelected1.opml 1


ren Selected.opml temp.opml
ren ADSelected.opml Selected.opml
ren temp.opml ADSelected.opml

for /f "delims=" %%i in (Selected.opml) do xcopy  /y "%%i" "%selDir2%" && del /f "%%i"
for /f "delims=" %%i in (RSelected.opml) do xcopy /y "%%i" "%selDir%" && del /f "%%i"


call fnrSelecter.bat ".\MSelected.opml"
call fnrSelecter.bat ".\ADSelected.opml"
call fnrSelecter.bat ".\45Selected.opml"

REM python "D:\Developed\Automation\python\SandH.py"
for /f "delims=" %%i in (MSelected.opml) do xcopy /Y "%%i" "%selDir3%" 
for /f "delims=" %%i in (ADSelected.opml) do xcopy /Y "%%i" "%selDir4%" 
for /f "delims=" %%i in (45Selected.opml) do xcopy /Y "%%i" "%selDir5%" 
for /f "delims=" %%i in (scanned.opml) do del /f "%%i"

Set _dummy="%temp:inisterBabe=%"
IF NOT %_dummy% == "%temp%" (python "D:\Developed\Automation\python\sinisterHtml.py") ELSE (ECHO .)



python ..\python\ifVeryLessFIle.py "%inDir%" 5



::python HeartQueensName.py >> heartQueens.txt
::xcopy D:\paradise\stuff\Images\permanent\2* C:\Users\Alind\PycharmProjects\ImgDownloader\chosen\