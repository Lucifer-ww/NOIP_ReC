@echo off
if "%1"=="" goto loop
copy short%1.in short.in >nul
echo Problem Test
echo Data %1
time<enter
short
time<enter
fc short.out short%1.out
pause
goto end
:loop
for %%i in (1 2 3 4 5) do call %0 %%i
:end
