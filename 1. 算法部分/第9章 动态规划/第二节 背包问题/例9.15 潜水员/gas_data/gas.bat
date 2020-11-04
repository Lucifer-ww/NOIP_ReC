@echo off
if "%1"=="" goto loop
copy gas%1.in gas.in >nul
echo Problem Test
echo Data %1
gas
fc gas.out gas%1.out
del gas.in
del gas.out
pause
goto end
:loop
for %%i in (1 2 3 4 5) do call %0 %%i
:end
