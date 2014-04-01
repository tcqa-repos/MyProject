@echo on
FOR /D %%F in ("*") DO (pushd %CD% & cd %%F & FOR %%X in (*.*) DO ( set file=%%X & echo %file%  
  IF NOT [%file%]==[] echo ##teamcity[testStarted name='%file%'] & echo ##teamcity[testFinished name='%file%'] ) & popd )
