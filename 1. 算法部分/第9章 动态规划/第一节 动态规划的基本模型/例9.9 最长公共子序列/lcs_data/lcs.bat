@echo off
if "%1"=="" goto loop
copy lcs%1.in lcs.in >nul
copy lcs%1.out lcs.ans >nul
echo Problem Test
echo Data %1
time<enter
lcs
time<enter
fc lcs.out lcs.ans
del lcs.in
del lcs.out
del lcs.ans
pause
goto end
:loop
for %%i in (1 2 3 4 5 6 7 8 9 10) do call %0 %%i
:end
