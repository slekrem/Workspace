#!/bin/bash

# install homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# instal apps
brew install cask
brew install openssl

brew link --force openssl

# install casks
brew cask install virtualbox
brew cask install docker-machine
brew cask install docker-compose
brew cask install google-chrome
brew cask install sourcetree
brew cask install visual-studio-code
brew cask install iterm2
brew cask install atom # kann auch gebaut werden ...
brew cask install node

# install terminal-plus
apm install npm-install
apm install terminal-plus
apm install script
