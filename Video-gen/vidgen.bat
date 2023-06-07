@echo off
setlocal enabledelayedexpansion

REM Define the characters to animate
set "characters=!@#$%%^&*()"

REM Clear the screen
cls

REM Define the width and height of the screen
set "width=80"
set "height=25"

REM Calculate the total number of positions on the screen
set /A "totalPositions=width * height"

REM Define the delay between animation frames (in milliseconds)
set "delay=100"

REM Main loop to process user input
:mainLoop
cls
echo Type the characters !,@,#,$,%,^,&,*,(, or ) to see them move on the screen.
echo Press Ctrl+C to exit.

REM Read user input
set /P "input="

REM Check if the input character is in the defined set
set "validInput="
for %%c in (%characters%) do (
  if "!input!"=="%%c" (
    set "validInput=1"
    goto animate
  )
)

REM If input character is not valid, show an error message
if not defined validInput (
  echo Invalid input. Only the characters !,@,#,$,%,^,&,*,(, or ) are allowed.
  ping -n 2 127.0.0.1 >nul
  goto mainLoop
)

:animate
REM Generate random positions for each character
for %%c in (%characters%) do (
  set /A "posX=!random! %% width"
  set /A "posY=!random! %% height"

  REM Move the cursor to the random position and echo the character
  echo !%%c! | cmd /q /v /c "(^<nul set /p .=%=char%)"

  REM Delay between frames
  ping -n %delay% 127.0.0.1 >nul
)

goto mainLoop
