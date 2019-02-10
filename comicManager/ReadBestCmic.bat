set comicPath="D:\paradise\stuff\comics\PleasureRead\"

set inD=D:\paradise\stuff\comics\PleasureRead
dir /b %inD% > temp
python "D:\Developed\Automation\python\randomizeFile.py" temp
call ..\GettingVariableFromFile.bat temp

set selDir=D:\paradise\stuff\comics\ComicExcerpts
set inDir=%inD%\%temp%
set selDir2=D:\paradise\stuff\Images\Chudvati
set selDir3=D:\paradise\stuff\Images\littleToImagination


Start %inDir%
