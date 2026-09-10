@echo off
chcp 65001 >nul
cd /d D:\code\java-study
echo ============================================
echo   每日提交（先保存好你写的代码）
echo ============================================
"C:\Program Files\Git\cmd\git.exe" add .
set /p msg=输入今天的提交说明(建议英文,如: feat day1 variables) : 
"C:\Program Files\Git\cmd\git.exe" commit -m "%msg%"
"C:\Program Files\Git\cmd\git.exe" push
echo.
pause