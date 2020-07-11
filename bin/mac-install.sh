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

# Software/Package Install

# Python
brew install python3
pip3 install --upgrade pip --user
pip3 install pipenv 
pip3 install pylint

# Desktop Apps

brew cask install google-backup-and-sync
brew install brave-browser
brew cask install darktable
brew cask install microsoft-office

#DevOps
brew install terraform
brew cask install docker
# Visual Studio Code
brew cask install visual-studio-code
for EXT in 4ops.terraform ms-azuretools.vscode-docker ms-python.python shan.code-settings-sync visualstudioexptteam.vscodeintellicode gjhuerte.black-looks-good-theme; do
  code --install-extension $EXT
done

# Install Mac App Store CLI
# https://github.com/mas-cli/mas
brew install mas
# Sign in to mac store - currently broken unless gui version
#mas signin --dialog version7x@mac.com
mas signin --dialog version7x@mac.com'

# Mac App Store Installs
# Magnet - workspace snapping
mas install 441258766
# Install Microsoft Remote Desktop
mas install 1295203466
# Install CopyClip - Clipboard manager
mas install 595191960

