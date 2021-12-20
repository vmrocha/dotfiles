#!/bin/bash

if [ $SPIN ]; then
    # Install packages
    sudo apt install -y autoconf coreutils parallel zip bear

    # Add git aliases
    git config --global alias.co checkout 
    git config --global alias.sw switch
    git config --global commit.gpgsign true

    # Link dotfiles
    #ln -sf ~/dotfiles/zshrc ~/.zshrc
    ln -sf ~/dotfiles/vimrc ~/.vimrc
    ln -sf ~/dotfiles/gemrc ~/.gemrc
fi
