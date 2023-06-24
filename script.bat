@echo off
setlocal enabledelayedexpansion

set site=https://intervesp.ru
set DOMAIN=
set pathFile=C:\Users\Viktor\Desktop\Evgenii\myFile.txt

rem Cycle through file
for /f "tokens=*" %%a in (%pathFile%) do (
  set DOMAIN=%site%%%a
  echo Downloading image from !DOMAIN!
  
  rem Get a name of a file from url
  for %%b in (!DOMAIN!) do set "filename=%%~nxb"
  
  rem Download image
  curl !DOMAIN! -o !filename!
)

endlocal
rem Don`t close the teminal
pause