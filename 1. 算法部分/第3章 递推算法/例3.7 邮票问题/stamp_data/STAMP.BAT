@echo off
if "%1"=="" goto loop
copy stamp%1.in stamp.in >nul
echo Problem Test
echo Data %1
time<enter
stamp
time<enter
fc stamp.out stamp%1.out
del stamp.in
del stamp.out
pause
goto end
:loop
for %%i in (0 1 2 3 4 5 6 7 8 9 10 11 12 13 14) do call %0 %%i
:end
