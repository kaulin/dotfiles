#!/bin/bash

DIR="dotfiles/"
PREVIOUS=$(pwd)
DATE=$(date)

cd $HOME
cp -vfut $DIR .vimrc .aliases .bashrc .zshrc
cd $DIR
git add .
git commit -m "Update - $DATE"
git push origin main
cd $PREVIOUS
