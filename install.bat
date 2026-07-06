@echo off

set "userDir=%USERPROFILE%"
set "currentDir=%~dp0"

robocopy . "%userDir%" *.* /e /xf install.bat install.sh README.md
rmdir /q /s "%currentDir%"