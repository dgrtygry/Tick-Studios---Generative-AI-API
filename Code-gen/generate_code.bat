@echo off

REM Run PowerShell script to generate code
powershell.exe -ExecutionPolicy Bypass -Command "& { .\generate_code.ps1 }"

REM Check if PowerShell script executed successfully
if not %errorlevel%==0 (
    echo PowerShell script encountered an error. Exiting...
    exit /b
)

echo Code generation successful. "code.txt" created.
exit /b
