@echo off
echo ========================================================
echo   Pushing Profile README to GitHub (Sumanshu01/Sumanshu01)
echo ========================================================
echo.

git --version >nul 2>&1
if %ERRORLEVEL% neq 0 (
    echo [ERROR] Git is not installed or not in PATH.
    pause
    exit /b 1
)

if not exist ".git" (
    echo [INFO] Initializing git repository...
    git init
    git branch -M main
    git remote add origin https://github.com/Sumanshu01/Sumanshu01.git
)

echo [INFO] Staging files...
git add README.md .github/

echo [INFO] Committing files...
git commit -m "feat: setup animated and effects-rich profile README"

echo.
echo [INFO] Pushing to main branch...
git push -u origin main

echo.
echo ========================================================
echo   Done! Check your profile at: https://github.com/Sumanshu01
echo ========================================================
pause

