#!/bin/sh
# Install libgpm-dev

DOT_DIR="$HOME/wsl-dotfiles"
. "${DOT_DIR}/etc/lib/sh/has.sh"

printf "\n\n"
echo "Start installing libgpm-dev ..."
sudo apt update
sudo apt -y install libgpm-dev
