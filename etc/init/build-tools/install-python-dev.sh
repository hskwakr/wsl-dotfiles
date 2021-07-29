#!/bin/sh
# Install python-dev

DOT_DIR="$HOME/wsl-dotfiles"
. "${DOT_DIR}/etc/lib/sh/has.sh"

printf "\n\n"
echo "Start installing python-dev ..."
sudo apt update
sudo apt -y install python-dev
