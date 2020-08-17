
REM for /R "%1" %%G in (*.png *.jpg *.jpeg *.gif) do echo copy "%%G" %1 
for /R "%1" %%G in (*.png *.jpg *.jpeg *.gif) do copy "%%G" "%1" && del /f "%%G"
