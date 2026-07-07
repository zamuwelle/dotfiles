@echo off

set "userDir=%USERPROFILE%"
set "currentDir=%~dp0"
set "vscodeDir=%APPDATA%\Code\User\"

copy /y "%currentDir%.vscode\settings.json" "%vscodeDir%settings.json"

rmdir /q /s "%currentDir%"