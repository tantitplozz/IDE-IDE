@echo off
echo =======================================
echo 🇹🇭 ThaiD Clone PWA - Port Restart
echo =======================================

echo 🛑 Stopping existing Python servers...
taskkill /f /im python.exe 2>nul
taskkill /f /im ngrok.exe 2>nul

echo ⏳ Waiting for ports to be freed...
timeout /t 2 >nul

echo 🚀 Starting Python server on port 3000...
start /B python server.py

echo ⏳ Waiting for server to start...
timeout /t 4 >nul

echo 🔧 Setting up ngrok authtoken...
ngrok config add-authtoken 30mC2Fodg8Kgy6332A44aXcTE3d_65fDfnzdSQ6bVV2scLhwn

echo 🌐 Starting ngrok tunnel on port 3000...
echo.
echo 🎯 Your PWA will be available at:
echo    https://swan-calm-generally.ngrok-free.app
echo.
echo 📋 Server Info:
echo    Local:  http://localhost:3000
echo    Public: https://swan-calm-generally.ngrok-free.app
echo.
echo ✅ Features available:
echo    - HTTPS (required for PWA)
echo    - Service Worker
echo    - PWA Installation
echo    - Card flip animations
echo    - Touch gestures
echo.
echo ⏹️  Press Ctrl+C to stop
echo =======================================

ngrok http --url=swan-calm-generally.ngrok-free.app 3000
