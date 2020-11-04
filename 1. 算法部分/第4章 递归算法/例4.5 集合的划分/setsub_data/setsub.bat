@echo off
if "%1"=="" goto loop
echo TEST
echo Test%1
copy set%1.in set.in >nul
time <enter
setsub
time <enter
fc setsub%1.out setsub.out
pause
del setsub.in
del setsub.out
goto end
:loop
  for %%i in (1 2 3 4 5) do call %0 %%i
:end