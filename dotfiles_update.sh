#!/bin/bash

# dotfiles = name of config directory with git repository
DIR="dotfiles/"
PREVIOUS=$(pwd)

cd $HOME && cd $DIR
git pull
FILES=$(cat dotfiles_backup.sh | grep FILES= | cut -d= -f2)
cp -vfut $HOME $FILES
cd $PREVIOUS
