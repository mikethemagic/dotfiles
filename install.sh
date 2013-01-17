#!/bin/bash

function abspath() { echo `pwd`/$1; }

ln -s `abspath .gitignore` ~/.gitignore
ln -s `abspath .gitconfig` ~/.gitconfig

