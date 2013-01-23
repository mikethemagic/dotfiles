#!/bin/bash

MYDIR="`dirname $(cd "${0%/*}" 2>/dev/null; echo "$PWD"/"${0##*/}")`"
function dellink() {
    if [ -L $1 ] ; then
        rm $1
    fi
}

FILES=`ls .vimrc*`
for i in $FILES; do
    echo removing $HOME/$i
    dellink $HOME/$i
done

# linking scripts from bin to $HOME/bin
FILES=`cd $MYDIR/bin; ls`
for i in $FILES; do
    echo removing $HOME/bin/$i
    dellink $MYDIR/bin/$i $HOME/bin/$i
done

rm -rf $MYDIR/.vim

