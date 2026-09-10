@echo off
chcp 65001 >nul
cd /d D:\code\java-study
echo ============================================
echo   每日提交（先把 IDEA 里的代码保存好）
echo ============================================
"C:\Program Files\Git\cmd\git.exe" add .
set /p msg=输入今天的提交说明(建议英文,如: feat day1 variables) : 
"C:\Program Files\Git\cmd\git.exe" commit -m "%msg%"
if errorlevel 1 echo [提示] 没有检测到代码改动，今天没东西可提交
echo.
echo ---- 正在推送到 GitHub ----
"C:\Program Files\Git\cmd\git.exe" push
if errorlevel 1 goto tryproxy
echo.
echo [成功] 已同步到 GitHub^!
goto done
:tryproxy
echo.
echo [提示] 直连不通，改用代理重试...
"C:\Program Files\Git\cmd\git.exe" -c http.proxy=http://127.0.0.1:7897 -c https.proxy=http://127.0.0.1:7897 push
if errorlevel 1 goto failed
echo.
echo [成功] 已通过代理同步到 GitHub^!
goto done
:failed
echo.
echo [提示] 两种方式都没连上。但你的代码和提交记录都在本地，绝对不会丢！
echo [办法1] 检查 Clash Verge 是不是关掉了
echo [办法2] 换个网络再试（手机热点往往最有效）
echo [办法3] 晚点再双击这个脚本
:done
echo.
pause