@echo off
if "%1"=="" goto loop
echo TEST
echo Test%1
copy edit%1.in edit.in >nul
time <enter
edit
time <enter
fc edit%1.out edit.out
pause
del edit.in
del edit.out
goto end
:loop
  for %%i in (0 1 2 3 4 5 6 7 8 9) do call %0 %%i
:end