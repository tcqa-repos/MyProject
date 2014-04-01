@echo on

REM signature verification
FOR /D /r %%F in ("*") DO (pushd %CD% & cd %%F
    FOR %%X in (*.exe *.dll) DO ( set current_file=%%X & echo %current_file% 
        echo "##teamcity[testStarted name='%current_file%']"
        FOR /f "delims=" %%i in ('"D:\Tools\SignTool\signtool.exe" verify /pa %%X 2^>^&1') do set output=%%i
	If NOT "%output%"=="%output:Successfully verified=%" (
            echo ##teamcity[name='%current_file%' message='%output%']
	) else (echo ##teamcity[testFailed name='%current_file%' message='%output%'])
        echo ##teamcity[testFinished name='%current_file%']
    )
    popd
)
