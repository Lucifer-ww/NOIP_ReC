@echo off
if "%1"=="" goto loop
echo TEST
echo Test%1
copy group%1.in group.in >nul
time <enter
group
time <enter
fc group%1.out group.out
pause
del group.in
del group.out
goto end
:loop
  for %%i in (0 1 2 3 4 5 6 7 8 9) do call %0 %%i
:end