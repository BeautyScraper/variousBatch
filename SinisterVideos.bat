CALL "D:\Developed\Automation\Batch\instaIndian\SinDian.bat"

set inDir=D:\paradise\stuff\sinisterVideos
set selDir=C:\temp\SelectedVideos
set selDir2=F:\Paradise\stuff\Filtered\hardcore
set selDir3=C:\PersonalBuffer\NayiPatni
del /f Scanned.opml
del /f Selected.opml
del /f RSelected.opml
del /f MSelected.opml
python "D:\Developed\Automation\ImgSelector\Swayambar.py" %inDir%
for /f "delims=" %%i in (Selected.opml) do xcopy "%%i" "%selDir%" && del /f "%%i" 
for /f "delims=" %%i in (MSelected.opml) do xcopy "%%i" "%selDir2%" && del /f "%%i" 
for /f "delims=" %%i in (RSelected.opml) do xcopy "%%i" "%selDir3%" && del /f "%%i"
for /f "delims=" %%i in (scanned.opml) do del /f "%%i"
REM python HeartQueensName.py >> heartQueens.txt
::xcopy D:\paradise\stuff\Images\permanent\2* C:\Users\Alind\PycharmProjects\ImgDownloader\chosen\
::del /f/q D:\paradise\stuff\Images\permanent\2\*