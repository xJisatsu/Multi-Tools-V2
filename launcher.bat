:menu
:menu
@echo off & color 0f & cls & title MultiToolsV2 By Jisatsu.exe#0666
color 05
echo.
echo "              /$$$$$ /$$$$$$  /$$$$$$   /$$$$$$  /$$$$$$$$ /$$$$$$  /$$   /$$    /$$$$$$$$ /$$   /$$ /$$$$$$$$      ";
echo "              |__  $$|_  $$_/ /$$__  $$ /$$__  $$|__  $$__//$$__  $$| $$  | $$   | $$_____/| $$  / $$| $$_____/      ";
echo "                 | $$  | $$  | $$  \__/| $$  \ $$   | $$  | $$  \__/| $$  | $$   | $$      |  $$/ $$/| $$            ";
echo "                 | $$  | $$  |  $$$$$$ | $$$$$$$$   | $$  |  $$$$$$ | $$  | $$   | $$$$$    \  $$$$/ | $$$$$         ";
echo "            /$$  | $$  | $$   \____  $$| $$__  $$   | $$   \____  $$| $$  | $$   | $$__/     >$$  $$ | $$__/         ";
echo "           | $$  | $$  | $$   /$$  \ $$| $$  | $$   | $$   /$$  \ $$| $$  | $$   | $$       /$$/\  $$| $$            ";
echo "           |  $$$$$$/ /$$$$$$|  $$$$$$/| $$  | $$   | $$  |  $$$$$$/|  $$$$$$//$$| $$$$$$$$| $$  \ $$| $$$$$$$$      ";
echo "            \______/ |______/ \______/ |__/  |__/   |__/   \______/  \______/|__/|________/|__/  |__/|________/      ";
echo.
echo [40;32m------------------------------------------------------------------------------------------------------------------------[40;37m
echo       				   [40;32m[1] Install requirements[40;32m     [40;32m[2] Start Tools[40;37m
echo [40;32m------------------------------------------------------------------------------------------------------------------------[40;37m
echo.

set /p answer="Which option do you choose ? :"
if /i {%ANSWER%}=={1} (goto :1)
if /i {%ANSWER%}=={2} (goto :2)
goto :menu
exit

:1
cls
echo [40;32mInstalling dependencies....[40;32m
echo.
pip install --upgrade -r requirements.txt
echo.
echo [40;32mDependencies installed[40;37m
timeout 2 >nul
goto :menu
exit


:2
cls
color 09
echo -----------------------------------
echo Starting tools... please wait
echo -----------------------------------
python main.py
goto :menu
exit

