@echo off
:: This batch file removes all comments from .html and .css files in the current directory.

:: Get the directory of the batch file
set "DIR=%~dp0"

:: Loop through all .html files in the current directory and remove comments
for %%f in (%DIR%*.html) do (
    powershell -Command "(Get-Content '%%f' -Raw) -replace '<!--.*?-->', '' | Set-Content '%%f'"
)

:: Loop through all .css files in the current directory and remove comments
for %%f in (%DIR%*.css) do (
    powershell -Command "(Get-Content '%%f' -Raw) -replace '/\*.*?\*/', '' | Set-Content '%%f'"
)

echo All comments have been removed from HTML and CSS files in the current directory.
pause
