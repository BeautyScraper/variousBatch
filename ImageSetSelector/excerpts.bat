set _test=%~dp1

set selDir=%2

copy %1 "%selDir%\newPage.jpg"
set _newNameV1=%_test:D:\paradise\stuff\new\imageset2=%pgNum%~nx1
set _newNameV2=%_newNameV1:\=%
ren "%selDir%\newPage.jpg" "%_newNameV2%"
