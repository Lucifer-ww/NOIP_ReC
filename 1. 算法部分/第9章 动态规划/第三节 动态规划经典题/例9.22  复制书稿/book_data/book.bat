@echo off
if "%1"=="" goto loop
copy book%1.in book.in >nul
echo Problem Test
echo Data %1
time<enter
book
time<enter
fc book.out book%1.out
del book.in
del book.out
pause
goto end
:loop
for %%i in (0,1 2 3 4 5 6 7 8 9) do call %0 %%i
:end
