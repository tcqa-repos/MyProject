@echo on
set var1=test 1 w e
set %%x=%var1%
echo %%x
For %%i in (*) do set var3=%%i & echo %%i
echo %var3%
