#!/bin/bash                                                                                                                        

## to download/install/run this script in one line:
#/bin/bash -c "$(curl -fsSl https://raw.githubusercontent.com/version7x/home/master/bin/mac-install.sh)"

chsh -s /bin/bash 2>/dev/null

# X Code needed for Homebrew
xcode-select --install

# Install homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
brew update

# Install Git
brew install git 

# Download "." files and scripts
git clone https://github.com/version7x/home.git 
cp -Rp home/bin $HOME/bin
ln -s home/.bash_profile $HOME/.bash_profile
ln -s home/.vimrc $HOME/.vimrc


. ~/.bash_profile

# Install pkgs
brew install python3
pip3 install --upgrade pip --user
pip3 install pipenv --user

brew cask install google-backup-and-sync
brew install brave-browser

brew install terraform
brew cask install docker

# Install Mac App Store CLI
# https://github.com/mas-cli/mas
brew install mas
# Sign in to mac store - currently broken unless gui version
#mas signin --dialog version7x@mac.com
mas signin --dialog version7x@mac.com'

# Install magnet application from MAS
mas install 441258766
# Install remote desktop app
mas install 1295203466

# Visual Studio Code
brew cask install visual-studio-code
for EXT in 4ops.terraform ms-azuretools.vscode-docker ms-python.python; do
  code --install-extension $EXT
done

# MS Office
brew cask install microsoft-office
