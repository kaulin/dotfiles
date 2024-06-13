#!/bin/bash

DIR="$HOME/dotfiles/"
PREVIOUS=$(pwd)

cd $DIR
git pull
cp -vfut $HOME .vimrc .aliases .bashrc .zshrc
cd $PREVIOUS
