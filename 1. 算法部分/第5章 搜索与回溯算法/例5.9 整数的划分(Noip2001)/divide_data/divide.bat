@echo off
if "%1"=="" goto loop
echo TEST
echo Test%1
copy divide%1.in divide.in >nul
time <enter
divide
time <enter
fc divide%1.out divide.out
pause
del divide.in
del divide.out
goto end
:loop
  for %%i in (1 2 3 4 5) do call %0 %%i
:end