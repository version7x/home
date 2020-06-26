#!/bin/bash                                                                                                                        

## to download/install/run this script in one line:
#/bin/bash -c "$(curl -fsSl https://raw.githubusercontent.com/version7x/home/master/bin/mac-install.sh)"

chsh -s /bin/bash 2>/dev/null

xcode-select --install

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
brew update

brew install git 
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
brew install docker

# Install Mac App Store
# https://github.com/mas-cli/mas
brew install mas
#mas signin --dialog version7x@mac.com
mas signin --dialog version7x@mac.com
mas install 441258766

# Visual Studio Code
brew cask install visual-studio-code
for EXT in 4ops.terraform ms-azuretools.vscode-docker ms-python.python; do
  code --install-extension $EXT
done
