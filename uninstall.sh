#!/bin/bash

function dellink() {
    if [ -L $1 ] ; then
        rm $1
    fi
}

dellink ~/.vim
dellink ~/.vimrc
