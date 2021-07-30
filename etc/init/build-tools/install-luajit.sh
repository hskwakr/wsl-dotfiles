#!/bin/sh
# Install lua

DOT_DIR="$HOME/wsl-dotfiles"
. "${DOT_DIR}/etc/lib/sh/has.sh"

printf "\n\n"
echo "Start installing lua ..."
sudo apt update
sudo apt -y install luajit
sudo apt -y install libluajit-5.1-dev
