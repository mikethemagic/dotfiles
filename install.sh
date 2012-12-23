#!/bin/bash

function abspath() { echo `pwd`/$1; }

ln -s `abspath vim` ~/.vim
ln -s ~/.vim/vimrc ~/.vimrc

ln -s `abspath .gitignore` ~/.gitignore
ln -s `abspath .gitconfig` ~/.gitconfig

test ! -e ~/.vim/sessions && mkdir ~/.vim/sessions
