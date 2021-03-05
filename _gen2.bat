@echo off
mkdir "%~dp1move\"
mkdir "%~dp1or\"


:first
set LIST=
for %%f in (.\or\*) do set LIST=%LIST%%%f

echo ****************************************************************


:generateh
if not exist "%LIST%" goto end

echo Start %LIST% %time% 
echo ****************************************************************
echo.
call "_generate1.bat" "%LIST%"

echo.
echo.
echo ****************************************************************
echo End %LIST% %time%

echo.

::mkdir "%~dp1move\"
move "%LIST%" "%~dp1move\"


set LIST=
for %%f in (.\or\*) do set LIST=%LIST%%%f

echo.


:stock

set LIST=
for %%f in (.\or\*) do set LIST=%LIST%%%f


if exist "%LIST%" (goto generateh) else (goto end)


:end 
echo ****************************************************************
echo done.
echo ****************************************************************
echo.
pause
goto first
