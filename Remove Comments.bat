@echo off
:: This batch file removes all comments and unnecessary blank lines from .html and .css files in the current directory.

:: Get the directory of the batch file
set "DIR=%~dp0"

:: Loop through all .html files in the current directory and remove comments and blank lines
for %%f in (%DIR%*.html) do (
    powershell -Command "(Get-Content '%%f' -Raw) -replace '<!--.*?-->', '' -replace '^\s*$[\r\n]*', '' | Set-Content '%%f'"
)

:: Loop through all .css files in the current directory and remove comments and blank lines
for %%f in (%DIR%*.css) do (
    powershell -Command "(Get-Content '%%f' -Raw) -replace '/\*.*?\*/', '' -replace '^\s*$[\r\n]*', '' | Set-Content '%%f'"
)

echo All comments and unnecessary blank lines have been removed from HTML and CSS files in the current directory.
pause