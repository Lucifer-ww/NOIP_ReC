@echo off
if "%1"=="" goto loop
copy money%1.in money.in >nul
echo Problem Test
echo Data %1
time<enter
money
time<enter
fc money.out money%1.out
del money.in
del money.out
pause
goto end
:loop
for %%i in (0 1 2 3 4 5 6 7 8 9) do call %0 %%i
:end
