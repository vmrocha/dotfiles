#!/bin/bash

# Add git aliases
git config --global alias.co checkout 
git config --global alias.sw switch
git config --global commit.gpgsign true

# Link dotfiles
ln -sf ~/dotfiles/vimrc ~/.vimrc
ln -sf ~/dotfiles/gemrc ~/.gemrc
