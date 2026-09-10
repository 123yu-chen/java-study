@echo off
chcp 936 >nul
cd /d D:\code\java-study
echo ============================================
echo   补推送 - 网络好了以后双击这个
echo ============================================
"C:\Program Files\Git\cmd\git.exe" push
if errorlevel 1 goto tryproxy
echo.
echo [OK] 已同步到 GitHub
goto done
:tryproxy
echo.
echo [INFO] 直连不通, 改用代理重试...
"C:\Program Files\Git\cmd\git.exe" -c http.proxy=http://127.0.0.1:7897 -c https.proxy=http://127.0.0.1:7897 push
if errorlevel 1 goto failed
echo.
echo [OK] 已通过代理同步到 GitHub
goto done
:failed
echo.
echo [FAIL] 没连上. 检查 Clash Verge / 换网络 / 晚点再试.
echo [放心] 代码和提交都在本地, 不会丢.
:done
echo.
pause