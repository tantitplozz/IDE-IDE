#!/usr/bin/env python3
"""
ngrok Launcher for ThaiD Clone PWA
Automatically starts local server and ngrok tunnel
"""

import subprocess
import time
import threading
import webbrowser
import sys
import os

def run_local_server():
    """Run the local Python server"""
    print("🚀 Starting local server...")
    try:
        # Change to project directory
        os.chdir(os.path.dirname(os.path.abspath(__file__)))
        # Run the server
        subprocess.run([sys.executable, "server.py"], check=True)
    except KeyboardInterrupt:
        print("\n🛑 Local server stopped")
    except Exception as e:
        print(f"❌ Server error: {e}")

def run_ngrok():
    """Run ngrok tunnel"""
    print("🌐 Starting ngrok tunnel...")
    try:
        # Wait for local server to start
        time.sleep(3)

        # Run ngrok
        result = subprocess.run(
            ["ngrok", "http", "8080", "--log=stdout"],
            capture_output=True,
            text=True,
            timeout=10
        )

        if result.returncode != 0:
            print("❌ ngrok failed to start")
            print("💡 Make sure ngrok is installed and in PATH")
            print("📝 Install: https://ngrok.com/download")
            return

    except subprocess.TimeoutExpired:
        print("✅ ngrok tunnel started successfully!")
    except FileNotFoundError:
        print("❌ ngrok not found!")
        print("📥 Please install ngrok:")
        print("   1. Download from: https://ngrok.com/download")
        print("   2. Extract to a folder in PATH")
        print("   3. Or use: npm install -g ngrok")
        return
    except Exception as e:
        print(f"❌ ngrok error: {e}")

def main():
    print("=" * 60)
    print("🇹🇭 ThaiD Clone PWA + ngrok")
    print("=" * 60)
    print("🎯 This will:")
    print("   1. Start local server on port 8080")
    print("   2. Create ngrok HTTPS tunnel")
    print("   3. Give you public HTTPS URL")
    print("=" * 60)

    # Start local server in background
    server_thread = threading.Thread(target=run_local_server)
    server_thread.daemon = True
    server_thread.start()

    # Start ngrok
    run_ngrok()

if __name__ == "__main__":
    try:
        main()
    except KeyboardInterrupt:
        print("\n\n🛑 Stopped by user")
        sys.exit(0)
