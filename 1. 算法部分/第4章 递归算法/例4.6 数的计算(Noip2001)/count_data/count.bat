@echo off
if "%1"=="" goto loop
echo TEST
echo Test%1
copy count%1.in count.in >nul
time <enter
count
time <enter
fc count%1.out count.out
pause
del count.in
del count.out
goto end
:loop
  for %%i in (1 2 3 4 5 6 7 8 9 10) do call %0 %%i
:end