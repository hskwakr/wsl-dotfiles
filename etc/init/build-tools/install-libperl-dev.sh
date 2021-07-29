#!/bin/sh
# Install libperl-dev

DOT_DIR="$HOME/wsl-dotfiles"
. "${DOT_DIR}/etc/lib/sh/has.sh"

printf "\n\n"
echo "Start installing libperl-dev ..."
sudo apt update
sudo apt -y install libperl-dev
