@echo off
rem Запуск эмулятора командной оболочки (Windows).
cd /d "%~dp0"
python src\shell_emulator.py %*
 
