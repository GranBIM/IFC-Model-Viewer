@echo off
title Push til GitHub - IFC-Model-Viewer

cd /d "F:\GITHUB\GranBIM\IFC-Model-Viewer"
if %errorlevel% neq 0 (
    echo FEIL: Fant ikke mappen.
    pause
    exit /b
)

set /p melding=Skriv inn commit-melding: 
if "%melding%"=="" (
    echo FEIL: Commit-melding kan ikke vaere tom.
    pause
    exit /b
)

git add -A
git commit -m "%melding%"
git push origin main
if %errorlevel% neq 0 (
    echo FEIL: Push feilet.
    pause
    exit /b
)

echo.
echo Ferdig!
echo.
pause