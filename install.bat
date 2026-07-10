@echo off

for %%I in ("%~dp0..\..") do set "currentDir=%%~fI\dotfiles\"
set "vscodeDir=%APPDATA%\Code\User\"
set "neovimDir=%LOCALAPPDATA%\nvim\"

md "%vscodeDir%"
md "%neovimDir%"

copy /y "%currentDir%Code\*" "%vscodeDir%"
copy /y "%currentDir%nvim\*" "%vscodeDir%"

rmdir /q /s "%currentDir%"
