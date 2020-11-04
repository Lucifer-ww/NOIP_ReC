@echo off
if "%1"=="" goto loop
echo Problem Test
echo Data %1
copy delete%1.in delete.in >nul
delete
fc delete%1.out delete.out
del delete.in
del delete.out
pause
goto end
:loop
for %%i in (1 2 3 4 5 6) do call %0 %%i
:end
