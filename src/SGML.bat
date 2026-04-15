@echo off
setlocal enabledelayedexpansion

set HELPERS="%~dp0..\Lib\helpers.bat"
call %HELPERS%

:: ============================
:: Process the input argument
:: ============================

set SCRIPT_NAME=%~nx0
set INPUT=%*
call %HELPERS% :init %NINE%
if errorlevel 1 exit /b 1

:: ============================
:: Create the header
:: ============================

set /a dash_count=TOTAL_WIDTH - 3
set "dashes="
for /l %%i in (1,1,%dash_count%) do set "dashes=!dashes!-"

set "left_spaces="
for /l %%i in (1,1,%PADDING%) do set "left_spaces=!left_spaces! "

set /a right_pad=INNER_WIDTH - INPUT_LENGTH - PADDING
set "right_spaces="
for /l %%i in (1,1,%right_pad%) do set "right_spaces=!right_spaces! "

echo ^<!%dashes%^>
echo ^<!-- %left_spaces%%INPUT%%right_spaces% --^>
echo ^<!%dashes%^>
