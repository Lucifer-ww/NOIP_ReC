@echo off
if "%1"=="" goto loop
copy missile%1.in missile.in >nul
echo Problem Test
echo Data %1
time<enter
missile
time<enter
fc missile.out missile%1.out
pause
goto end
:loop
for %%i in (0 1 2 3 4 5 6 7 8 9) do call %0 %%i
:end
