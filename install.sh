#!/bin/bash
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
for i in $HOME/.vim $HOME/.vimrc $HOME/.gvimrc; do [ -e $i ] && [ ! -L $i ] && mv $i $i.$today; done

# linking .vim configs
echo "setting up symlinks"
FILES=".gitignore .gitconfig .vim .vimrc .gvimrc .vimrc.bundles .vimrc.bundles.local .vimrc.fork"
for i in $FILES; do
    echo $i
    lnif $MYDIR/$i $HOME/$i
done

if [ ! -d $MYDIR/.vim/bundle ]; then
    mkdir -p $MYDIR/.vim/bundle
fi

if [ ! -e $MYDIR/.vim/bundle/vundle ]; then
    echo "Installing Vundle"
    git clone http://github.com/gmarik/vundle.git $MYDIR/.vim/bundle/vundle
fi



echo "update/install plugins using Vundle"
system_shell=$SHELL
export SHELL="/bin/sh"
vim -u $MYDIR/.vimrc.bundles +BundleInstall! +BundleClean +qall
export SHELL=$system_shell
