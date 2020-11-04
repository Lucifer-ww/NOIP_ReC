@echo off
if "%1"=="" goto loop
echo Problem Test
echo Data %1
copy Playcard%1.in Playcard.in >nul
Playcard
fc Playcard%1.out Playcard.out
pause
goto end
:loop
for %%i in (1 2 3 4 5) do call %0 %%i
:end
