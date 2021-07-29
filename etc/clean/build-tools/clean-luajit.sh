#!/bin/sh
# Remove lua

DOT_DIR="$HOME/wsl-dotfiles"
. "${DOT_DIR}/etc/lib/sh/has.sh"

echo "Remove lua ..."

sudo apt update
sudo apt -y remove lua5.2
sudo apt -y remove liblua5.2-dev
sudo apt -y remove luajit 
