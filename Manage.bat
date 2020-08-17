rd /s/q D:\paradise\stuff\Scanned\SEEN

cd /d %~dp0
python "..\python\cutter.py"
del /q/f ..\inHaste\99.txt
del /q/f ..\inHaste\AB.txt
call FmoveBytxt.bat ..\inHaste\9.txt D:\paradise\interesting
call XdivisionCatalog.bat
call FmoveBytxt.bat ..\inHaste\7.txt D:\paradise\stuff\Essence\G1Movies
call FmoveBytxt.bat ..\inHaste\6.txt D:\paradise\stuff\Essence\EverLasting
call FmoveBytxt.bat ..\inHaste\5.txt D:\paradise\stuff\SoLong
call FmoveBytxt.bat ..\inHaste\4.txt D:\paradise\stuff\Essence\Art\Pavitra
call FmoveBytxt.bat ..\inHaste\3.txt D:\paradise\stuff\Essence\Art\Sanskari
call FmoveBytxt.bat ..\inHaste\2.txt D:\paradise\stuff\Essence\Art\randy

call FmoveBytxt.bat ..\inHaste\1.txt D:\paradise\stuff\Scanned
call FmoveBytxt.bat ..\inHaste\Ace.txt D:\paradise\stuff\Essence\Animation
call FmoveBytxt.bat ..\inHaste\wwe.txt D:\paradise\Wrestling\Other
call FmoveBytxt.bat ..\inHaste\game.txt D:\paradise\stuff\Essence\Sharmili
call FmoveBytxt.bat ..\inHaste\songs.txt D:\paradise\Music
call FmoveBytxt.bat ..\inHaste\tv.txt D:\paradise\Series\organized
call FmoveBytxt.bat ..\inHaste\films.txt D:\paradise\Movies
call FmoveBytxt.bat ..\inHaste\Haya.txt D:\paradise\stuff\Essence\HayaKeSath

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
