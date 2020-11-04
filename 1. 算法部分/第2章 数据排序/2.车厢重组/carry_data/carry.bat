@echo off
title TestData - carry
if "%1"=="" goto loop
copy carry%1.in carry.in >nul
echo Problem Test
echo Data %1
time<enter
carry.exe
time<enter
fc carry.out carry%1.out
pause
goto end
:loop
echo.>enter
for %%i in (1 2 3 4 5 6 7 8 9 10) do call %0 %%i
del enter
del carry.in
del carry.out
:end