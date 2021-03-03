@echo on
mkdir "%~dp1move\"
::mkdir "%~dp1RAR\"

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
::ping localhost -n 6 >nul
echo.
echo.
echo ****************************************************************
echo End %LIST% %time%
::ping localhost -n 6 >nul
echo.

::mkdir "%~dp1move\"
move "%LIST%" "%~dp1move\"
::ping localhost -n 6 >nul

set LIST=
for %%f in (.\or\*) do set LIST=%LIST%%%f
::ping localhost -n 6 >nul

echo.
rem shift
rem goto 720


:stock

set LIST=
for %%f in (.\or\*) do set LIST=%LIST%%%f

::move "%LIST%" "%~dp1"
::ping localhost -n 6 >nul

if exist "%LIST%" (goto generateh) else (goto end)

 

:end 
echo ****************************************************************
echo done.
echo ****************************************************************
echo.
pause
goto first