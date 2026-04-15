@echo off

:: Jump to function label if provided
if not "%~1"=="" goto %~1

:: ===================
:: HEADER CONSTANTS
:: ===================

set TOTAL_WIDTH=64
set FOUR=4
set NINE=9
goto :eof

:: ===================
:: EMPTY ARGUMENTS CHECK
:: ===================

:check_arg
    if "%INPUT%"=="" (
        echo Usage: src\%SCRIPT_NAME% ^<your-header-here^>
        exit /b 1
    )
    goto :eof

:: ===================
:: OVERFLOWS CHECK
:: ===================

:check_overflow
    if %INPUT_LENGTH% gtr %INNER_WIDTH% (
        echo Error: Header is too long. Maximum length is %INNER_WIDTH% characters.
        echo        Your given header length: %INPUT_LENGTH% characters.
        exit /b 1
    )
    goto :eof

:: ===================
:: HEADER CALCULATIONS
:: ===================

:get_input_length
    setlocal enabledelayedexpansion
    set /a n=0
    :_len_loop
    if "!INPUT:~%n%,1!" neq "" (set /a n+=1 & goto :_len_loop)
    endlocal & set INPUT_LENGTH=%n%
    goto :eof

:get_padding
    set /a PADDING=(INNER_WIDTH - INPUT_LENGTH) / 2
    goto :eof

:: =====================================
:: INITIALIZATION
:: =====================================

:init
    :: %~2 = decorator_length (since %~1 is the label name ":init")
    set /a DECORATOR_LENGTH=%~2
    set /a INNER_WIDTH=TOTAL_WIDTH - DECORATOR_LENGTH

    call "%~dp0helpers.bat" :check_arg
    if errorlevel 1 exit /b 1

    call "%~dp0helpers.bat" :get_input_length

    call "%~dp0helpers.bat" :check_overflow
    if errorlevel 1 exit /b 1

    call "%~dp0helpers.bat" :get_padding
    goto :eof
