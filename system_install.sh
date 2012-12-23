#!/bin/bash
# Setting up a new ubuntu based computer

sudo apt-get install aptitude -y
sudo aptitude install git -y

mkdir -p ~/.local
cd ~/.local
git clone https://github.com/mikethemagic/dotfiles
cd dotfiles
./install.sh

