@echo off

REM Define file paths
set "data_file=data.txt"
set "brain_file=brain.txt"

REM Create data.txt if it doesn't exist
if not exist "%data_file%" (
    echo Creating data.txt...
    echo Initial data.>"%data_file%"
    echo.
)

REM Create brain.txt if it doesn't exist
if not exist "%brain_file%" (
    echo Creating brain.txt...
    echo Initial brain state.>"%brain_file%"
    echo.
)

REM Display current brain state
echo Current brain state (%brain_file%):
type "%brain_file%"
echo.

REM Prompt user for input
set /p input=Enter your message: 

REM Append input to data.txt
echo %input%>>"%data_file%"

REM Call training.bat to process the data
echo Calling training.bat to update %brain_file%...
call training.bat "%data_file%" "%brain_file%"

REM Display updated brain state
echo Updated brain state (%brain_file%):
type "%brain_file%"
echo.

REM End of gaa.bat
pause
