# Install command-line tools using Homebrew.
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew tap caskroom/cask
brew tap caskroom/versions

brew install node
brew install git
brew install wget

# Install Apps
brew cask install atom
brew cask install visual-studio-cask
brew cask install dropbox
brew cask install firefox
brew cask install google-chrome
brew cask install spotify
brew cask install vlc
brew cask install insomnia