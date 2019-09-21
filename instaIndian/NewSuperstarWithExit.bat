python "D:\Developed\Automation\python\aStarIsBorn.py" C:\PersonalBuffer\NayiPatni\ 1 "D:\Developed\Automation\Batch\instaIndian\heartQueens.txt"
del /q/f C:\PersonalBuffer\NayiPatni\*

for /f "delims=" %%i in (D:\Developed\Automation\Batch\instaIndian\heartQueens.txt) do xcopy D:\paradise\stuff\sinisterBabes\%%i* D:\paradise\stuff\BhartiyeNaari\ && del /q/f D:\paradise\stuff\sinisterBabes\%%i*
exit