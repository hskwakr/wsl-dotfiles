#!/bin/sh
# Install lua

DOT_DIR="$HOME/wsl-dotfiles"
. "${DOT_DIR}/etc/lib/sh/has.sh"

printf "\n\n"
echo "Start installing lua ..."
sudo apt update
sudo apt -y install lua5.2
sudo apt -y install liblua5.2-dev
sudo apt -y install luajit
