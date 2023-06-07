@echo off

setlocal enabledelayedexpansion

:: Generate sawtooth audio in PowerShell
powershell -c "(0..999)|%%{[Math]::Round($_%100/100,2)}|%%{'(new-object Media.SoundPlayer (\'C:\Windows\Media\chimes.wav\')).PlaySync();sleep -m 10'}" >nul

set "special_characters=!,@,#,$,%,^,&,*,(, or, )"

:: Check if the pressed key is a special character
choice /c "!@#$%^&*()" /n >nul

:: Check the errorlevel to determine which character was pressed
if errorlevel 11 (
  echo ! 
) else if errorlevel 10 (
  echo (
) else if errorlevel 9 (
  echo *
) else if errorlevel 8 (
  echo &
) else if errorlevel 7 (
  echo ^
) else if errorlevel 6 (
  echo %
) else if errorlevel 5 (
  echo $
) else if errorlevel 4 (
  echo #
) else if errorlevel 3 (
  echo @
) else if errorlevel 2 (
  echo !
) else if errorlevel 1 (
  echo (
)

:: Load "vidgen.bat" to display moving characters and save animation as a .gif
call vidgen.bat > animation.gif

:: Move the completed video to "C:/Generation" directory
move /y animation.gif C:\Generation

endlocal
