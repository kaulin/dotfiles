#!/bin/bash

# dotfiles = name of config directory with git repository
DIR="dotfiles/"
# name all the config files you want to backup from your home directory
FILES=".vimrc .aliases .bashrc .zshrc"
PREVIOUS=$(pwd)
DATE=$(date)

cd $HOME
cp -vfut $DIR $FILES
cd $DIR
git add .
git commit -m "Update - $DATE"
git push origin main
cd $PREVIOUS
