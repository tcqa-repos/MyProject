@echo on
FOR /D %%F in ("*") DO (pushd %CD% & cd %%F & FOR %%X in (*.*) DO ( set current_file=%%X & echo %%X 
  IF NOT [%current_file%]==[] echo ##teamcity[testStarted name='%current_file%'] & echo ##teamcity[testFinished name='%current_file%'] ) & popd )
