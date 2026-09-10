@echo off
chcp 65001 >nul
cd /d D:\code\java-study
echo ============================================
echo   推送代码到 GitHub
echo ============================================
"C:\Program Files\Git\cmd\git.exe" push -u origin main
echo.
echo ---- 上面若有红色报错，截图发给AI ----
pause