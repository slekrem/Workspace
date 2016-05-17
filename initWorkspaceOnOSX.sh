#!/bin/bash

# install homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# instal apps
brew install cask
brew install openssl

brew link --force openssl

# install casks
brew cask install dockertoolbox
brew cask install google-chrome
brew cask install sourcetree
brew cask install iterm2
brew cask install atom
brew cask install skype

# install terminal-plus
apm install npm-install
apm install terminal-plus
apm install script
apm install git-plus
