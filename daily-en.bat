@echo off
cd /d D:\code\java-study
echo ============================================
echo   DAILY COMMIT - save your code in IDEA first
echo ============================================
set "msg=%~1"
if not defined msg set /p msg=Commit message (English, e.g. feat day1 variables) : 
if not defined msg set "msg=study: daily commit"
"C:\Program Files\Git\cmd\git.exe" add .
"C:\Program Files\Git\cmd\git.exe" commit -m "%msg%"
if errorlevel 1 echo [WARN] nothing to commit - no code changes found
echo.
echo ---- pushing to GitHub ----
"C:\Program Files\Git\cmd\git.exe" push
if errorlevel 1 goto tryproxy
echo.
echo [OK] pushed to GitHub
goto done
:tryproxy
echo.
echo [INFO] direct connection failed, retrying via local proxy...
"C:\Program Files\Git\cmd\git.exe" -c http.proxy=http://127.0.0.1:7897 -c https.proxy=http://127.0.0.1:7897 push
if errorlevel 1 goto failed
echo.
echo [OK] pushed to GitHub (via proxy)
goto done
:failed
echo.
echo [FAIL] could not reach GitHub. Your code is SAFE on this computer.
echo [FIX1] check that Clash Verge is running
echo [FIX2] try another network, e.g. phone hotspot
echo [FIX3] try again later by double-clicking push.bat
:done
echo.
pause
