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

# Don't show hidden files (dotfiles)
defaults write com.apple.finder AppleShowAllFiles -bool NO

# Show user library folder
chflags nohidden ~/Library/

# Show full path in title
defaults write com.apple.finder _FXShowPosixPathInTitle -bool YES

# Refresh
killall Finder

# ----- -----

# Disable the Photos app from opening when a device is plugged in
defaults write com.apple.ImageCapture disableHotPlug -bool true

# Don't store .DS_Store files on network shares
defaults write com.apple.desktopservices DSDontWriteNetworkStores true

# Disable accent menu when holding a key. Repeat the key instead.
defaults write NSGlobalDomain ApplePressAndHoldEnabled -bool false


# TODO: need to boot into recovery mode for this
# Hide spotlight button in menu bar
# sudo chmod 600 /System/Library/CoreServices/Search.bundle/Contents/MacOS/Search
# killall SystemUIServer
