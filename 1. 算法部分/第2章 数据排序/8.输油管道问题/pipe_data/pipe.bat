@echo off
if "%1"=="" goto loop
echo TEST
echo Test%1
copy pipe%1.in pipe.in >nul
time <enter
pipe
time <enter
fc pipe%1.out pipe.out
pause
del pipe.in
del pipe.out
goto end
:loop
  for %%i in (0 1 2 3 4 5 6 7 8 9 10) do call %0 %%i
:end