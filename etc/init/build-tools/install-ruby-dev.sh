#!/bin/sh
# Install ruby-dev

DOT_DIR="$HOME/wsl-dotfiles"
. "${DOT_DIR}/etc/lib/sh/has.sh"

printf "\n\n"
echo "Start installing ruby-dev ..."
sudo apt update
sudo apt -y install ruby-dev
