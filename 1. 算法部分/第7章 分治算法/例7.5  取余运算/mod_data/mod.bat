@echo off
if "%1"=="" goto loop
copy mod%1.in mod.in >nul
echo Problem Test
echo Data %1
time<enter
mod
time<enter
fc mod.out mod%1.out
del mod.in
del mod.out
pause
goto end
:loop
for %%i in (1 2 3 4 5) do call %0 %%i
:end
