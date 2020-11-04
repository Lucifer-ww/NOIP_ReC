@echo off
if "%1"=="" goto loop
echo TEST
echo Test%1
copy lic%1.in lic.in >nul
time <enter
lic
time <enter
fc lic%1.out lic.out
pause
del lic.in
del lic.out
goto end
:loop
  for %%i in (0 1 2 3 4 5 6 7 8 9) do call %0 %%i
:end