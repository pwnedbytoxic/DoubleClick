@Echo off
@Mode 48,15
@Title %~n0
Batbox /h 0

:Loop
Call Button  10 4 "Toggle On" 24 4 "Toggle Off" 17 8 "  Exit  " # Press
Getinput /m %Press% /h 70

:: Check for the pressed button 
if %errorlevel%==1 (start mouseconfig.exe)
if %errorlevel%==2 (taskkill /f /im mouseconfig.exe" >nul 2>&1)
if %errorlevel%==3 (exit)
goto Loop