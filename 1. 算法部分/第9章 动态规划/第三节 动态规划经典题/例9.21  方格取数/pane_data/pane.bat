@echo off
if "%1"=="" goto loop
copy pane%1.in pane.in >nul
echo Problem Test
echo Data %1
time<enter
pane
time<enter
fc pane.out pane%1.out
del pane.in
del pane.out
pause
goto end
:loop
for %%i in (0 1 2 3 4 5 6 7 8 9) do call %0 %%i
:end
