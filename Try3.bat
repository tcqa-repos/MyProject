@echo on
@setlocal enabledelayedexpansion
@FOR /D %%F in ("*") DO (
    @pushd %CD% & cd %%F
    @FOR %%X in (*.*) DO (
        @set file=%%X
        @echo !file!  
        @IF NOT [%file%]==[] DO (
            @echo ##teamcity[testStarted name='%file%']
            @echo ##teamcity[testFinished name='%file%'] ) )
@popd )
