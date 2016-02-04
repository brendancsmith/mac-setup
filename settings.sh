#!/usr/bin/env sh
set -v

# ---------- DOCK ----------

# Auto-hide dock and remove reveal delay
defaults write com.apple.dock autohide -bool TRUE
defaults write com.apple.dock autohide-delay -int 0
defaults write com.apple.dock autohide-time-modifier -float 0.85

# Make hidden applications have translucent dock icons
defaults write com.apple.dock showhidden -bool TRUE

# Dock size
defaults write com.apple.dock magnification -bool TRUE
defaults write com.apple.dock tilesize -int 50
defaults write com.apple.dock largesize -int 75

# Hide apps when you quit them (unfortunately disables folder stacks)
# defaults write com.apple.dock static-only -bool TRUE

# Enable scroll gestures on dock (exposé apps and expand lists)
defaults write com.apple.dock scroll-to-open -bool TRUE

# Delete default items
defaults -currentHost delete com.apple.dock persistent-apps
defaults -currentHost delete com.apple.dock persistent-others

# Add persistent apps
defaults -currentHost write com.apple.dock persistent-apps -array-add "<dict><key>tile-data</key><dict><key>file-data</key><dict><key>_CFURLString</key><string>/Applications/Google Chrome.app</string><key>_CFURLStringType</key><integer>0</integer></dict></dict></dict>"
defaults -currentHost write com.apple.dock persistent-apps -array-add "<dict><key>tile-data</key><dict><key>file-data</key><dict><key>_CFURLString</key><string>/Applications/Spotify.app</string><key>_CFURLStringType</key><integer>0</integer></dict></dict></dict>"

# Add persistent folders
defaults -currentHost write com.apple.dock persistent-others -array-add "<dict><key>tile-data</key><dict><key>arrangement</key><integer>1</integer><key>displayas</key><integer>1</integer><key>file-data</key><dict><key>_CFURLString</key><string>/Applications</string><key>_CFURLStringType</key><integer>0</integer></dict><key>file-label</key><string>Applications</string><key>file-type</key><integer>2</integer><key>showas</key><integer>2</integer></dict><key>tile-type</key><string>directory-tile</string></dict>"
defaults -currentHost write com.apple.dock persistent-others -array-add "<dict><key>tile-data</key><dict><key>arrangement</key><integer>2</integer><key>displayas</key><integer>0</integer><key>file-data</key><dict><key>_CFURLString</key><string>$HOME/Downloads</string><key>_CFURLStringType</key><integer>0</integer></dict><key>file-label</key><string>Downloads</string><key>file-type</key><integer>2</integer><key>showas</key><integer>1</integer></dict><key>tile-type</key><string>directory-tile</string></dict>"

# Speed up Mission Control animations
defaults write com.apple.dock expose-animation-duration -float 0.15

# group applications in exposé
defaults write com.apple.dock expose-group-apps -bool TRUE

# don't reorder spaces in Mission Control
defaults write com.apple.dock mru-spaces -bool FALSE

# Refresh
killall Dock

# ---------- SCREENSHOTS ----------

# Change the screenshot location
SCREENSHOT_DIR="$HOME/Dropbox/Screenshots"
mkdir -p $SCREENSHOT_DIR
defaults write com.apple.screencapture location $SCREENSHOT_DIR
killall SystemUIServer

# ---------- FINDER ----------

# Show hidden files
defaults write com.apple.finder AppleShowAllFiles -bool YES

# Show full path in title
defaults write com.apple.finder _FXShowPosixPathInTitle -bool YES

# Refresh
killall Finder

# ----- -----

# Disable the Photos app from opening when a device is plugged in
defaults write com.apple.ImageCapture disableHotPlug -bool true

# Don't store .DS_Store files on network shares
defaults write com.apple.desktopservices DSDontWriteNetworkStores true


# TODO: need to boot into recovery mode for this
# Hide spotlight button in menu bar
# sudo chmod 600 /System/Library/CoreServices/Search.bundle/Contents/MacOS/Search
# killall SystemUIServer
