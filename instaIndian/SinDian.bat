python "D:\Developed\Automation\python\aStarIsBorn.py" C:\PersonalBuffer\NayiPatni\ 1 "D:\Developed\Automation\Batch\instaIndian\heartQueens.txt"
del /q/f C:\PersonalBuffer\NayiPatni\*
@echo off
for /f "delims=" %%i in (D:\Developed\Automation\Batch\instaIndian\heartQueens.txt) do xcopy /y D:\paradise\stuff\sinisterVideos\%%i* D:\paradise\stuff\sanskariVideos\ && del /q/f D:\paradise\stuff\sinisterVideos\%%i
