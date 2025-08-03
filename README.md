# ThaiD Clone PWA

🇹🇭 Progressive Web App สำหรับแสดงบัตรประชาชนไทย

## ✨ Features

- 🃏 Card flip animation
- 📱 Fullscreen mode
- 👆 Touch gestures
- 🔄 PWA installable
- 📴 Offline support

## 🌐 Live Demo

https://yourusername.github.io/thaid-clone-pwa

## 📱 Installation

1. เข้าเว็บไซต์
2. แตะหน้าจอเพื่อ fullscreen
3. รอ install prompt
4. เลือก "Add to Home Screen"

## 🛠️ Technology

- HTML5, CSS3, JavaScript
- Service Worker
- Web App Manifest
- Touch Events API

---

Made with ❤️ in Thailand 🇹🇭

## 🇹🇭 เกี่ยวกับโปรเจ็ค

ThaiD Clone เป็น Progressive Web App (PWA) ที่เลียนแบบแอปบัตรประชาชนไทย ด้วยฟีเจอร์:

## ✨ ฟีเจอร์หลัก

- 🃏 แอนิเมชั่นพลิกบัตร (Card Flip)
- 📱 โหมดเต็มจอ (Fullscreen)
- 👆 รองรับท่าทางสัมผัส (Touch Gestures)
- 🔄 ติดตั้งเป็น PWA ได้
- 🎨 UI/UX เหมือนแอปจริง
- 📴 ทำงานแบบออฟไลน์

## 🚀 วิธีการรัน

### วิธีที่ 1: ใช้ Python Server (แนะนำ)

```bash
python server.py
```

### วิธีที่ 2: ใช้ Live Server Extension

1. ติดตั้ง Live Server extension ใน VS Code
2. คลิกขวาที่ `index.html`
3. เลือก "Open with Live Server"

### วิธีที่ 3: ใช้ Node.js (หากมี)

```bash
npx http-server . -p 8080 -c-1
```

## 📱 การใช้งาน

1. **เข้าสู่โหมดเต็มจอ**: แตะหน้าจอเพื่อเข้าสู่โหมดเต็มจอ
2. **พลิกบัตร**: ปัดนิ้วซ้าย/ขวา หรือแตะกลางหน้าจอ
3. **เมนู**: แตะขอบล่างเพื่อเข้าถึงเมนู
4. **ติดตั้ง PWA**: รอ popup หรือใช้เมนู browser

## 📁 โครงสร้างไฟล์

```
├── index.html          # หน้าหลัก
├── manifest.json       # PWA manifest
├── script.js          # JavaScript หลัก
├── style.css          # Styles
├── sw.js              # Service Worker
├── server.py          # Python HTTP server
├── images/            # รูปภาพบัตร
│   ├── 1.png         # บัตรหน้า
│   ├── 1.1.png       # overlay หน้า
│   ├── 2.1.png       # overlay หลัง
│   └── ...
└── บัตรหน้าหลัง/      # รูปบัตรเพิ่มเติม
```

## 🛠️ การพัฒนา

### การแก้ไขสี/ธีม

แก้ไขใน `style.css`:

```css
:root {
  --primary-color: #000000;
  --background-color: #ffffff;
}
```

### การเพิ่มรูปภาพ

1. วางไฟล์ใน `images/`
2. อัพเดต path ใน `script.js`

### การแก้ไขท่าทาง

แก้ไขใน `script.js` ในส่วน gesture handlers

## 🔧 การปรับแต่ง PWA

### App Icon

แก้ไขใน `manifest.json`:

```json
{
  "icons": [
    {
      "src": "images/icon.png",
      "sizes": "512x512",
      "type": "image/png"
    }
  ]
}
```

### Cache Strategy

แก้ไขใน `sw.js` เพื่อเพิ่ม/ลดไฟล์ที่ cache

## 📱 การทดสอบ Mobile

1. เปิด Developer Tools (F12)
2. เลือก Device Emulation
3. เลือกมือถือที่ต้องการทดสอบ
4. รีเฟรชหน้า

## ⚠️ ข้อจำกัด

- ต้องรันผ่าน HTTP server (ไม่ใช่ file://)
- บางฟีเจอร์ต้องใช้ HTTPS สำหรับ production
- การติดตั้ง PWA ขึ้นกับ browser

## 🐛 การแก้ไขปัญหา

### ไม่สามารถติดตั้ง PWA

- ตรวจสอบ `manifest.json`
- ตรวจสอบ Service Worker ทำงาน
- ใช้ HTTPS หรือ localhost

### แอนิเมชั่นกระตุก

- ลด image size
- เพิ่ม `will-change` CSS property

### Touch gestures ไม่ทำงาน

- ตรวจสอบ touch event listeners
- ปิด browser zoom ใน meta viewport

## 📞 การสนับสนุน

หากมีปัญหา:

1. ตรวจสอบ Browser Console (F12)
2. ตรวจสอบ Network tab สำหรับ errors
3. ลองใช้ browser อื่น
