@echo off
setlocal enabledelayedexpansion 

set /p date="ENter Date : "

set /p dir="ENter DIre : "

echo %date%

for /r "%dir%" %%f in ("*.txt"
    ) do for /f "tokens=1,2 delims=0123456789" %%a in ("%%~nf"
    ) do  ren "%%~ff" "%%a%date%%%b%%~xf"


pause 

  