@echo off
if "%1"=="" goto loop
echo TEST
echo Test%1
copy masses%1.in masses.in >nul
time <enter
masses
time <enter
fc  masses%1.out   masses.out  
pause
del masses.in
del masses.out
goto end
:loop
  for %%i in (1 2 3 4 5 6 7 8 9 10) do call %0 %%i
:end