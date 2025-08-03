# ThaiD Clone PWA + ngrok PowerShell Script
Write-Host "=======================================" -ForegroundColor Cyan
Write-Host "🇹🇭 ThaiD Clone PWA + ngrok Setup" -ForegroundColor Yellow
Write-Host "=======================================" -ForegroundColor Cyan

Write-Host "🔧 Setting up ngrok authtoken..." -ForegroundColor Green
try {
    ngrok config add-authtoken 30mC2Fodg8Kgy6332A44aXcTE3d_65fDfnzdSQ6bVV2scLhwn
    Write-Host "✅ Authtoken configured successfully!" -ForegroundColor Green
} catch {
    Write-Host "❌ Failed to configure authtoken" -ForegroundColor Red
    exit 1
}

Write-Host "⏳ Waiting for Python server to start..." -ForegroundColor Yellow
Start-Sleep -Seconds 3

Write-Host "🌐 Starting ngrok tunnel..." -ForegroundColor Green
Write-Host ""
Write-Host "🎯 Your PWA will be available at:" -ForegroundColor Cyan
Write-Host "   https://swan-calm-generally.ngrok-free.app" -ForegroundColor Yellow
Write-Host ""
Write-Host "✅ Features available:" -ForegroundColor Green
Write-Host "   - HTTPS (required for PWA)" -ForegroundColor White
Write-Host "   - Service Worker" -ForegroundColor White
Write-Host "   - PWA Installation" -ForegroundColor White
Write-Host "   - Card flip animations" -ForegroundColor White
Write-Host "   - Touch gestures" -ForegroundColor White
Write-Host ""
Write-Host "⏹️  Press Ctrl+C to stop" -ForegroundColor Red
Write-Host "=======================================" -ForegroundColor Cyan

# Start ngrok tunnel
try {
    ngrok http --url=swan-calm-generally.ngrok-free.app 8089
} catch {
    Write-Host "❌ Failed to start ngrok tunnel" -ForegroundColor Red
    Write-Host "💡 Make sure:" -ForegroundColor Yellow
    Write-Host "   1. Python server is running on port 8080" -ForegroundColor White
    Write-Host "   2. ngrok is installed and in PATH" -ForegroundColor White
    Write-Host "   3. Domain is available" -ForegroundColor White
}
