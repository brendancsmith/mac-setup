#!/usr/bin/env sh
brew update
brew upgrade
brew cleanup -s
brew cask cleanup
# now diagnostic
brew missing
brew prune
brew doctor
