#!/bin/bash

# XCode CLI
xcode-select --install

# Homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew install \
  git \
  homebrew/cask-fonts/font-meslo-for-powerline \
  homebrew/cask-fonts/font-meslo-nerd-font \
  httpie \
  mas \
  python \
  tmux \
  watch \
  wget

# Mac App Store
# 926036361 == LastPass
# 405843582 == Alfred
# 1176895641 == Spark
# 413857545 == Divvy
# 1356178125 == Outline
# 409203825 == Numbers
# 468369783 == iClip
mas install \
  413857545 \
  926036361 \
  1356178125

# Launch Apps
open -a iClip
open -a Divvy

# Docker CE
wget -O ~/Downloads/Docker.dmg https://download.docker.com/mac/stable/Docker.dmg
open ~/Downloads/Docker.dmg

# Firefox
open https://www.mozilla.org/en-US/firefox/download/thanks/

# VS Code
open https://code.visualstudio.com/docs/?dv=osx

# Install Alfred, manully!
open https://www.alfredapp.com/
