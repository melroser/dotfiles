#!/bin/bash
#
# vundle_setup.sh
#

# install the Vundle plugin for Vim
echo "clean bundle dir"
rm -rf ~/.vim/bundle/*
echo "Installing Vundle to ~/.vim/bundles"
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# use vundle to install remaining plugins
vim +PluginInstall +qall
echo "done"
