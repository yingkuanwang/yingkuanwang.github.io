@echo off
chcp 65001 >nul
cd /d "%~dp0"
git add -A
git commit -m "update %date%"
git push
echo.
echo done, wait 1-2 min for deploy
pause
