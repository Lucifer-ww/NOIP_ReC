@echo off
if "%1"=="" goto loop
echo TEST
echo Test%1
copy mul%1.in mul.in >nul
time <enter
mul
time <enter
fc mul%1.out mul.out
pause
del mul.in
del mul.out
goto end
:loop
  for %%i in (1 2 3 4 5) do call %0 %%i
:end