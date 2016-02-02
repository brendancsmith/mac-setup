#!/usr/bin/env bash
set -v

# Install lots o' apps
curl -s 'http://macapps.link/en/chrome-omnifocus-dropbox-drive-alfred-sourcetree-sublime-dash-vscode-transmission-unrarx-1password-transmit-ccleaner-caffeine-coconutbattery-flux-cdock-bartender-mactracker-duet-macpilot-spotify-vlc-boom-steam-kodi-skype-slack' | sh


# Install homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew update
brew doctor

# Install homebrew packages
brew install wget

# Download some DMGs
mkdir 'dist' && cd $_
wget https://bahoom.com/hyperdock/HyperDock.dmg
# TODO: lots more
