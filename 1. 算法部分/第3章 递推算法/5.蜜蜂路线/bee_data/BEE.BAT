@echo off
if "%1"=="" goto loop
copy bee%1.in bee.in >nul
echo Problem Test
echo Data %1
time<enter
bee
time<enter
fc bee.out bee%1.out
del bee.in
del bee.out
pause
goto end
:loop
for %%i in (1 2 3 4 5) do call %0 %%i
:end
