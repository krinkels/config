#!/bin/bash

# copy in new config files
if [ -f ~/.bash_profile ]; then
    mv ~/.bash_profile ~/.bash_profile.old
fi

if [ -f ~/.vimrc ]; then
    mv ~/.vimrc ~/.vimrc.old
fi

cp bash_profile ~/.bash_profile
cp vimrc ~/.vimrc

# get vcprompt
if [ ! -f ~/bin/vcprompt ]; then
    mkdir ~/bin
    curl -sL https://github.com/djl/vcprompt/raw/master/bin/vcprompt > ~/bin/vcprompt
    chmod 755 ~/bin/vcprompt
fi
