@echo off
if "%1"=="" goto loop
copy unite%1.in unite.in >nul
echo Problem Test
echo Data %1
time<enter
unite
time<enter
fc unite.out unite%1.out
del unite.in
del unite.out
pause
goto end
:loop
for %%i in (1 2 3 4 5) do call %0 %%i
:end
