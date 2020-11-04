@echo off
if "%1"=="" goto loop
echo TEST
echo Test%1
copy ski%1.in ski.in >nul
time <enter
ski
time <enter
fc ski%1.out ski.out
pause
del ski.in
del ski.out
goto end
:loop
  for %%i in (1 2 3 4 5 6 7 8 9 10) do call %0 %%i
:end