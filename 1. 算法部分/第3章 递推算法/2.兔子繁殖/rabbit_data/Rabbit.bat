@echo off
if "%1"=="" goto loop
echo TEST
echo Test%1
copy Rabbit%1.in Rabbit.in >nul
time <enter
Rabbit
time <enter
fc Rabbit%1.out Rabbit.out
pause
del Rabbit.in
del Rabbit.out
goto end
:loop
  for %%i in (1 2 3 4 5 6 7 8 9 10) do call %0 %%i
:end