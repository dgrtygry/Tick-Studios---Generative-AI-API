@echo off

REM Set the paths for brain.txt, data.txt, and gaa.bat
set brain_file=brain.txt
set data_file=data.txt
set gaa_file=gaa.bat

REM Perform the training process
echo Training the brain...
REM Example: Concatenate all lines from the data file to the brain file
for /f "usebackq delims=" %%a in ("%data_file%") do (
    echo %%a>>"%brain_file%"
)

REM Update gaa.bat
echo Updating %gaa_file%...
copy /y "%gaa_file%" "%gaa_file%.temp" >nul
echo @echo off>>"%gaa_file%.temp"
REM Your training process commands go here

REM Example training commands
echo echo Training process started...>>"%gaa_file%.temp"
echo echo Training on %data_file%...>>"%gaa_file%.temp"
echo echo Running gaa.bat --train --data "%brain_file%">>"%gaa_file%.temp"
echo call gaa.bat --train --data "%brain_file%">>"%gaa_file%.temp"
echo echo Training completed!>>"%gaa_file%.temp"

REM End of training.bat

echo del "%gaa_file%.temp">>"%gaa_file%.temp"
move /y "%gaa_file%.temp" "%gaa_file%" >nul

REM End of training.bat
