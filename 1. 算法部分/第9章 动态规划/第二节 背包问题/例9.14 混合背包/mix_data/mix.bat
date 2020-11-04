@echo off
if "%1"=="" goto loop
echo TEST
echo Test%1
copy mix%1.in mix.in >nul
time <enter
mix
time <enter
fc mix%1.out mix.out
pause
del mix.in
del mix.out
goto end
:loop
  for %%i in (0 1 2 3 4 5 6 7 8 9 10) do call %0 %%i
:end