#!/bin/sh
# Remove libperl-dev

DOT_DIR="$HOME/wsl-dotfiles"
. "${DOT_DIR}/etc/lib/sh/has.sh"

echo "Remove libperl-dev ..."

sudo apt update
sudo apt -y remove libperl-dev
