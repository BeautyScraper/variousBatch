

set inDir="D:\paradise\stuff\Essence\FS\BahuJaisi"


del /f Scanned.opml
del /f Selected.opml
del /f RSelected.opml
del /f MSelected.opml
python "D:\Developed\Automation\ImgSelector\whoreCounsellingRand.py" "%inDir%"
for /f "delims=" %%i in (Selected.opml) do python "D:\Developed\Automation\python\rename.py" "%%i" 
REM for /f "delims=" %%i in (MSelected.opml) do xcopy "%%i" "%selDir3%" && del /f "%%i"
REM for /f "delims=" %%i in (RSelected.opml) do xcopy "%%i" "%selDir%" && del /f "%%i"


