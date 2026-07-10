@echo off

for %%I in ("%~dp0..\..") do set "current_dir=%%~fI\dotfiles\"
set "vscodeDir=%APPDATA%\Code\User\"
set "neovimDir=%LOCALAPPDATA%\nvim\"

md "%vscodeDir%"
md "%neovimDir%"

copy /y "%current_dir%Code\*" "%vscode_dir%"
copy /y "%current_dir%nvim\*" "%vscode_dir%"

rmdir /q /s "%currentDir%"