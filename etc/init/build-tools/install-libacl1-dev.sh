#!/bin/sh
# Install libacl1-dev

DOT_DIR="$HOME/wsl-dotfiles"
. "${DOT_DIR}/etc/lib/sh/has.sh"

printf "\n\n"
echo "Start installing libacl1-dev ..."
sudo apt update
sudo apt -y install libacl1-dev
