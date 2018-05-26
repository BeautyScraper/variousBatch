

for /f "delims=" %%i in (heartQueens.txt) do xcopy *%%i* inKoChodo\ && del /q/f *%%i*
for /f "delims=" %%i in (include.txt) do xcopy *%%i* inKoChodo\ && del /q/f *%%i*
md ChudwaLetiTohKyaJata\
for /f "delims=" %%i in (exclude.txt) do xcopy "*%%i*" ChudwaLetiTohKyaJata\ && del /q/f "*%%i*"
rd /s/q ChudwaLetiTohKyaJata
::for /f "delims=" %%i in (exclude.txt) do del /q/f *%%i*
set inDir=.\
set selDir=inKoChodo\
set selDir2=F:\Paradise\stuff\Filtered\hardcore
set selDir3=permanent\
del /f Scanned.opml
del /f Selected.opml
del /f RSelected.opml
del /f MSelected.opml
python "D:\Developed\Automation\ImgSelector\Swayambar.py" %inDir%
for /f "delims=" %%i in (Selected.opml) do xcopy "%%i" "%selDir%" && del /f "%%i" 
for /f "delims=" %%i in (MSelected.opml) do xcopy "%%i" "%selDir2%" && del /f "%%i" 
for /f "delims=" %%i in (RSelected.opml) do xcopy "%%i" "%selDir3%" && del /f "%%i"
for /f "delims=" %%i in (scanned.opml) do del /f "%%i"
python "D:\Developed\Automation\python\aStarIsBorn.py" permanent\2 2 include.txt
xcopy permanent\2\* inKoChodo\ && del /q/f permanent\2\*
python "D:\Developed\Automation\ImgSelector\Harlotation.py" %selDir% >> "D:\Developed\Automation\GalleryDownloader\galleryLinks.opml"
del /q/f %selDir%\*