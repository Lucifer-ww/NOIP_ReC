@echo off
if "%1"=="" goto loop
copy Queen%1.in Queen.in >nul
echo Problem Test
echo Data %1
Queen
fc Queen.out Queen%1.out
pause
goto end
:loop
for %%i in (1 2 3 4 5) do call %0 %%i
:end
