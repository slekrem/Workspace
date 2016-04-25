#!/bin/bash

# install homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# instal apps
brew install cask

# install casks
brew cask install virtualbox
brew cask install boot2docker
brew cask install google-chrome
brew cask install sourcetree
brew cask install visual-studio-code
brew cask install iterm2
brew cask install atom

# install terminal-plus
apm install npm-install
apm install terminal-plus
apm install script
