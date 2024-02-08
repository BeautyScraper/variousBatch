rd /s/q D:\paradise\stuff\Scanned\SEEN


python D:\Developed\Automation\Batch\smartdivider.py

cd /d %~dp0
python "..\python\cutter.py"
del /q/f ..\inHaste\99.txt
del /q/f ..\inHaste\AB.txt
python "D:\Developed\Automation\Batch\SmartMover\SmartMover.py"
call FmoveBytxt.bat ..\inHaste\Haya.txt D:\paradise\stuff\Essence\HayaKeSath
call FmoveBytxt.bat ..\inHaste\9.txt D:\paradise\interesting
call XdivisionCatalog.bat
call FmoveBytxt.bat ..\inHaste\7.txt D:\paradise\stuff\Essence\G1Movies
call FmoveBytxt.bat ..\inHaste\6.txt D:\paradise\stuff\Essence\EverLasting
call FmoveBytxt.bat ..\inHaste\5.txt D:\paradise\stuff\new\pvd2
call FmoveBytxt.bat ..\inHaste\4.txt D:\paradise\stuff\Essence\Art\Pavitra
call FmoveBytxt.bat ..\inHaste\3.txt D:\paradise\stuff\Essence\Art\Sanskari
call FmoveBytxt.bat ..\inHaste\2.txt D:\paradise\stuff\Essence\Art\randy

call FmoveBytxt.bat ..\inHaste\1.txt D:\paradise\stuff\Scanned
call FmoveBytxt.bat ..\inHaste\Ace.txt D:\paradise\stuff\Essence\Animation
call FmoveBytxt.bat ..\inHaste\wwe.txt D:\Developed\VFS\RandyVideo\DoThis
call FmoveBytxt.bat ..\inHaste\game.txt D:\paradise\stuff\Essence\Sharmili
call FmoveBytxt.bat ..\inHaste\songs.txt D:\paradise\Music
call FmoveBytxt.bat ..\inHaste\tv.txt D:\paradise\Series\organized
call FmoveBytxt.bat ..\inHaste\films.txt D:\paradise\Movies

CHOICE /T 10 /D n /m "press y delete all"
if "%ERRORLEVEL%"=="1" (del /q C:\temp\deletable\*.*  && del /q C:\temp\deleatble && del /q C:\dumpinggrounds\sd_residual\masks && rmdir /s/q C:\dumpinggrounds\sd_residual\cropped_faces && mkdir C:\dumpinggrounds\sd_residual\cropped_faces)

CHOICE /T 10 /D n /m "press y delete all from scanned"
if "%ERRORLEVEL%"=="1" (rmdir /s/q D:\paradise\stuff\Scanned && mkdir D:\paradise\stuff\Scanned )

CHOICE /T 10 /D n /m "delete yummyClips "
if "%ERRORLEVEL%"=="1" (del /q D:\paradise\stuff\essence\FS\yummyClips\deletable\*.* )

set curentDir=%cd%

cd /d D:\paradise\stuff\sinisterBabes

ren *.webp *.jpg 

cd /d %curentDir%

REM pause

call "D:\Developed\Automation\Batch\imagesetMover\ImageSetMover.bat"

cd backData\
call takeBackup.bat
cd ..

cd inSync\
call takeBackup.bat
cd ..

cd RandomSync\
call main.bat
cd ..

call stuffCleanup.bat
mkdir D:\paradise\stuff\new\imageset
xcopy /s C:\GalImgs\imageSet D:\paradise\stuff\new\imageset && rmdir /s/q C:\GalImgs\imageSet\ && mkdir C:\GalImgs\imageSet

python "D:\Developed\Automation\mtut\gttof.py" --dirPath C:\GalImgs\GIFS --exts "*.mp4" "*.mkv" --outPath D:\paradise\stuff\new\pvd

python D:\Developed\Automation\Batch\fileCountDecision.py
REM pause

python D:\Developed\jobbers\sd_pipe_helper\main.py