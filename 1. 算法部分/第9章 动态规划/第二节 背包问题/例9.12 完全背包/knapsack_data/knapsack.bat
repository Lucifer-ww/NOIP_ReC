@echo off
if "%1"=="" goto loop
copy knapsack%1.in knapsack.in >nul
echo Problem Test
echo Data %1
time<enter
knapsack
time<enter
fc knapsack.out knapsack%1.out
del knapsack.in
del knapsack.out
pause
goto end
:loop
for %%i in (0 1 2 3 4 5 6 7 8 9) do call %0 %%i
:end
