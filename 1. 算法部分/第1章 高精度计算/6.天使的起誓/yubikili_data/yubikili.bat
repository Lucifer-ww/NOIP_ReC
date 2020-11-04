@echo off
if "%1"=="" goto loop
echo TEST
echo Test%1
copy yubikili%1.in yubikili.in >nul
time <enter
yubikili
time <enter
fc yubikili%1.out yubikili.out
pause
del yubikili.in
del yubikili.out
goto end
:loop
  for %%i in (1 2 3 4 5) do call %0 %%i
:end