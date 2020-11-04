@echo off
if "%1"=="" goto loop
echo TEST
echo Test%1
copy inde%1.in inde.in >nul
time <enter
inde
time <enter
fc inde%1.out inde.out
pause
del inde.in
del inde.out
goto end
:loop
  for %%i in (0 1 2 3 4 5 6) do call %0 %%i
:end