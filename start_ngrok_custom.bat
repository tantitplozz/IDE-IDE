@echo off
echo =======================================
echo 🇹🇭 ThaiD Clone PWA + ngrok
echo =======================================

echo 🔧 Setting up ngrok authtoken...
ngrok config add-authtoken 30mC2Fodg8Kgy6332A44aXcTE3d_65fDfnzdSQ6bVV2scLhwn

echo ⏳ Waiting for Python server to start...
timeout /t 3 >nul

echo 🌐 Starting ngrok tunnel...
echo.
echo 🎯 Your PWA will be available at:
echo    https://readily-first-ibex.ngrok-free.app
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

ngrok http --url=swan-calm-generally.ngrok-free.app 8089
