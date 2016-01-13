#!/bin/bash
set -xv
MYDIR="`dirname $(cd "${0%/*}" 2>/dev/null; echo "$PWD"/"${0##*/}")`"

lnif() {
    if [ ! -e $2 ] ; then
        ln -s $1 $2
    fi
    if [ -L $2 ] ; then
        ln -sf $1 $2
    fi
}

# Backup existing .vim stuff
echo "backing up current vim config"
today=`date +%Y%m%d`
for i in $HOME/.vimrc $HOME/.gvimrc; do [ -e $i ] && [ ! -L $i ] && mv $i $i.$today; done

# linking .vim configs
echo "setting up symlinks"
FILES=".gitignore .gitconfig .vimrc "
for i in $FILES; do
    echo $i
    lnif $MYDIR/$i $HOME/$i
done

# linking scripts from bin to $HOME/bin
FILES=`cd $MYDIR/bin; ls`
for i in $FILES; do
    echo $i
    lnif $MYDIR/bin/$i $HOME/bin/$i
done

# installing vundle
if [ ! -d $HOME/.vim/bundle ]; then
   mkdir -p $HOME/.vim/bundle
fi
if [ ! -e $HOME/.vim/bundle/Vundle.vim ]; then
   echo "Installing Vundle"
   git clone https://github.com/VundleVim/Vundle.vim.git $HOME/.vim/bundle/Vundle.vim
fi



echo "update/install plugins using Vundle"
export SHELL="/bin/sh"
vim -u $HOME/.vimrc +BundleInstall! +BundleClean +qall
