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

set "hashes="
for /l %%i in (1,1,%INNER_WIDTH%) do set "hashes=!hashes!#"

set "left_spaces="
for /l %%i in (1,1,%PADDING%) do set "left_spaces=!left_spaces! "

set /a right_pad=INNER_WIDTH - INPUT_LENGTH - PADDING
set "right_spaces="
for /l %%i in (1,1,%right_pad%) do set "right_spaces=!right_spaces! "

echo # %hashes% #
echo # %left_spaces%%INPUT%%right_spaces% #
echo # %hashes% #
