@echo off
echo =======================================
echo 🇹🇭 ThaiD Clone - Android App Builder
echo =======================================

echo 🔄 Syncing web files with Android project...
npx cap sync

echo 📱 ตรวจสอบการเชื่อมต่อมือถือ...
echo.
adb devices
echo.
echo ⚠️  หากไม่เห็นมือถือใน list ข้างบน:
echo.
echo 📱 เปิด USB Debugging บนมือถือ:
echo    1. Settings → About Phone
echo    2. แตะ "Build Number" 7 ครั้ง
echo    3. กลับไป Settings → Developer Options
echo    4. เปิด "USB Debugging"
echo    5. เสียบสาย USB เข้าคอม
echo    6. อนุญาต "USB Debugging" บนมือถือ
echo.
echo 🎯 ขั้นตอนใน Android Studio:
echo    1. รอให้ project โหลดเสร็จ
echo    2. ตรวจสอบมือถือแสดงใน device list
echo    3. คลิก "Run" (สีเขียว ▶️)
echo    4. เลือกมือถือของคุณ
echo    5. รอแอปติดตั้งและเปิดอัตโนมัติ
echo.
echo 📋 System Requirements:
echo    - Android Studio ติดตั้งแล้ว
echo    - Android SDK ตั้งค่าแล้ว
echo    - มือถือ Android (USB Debugging เปิด)
echo    - สาย USB เชื่อมต่อคอม
echo.
echo 🔧 ตรวจสอบ USB Debugging:
echo    - เสียบ USB แล้วมือถือขึ้น popup ให้อนุญาต
echo    - ใน cmd รัน: adb devices
echo    - ต้องเห็นชื่อมือถือใน list
echo.
echo ⚠️  หากไม่มี Android Studio:
echo    - ดาวน์โหลด: https://developer.android.com/studio
echo    - ติดตั้งตาม wizard
echo    - ตั้งค่า Android SDK
echo.
echo =======================================

npx cap open android
