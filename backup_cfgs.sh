#!/bin/bash

DIR="dotfiles/"
PREVIOUS=$(pwd)
DATE=$(date)

cd $HOME
# Include all the config files you want to back up after $DIR
cp -vfut $DIR .vimrc .aliases .bashrc .zshrc
cd $DIR
git add .
git commit -m "Update - $DATE"
git push origin main
cd $PREVIOUS
