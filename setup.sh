#!/bin/bash

# copy in new config files
if [ -f ~/.bash_profile ]; then
    echo Copying .bash_profile to .bash_profile.old...
    mv ~/.bash_profile ~/.bash_profile.old
fi

if [ -f ~/.vimrc ]; then
    echo Copying .vimrc to .vimrc.old...
    mv ~/.vimrc ~/.vimrc.old
fi

echo Creating symlinks...
ln -s ~/config/bash_profile ~/.bash_profile
ln -s ~/config/vimrc ~/.vimrc

# get vcprompt
if [ ! -f ~/bin/vcprompt ]; then
    echo Downloading vcprompt...
    mkdir ~/bin
    curl -sL https://github.com/djl/vcprompt/raw/master/bin/vcprompt > ~/bin/vcprompt
    chmod 755 ~/bin/vcprompt
fi

source ~/.bash_profile
echo Done!
