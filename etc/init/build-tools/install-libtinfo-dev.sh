#!/bin/sh
# Install libtinfo-dev

DOT_DIR="$HOME/wsl-dotfiles"
. "${DOT_DIR}/etc/lib/sh/has.sh"

printf "\n\n"
echo "Start installing libtinfo-dev ..."
sudo apt update
sudo apt -y install libtinfo-dev
