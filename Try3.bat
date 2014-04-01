@echo on
FOR /D %%F in ("*") DO (pushd %CD% & cd %%F & FOR %%X in (*.exe *.dll) DO ( set current_file=%%F\%%X & echo %current_file% 
        echo ##teamcity[testStarted name='current_file'] ) & popd )
