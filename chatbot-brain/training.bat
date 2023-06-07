@echo off

REM Get the data file path and the brain file path from the arguments
set data_file=%~1
set brain_file=%~2

REM Perform the training process (You can customize this part based on your requirements)
echo Training the brain...
REM Example: Concatenate all lines from the data file to the brain file
for /f "usebackq delims=" %%a in ("%data_file%") do (
    echo %%a>>"%brain_file%"
)

REM End of training.bat
