#!/bin/bash

# Additional repos
sudo add-apt-repository -y ppa:webupd8team/java
sudo add-apt-repository -y ppa:moka/daily

# Update everything
sudo apt update -y 
sudo apt upgrade -y 
sudo apt dist-upgrade -y

# Git
sudo apt install -y git
git config --global user.name "Plamen Neshkov"
git config --global user.email "plamen@tuta.io"

# Vim
git clone https://github.com/powerline/fonts
sh fonts/install.sh
rm -rf fonts
sudo apt install -y vim
wget -O ~/.vimrc https://raw.githubusercontent.com/PlamenNeshkov/dotfiles/master/.vimrc
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall
git config --global core.editor vim

# Theming
sudo apt install -y unity-tweak-tool
sudo apt install -y moka-icon-theme
wget -O arc-theme.deb http://download.opensuse.org/repositories/home:/Horst3180/xUbuntu_16.04/all/arc-theme_1465131682.3095952_all.deb
sudo dpkg -i arc-theme.deb
sudo apt install -y -f
rm arc-theme.deb

# Google Chrome
wget -O google-chrome.deb https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome.deb
sudo apt install -y -f
rm google-chrome.deb

# Useful software
sudo apt install -y brackets vlc pidgin tree zip unzip rar unrar

# Media codecs
sudo apt install -y ubuntu-restricted-extras

# Clean up
sudo apt install -y -f
sudo apt autoremove
sudo apt autoclean -y

# Zsh
sudo apt install -y zsh
wget -O ~/.zshrc "https://raw.githubusercontent.com/PlamenNeshkov/dotfiles/master/.zshrc"
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
