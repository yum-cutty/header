@echo off
setlocal enabledelayedexpansion

set HELPERS="%~dp0..\Lib\helpers.bat"
call %HELPERS%

:: ============================
:: Process the input argument
:: ============================

set SCRIPT_NAME=%~nx0
set INPUT=%*
call %HELPERS% :init %FOUR%
if errorlevel 1 exit /b 1

:: ============================
:: Create the header
:: ============================

set /a slash_count=TOTAL_WIDTH - 2
set "slashes="
for /l %%i in (1,1,%slash_count%) do set "slashes=!slashes!/"

set "spaces="
for /l %%i in (1,1,%PADDING%) do set "spaces=!spaces! "

echo     /*%slashes%
echo     %spaces%%INPUT%
echo     %slashes%*/
