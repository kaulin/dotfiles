#!/bin/bash

# dotfiles = location of config repo
DIR="$HOME/dotfiles/"
FILES=$(ls -pa $DIR | grep -Ev '(/|*\.sh)')
PREVIOUS=$(pwd)

cd $DIR
git pull
cp -vfut $HOME $FILES
cd $PREVIOUS
