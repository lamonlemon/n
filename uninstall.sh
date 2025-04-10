launchctl unload ~/Library/LaunchAgents/com.user.notekill.plist
pkill -f notekill.sh
rm -f ~/Library/LaunchAgents/com.user.notekill.plist
rm -f ~/notekill.sh
