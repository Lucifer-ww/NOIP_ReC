@echo off
if "%1"=="" goto loop
copy tower%1.in tower.in >nul
echo Problem Test
echo Aata %1
time<enter
tower
time<enter
fc tower.out tower%1.out
del tower.in
del tower.out
pause
goto end
:loop
for %%i in (1 2 3 4 5) do call %0 %%i
:end