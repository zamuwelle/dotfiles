@echo off

for %%I in ("%~dp0..") do set "currentDir=%%~fI\dotfiles"
set "vscodeDir=%APPDATA%\Code\User"
set "neovimDir=%LOCALAPPDATA%\nvim"

md "%vscodeDir%"
md "%neovimDir%"

robocopy "%currentDir%\Code" "%vscodeDir%" /e
robocopy "%currentDir%\nvim" "%neovimDir%" /e

rmdir /q /s "%currentDir%"
