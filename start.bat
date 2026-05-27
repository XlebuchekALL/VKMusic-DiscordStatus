@echo off
title VK Lyrics to Discord
echo =======================================
echo   VK Music Lyrics to Discord Status
echo =======================================
echo.

:: Check Python
python --version >nul 2>&1
if %errorlevel% neq 0 (
    echo Python not found. Please install Python from python.org
    pause
    exit /b
)

:: Install dependencies
echo Installing required packages (one time)...
pip install httpx
pip install aiohttp
pip install winrt-Windows.Media.Control winrt-Windows.Foundation requests >nul
if %errorlevel% neq 0 (
    echo Failed to install packages. Try running as administrator.
    pause
    exit /b
)

:: Run the script
echo Starting...
python "%~dp0main.py"

:: If script ended
echo.
echo Script stopped. Press any key to exit.
pause >nul