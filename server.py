#!/usr/bin/env python3
"""
Simple HTTP Server for ThaiD Clone PWA
Serves the app with proper CORS headers for PWA functionality
"""

import http.server
import socketserver
import os
import sys
import webbrowser
import threading
import time

class CustomHTTPRequestHandler(http.server.SimpleHTTPRequestHandler):
    def end_headers(self):
        # Add CORS headers for PWA
        self.send_header('Access-Control-Allow-Origin', '*')
        self.send_header('Access-Control-Allow-Methods', 'GET, POST, OPTIONS')
        self.send_header('Access-Control-Allow-Headers', 'Content-Type')
        # Cache headers for static assets
        if self.path.endswith(('.png', '.jpg', '.jpeg', '.gif', '.ico')):
            self.send_header('Cache-Control', 'public, max-age=86400')
        elif self.path.endswith(('.css', '.js')):
            self.send_header('Cache-Control', 'public, max-age=3600')
        super().end_headers()

    def do_GET(self):
        # Handle root path
        if self.path == '/':
            self.path = '/index.html'
        return super().do_GET()

    def log_message(self, format, *args):
        # Custom logging
        print(f"🌐 {self.address_string()} - {format % args}")

def open_browser_delayed(url, delay=2):
    """Open browser after a delay"""
    time.sleep(delay)
    try:
        webbrowser.open(url)
        print(f"🚀 Browser opened automatically: {url}")
    except Exception as e:
        print(f"⚠️  Could not open browser automatically: {e}")
        print(f"📱 Please open manually: {url}")

def main():
    # Change to the directory containing the web files
    os.chdir(os.path.dirname(os.path.abspath(__file__)))

    PORT = 8089
    HOST = 'localhost'

    # Try different ports if 8089 is busy
    for port in range(PORT, PORT + 10):
        try:
            with socketserver.TCPServer((HOST, port), CustomHTTPRequestHandler) as httpd:
                url = f"http://{HOST}:{port}"
                print("=" * 60)
                print("🇹🇭 ThaiD Clone PWA Server")
                print("=" * 60)
                print(f"🌐 Server running at: {url}")
                print(f"📱 PWA Features: Service Worker, Offline Support")
                print(f"🔄 Auto-reload: Save files to see changes")
                print("=" * 60)
                print("📋 Features:")
                print("   ✅ Card Flip Animation")
                print("   ✅ Fullscreen Mode")
                print("   ✅ Touch Gestures")
                print("   ✅ PWA Install Prompt")
                print("=" * 60)
                print("🎯 Instructions:")
                print("   1. Open the URL in your browser")
                print("   2. Tap screen for fullscreen mode")
                print("   3. Try swiping to flip the card")
                print("   4. Install as PWA when prompted")
                print("=" * 60)
                print("⏹️  Press Ctrl+C to stop server")
                print("=" * 60)

                # Open browser automatically
                browser_thread = threading.Thread(
                    target=open_browser_delayed,
                    args=(url, 1)
                )
                browser_thread.daemon = True
                browser_thread.start()

                # Start server
                httpd.serve_forever()

        except OSError as e:
            if "Address already in use" in str(e):
                print(f"⚠️  Port {port} is busy, trying {port + 1}...")
                continue
            else:
                print(f"❌ Error starting server: {e}")
                sys.exit(1)

    print("❌ Could not find an available port")
    sys.exit(1)

if __name__ == "__main__":
    try:
        main()
    except KeyboardInterrupt:
        print("\n\n🛑 Server stopped by user")
        print("👋 Thanks for using ThaiD Clone!")
        sys.exit(0)
    except Exception as e:
        print(f"❌ Server error: {e}")
        sys.exit(1)
