@echo off
echo =======================================
echo 🇹🇭 ThaiD Clone PWA + ngrok Setup
echo =======================================

echo 🔍 Checking if ngrok is installed...
ngrok version >nul 2>&1
if %errorlevel% neq 0 (
    echo ❌ ngrok not found!
    echo.
    echo 📥 Please install ngrok:
    echo    1. Go to: https://ngrok.com/download
    echo    2. Download for Windows
    echo    3. Extract ngrok.exe to a folder
    echo    4. Add folder to PATH
    echo.
    echo 💡 Or use chocolatey: choco install ngrok
    echo 💡 Or use npm: npm install -g ngrok
    echo.
    pause
    exit /b 1
)

echo ✅ ngrok found!
echo.

echo 🚀 Starting Python server on port 8080...
start /B python server.py

echo ⏳ Waiting for server to start...
timeout /t 3 >nul

echo 🌐 Starting ngrok tunnel...
echo.
echo 🎯 Instructions:
echo    1. Look for the HTTPS URL (https://xxxxx.ngrok.io)
echo    2. Open that URL in your browser
echo    3. Test PWA features
echo    4. Share URL with others for testing
echo.
echo ⏹️  Press Ctrl+C to stop both server and ngrok
echo =======================================

ngrok http 8080
