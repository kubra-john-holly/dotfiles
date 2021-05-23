#!/bin/bash

if ! command -v cmake &> /dev/null; then
	brew install cmake
fi

# Pull down src/tmux-mem-cpu-load and install
mkdir -p ~/src && cd ~/src
git clone https://github.com/thewtex/tmux-mem-cpu-load.git
git submodule update --init
pushd ~/src/tmux-mem-cpu-load
cmake .
make
sudo make install
# Return to originating directory
popd

