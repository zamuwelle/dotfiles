@echo off

set "currentDir=%~dp0"
set "vscodeDir=%APPDATA%\Code\User"

copy /y "%currentDir%\Code\settings.json" "%vscodeDir%\settings.json"

rmdir /q /s "%currentDir%"