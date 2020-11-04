@echo off
if "%1"=="" goto loop
copy equ%1.in equ.in>nul
echo Problem Test
echo Data %1
time<enter
equ
time<enter
fc equ.out equ%1.out
del equ.in
del equ.out
pause
goto end
:loop
for %%i in (1 2 3 4 5 6 7 8 9 10) do call %0 %%i
:end
