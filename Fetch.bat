@echo on
FOR /f "delims=" %%i in ('"D:\Tools\curl.exe" GET https://%username%:%password%@buildserver/httpAuth/app/rest/artifacts?locator=id:TC_Trunk_BuildDist' ) do set output = %%i
echo %output%
