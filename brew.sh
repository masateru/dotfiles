# Make sure using latest Homebrew
brew update

# Update already-installed formula
brew upgrade

# Add Repository
brew tap phinze/homebrew-cask || true
#tap homebrew/binary || true
brew tap sanemat/font || true
#tap homebrew/dupes
brew tap homebrew/dupes || true

# Packages for development
brew install zsh
brew install git
brew install autoconf
brew install automake
brew install pkg-config
brew install p7zip
brew install go
brew install hub
brew install homebrew/dupes/grep
brew install cask
brew install ack

# install ghq
brew tap peco/peco || true
brew install peco

brew tap motemen/ghq || true
brew install ghq


# Packages for brew-cask
brew install brew-cask

# .dmg from brew-cask
#cask install vagrant
brew cask install google-chrome
brew cask install xquartz
brew install ricty
brew cask install alfred
brew cask install textexpander
brew cask install coteditor
brew cask install parallels
brew cask install iterm2
brew cask install karabiner
brew cask install bettertouchtool
brew cask install bartender
brew cask install evernote
brew cask install appcleaner
brew cask install sourcetree
brew cask install coda
brew cask install transmit
brew cask install google-drive
brew cask install brackets
brew cask install hosts
brew cask install opera

brew tap caskroom/versions
brew cask install firefox-ja

brew cask alfred link
# Remove outdated versions
brew cleanup

# ref: http://rcmdnk.github.io/blog/2014/11/22/computer-mac-homebrew/
