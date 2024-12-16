# Install command-line tools using Homebrew.
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew tap caskroom/cask
brew tap caskroom/versions

brew install node
brew install git
brew install wget

# Install Apps
brew cask install visual-studio-cask
brew cask install google-chrome
brew cask install spotify
brew cask install insomnia
