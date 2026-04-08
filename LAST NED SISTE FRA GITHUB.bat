@echo off
title Pull fra GitHub - IFC-Model-Viewer
cd /d "F:\GITHUB\GranBIM\IFC-Model-Viewer"
if %errorlevel% neq 0 (
    echo FEIL: Fant ikke mappen.
    pause
    exit /b
)
echo Henter siste endringer fra GitHub...
git pull origin main
if %errorlevel% neq 0 (
    echo FEIL: Pull feilet. Sjekk om du har ulagrede lokale endringer.
    pause
    exit /b
)
echo.
echo Ferdig!
echo.
pause