#!/bin/bash

# dotfiles = name of config directory with git repository
DIR="dotfiles/"
PREVIOUS=$(pwd)

cd $HOME && cd $DIR
git pull
FILES=$(ls -pa | grep -Ev '(/|*\.sh)')
cp -vfut $HOME $FILES
cd $PREVIOUS
