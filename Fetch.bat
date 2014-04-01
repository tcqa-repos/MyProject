@echo on
FOR /f "delims=" %%i in ('"D:\Tools\curl.exe" -v --basic --user %username%:%password% --request GET https://buildserver.labs.intellij.net/httpAuth/app/rest/artifacts?locator=id:TC_Trunk_BuildDist' ) do set output = %%i
echo %output%
