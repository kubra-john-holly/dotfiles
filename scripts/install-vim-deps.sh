#!/bin/bash

# Install dependencies for languages/tools to be used by YouCompleteMe
brew install cmake 
# Install vim-plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
	    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
# Install plugins via vim-plug
vim +PlugInstall
# Compile dependencies for YouCompleteMe
pushd ~/.vim/plugged/YouCompleteMe
python3 install.py --java-completer
popd
