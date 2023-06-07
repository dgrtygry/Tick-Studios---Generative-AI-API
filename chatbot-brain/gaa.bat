@echo off

REM Create data.txt if it doesn't exist
if not exist data.txt (
    echo Creating data.txt...
    echo Initial data.>data.txt
    echo.
)

REM Create brain.txt if it doesn't exist
if not exist brain.txt (
    echo Creating brain.txt...
    echo Initial brain state.>brain.txt
    echo.
)

REM Display current brain state
echo Current brain state (brain.txt):
type brain.txt
echo.

REM Prompt user for input
set /p input=Enter your message: 

REM Append input to data.txt
echo %input%>>data.txt

REM Call training.bat to process the data
echo Calling training.bat to update brain.txt...
call training.bat data.txt brain.txt

REM Display updated brain state
echo Updated brain state (brain.txt):
type brain.txt
echo.

REM End of gaa.bat
pause
