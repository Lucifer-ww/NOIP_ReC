@echo off
if "%1"=="" goto loop
copy mine%1.in mine.in >nul
echo Problem Test
echo Data %1
time<enter
mine
time<enter
fc mine.out mine%1.out
del mine.in
del mine.out
pause
goto end
:loop
for %%i in (1 2 3 4 5 6 7 8 9) do call %0 %%i
:end
