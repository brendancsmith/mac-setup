#!/usr/bin/env bash
set -v

# Remove dock autohide delay
defaults write com.apple.dock autohide-time-modifier -int 0
killall Dock

# Change the screenshot location
defaults write com.apple.screencapture location "~/Dropbox/Screenshots/"
killall SystemUIServer
