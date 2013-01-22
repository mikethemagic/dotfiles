#!/bin/bash

MYDIR="`dirname $(cd "${0%/*}" 2>/dev/null; echo "$PWD"/"${0##*/}")`"
function dellink() {
    if [ -L $1 ] ; then
        rm $1
    fi
}

dellink ~/.vimrc
dellink ~/.gvimrc
dellink ~/.vimrc.bundles
dellink ~/.vimrc.fork
dellink ~/.vimrc.local
dellink ~/.vimrc.bundles.fork
dellink ~/.vim

rm -rf $MYDIR/.vim

