@echo off
if "%1"=="" goto loop
echo TEST
echo Test%1
copy area%1.in area.in >nul
time <enter
area
time <enter
fc area%1.out area.out
pause
del area.in
del area.out
goto end
:loop
  for %%i in (1 2 3 4 5) do call %0 %%i
:end