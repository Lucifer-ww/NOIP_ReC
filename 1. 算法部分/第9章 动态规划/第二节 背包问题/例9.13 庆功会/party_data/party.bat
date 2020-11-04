@echo off
if "%1"=="" goto loop
echo TEST
echo Test%1
copy party%1.in party.in >nul
time <enter
party
time <enter
fc party%1.out party.out
pause
del party.in
del party.out
goto end
:loop
  for %%i in (1 2 3 4 5 6 7 8 9 10) do call %0 %%i
:end