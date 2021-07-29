#!/bin/sh
# Remove python-dev

DOT_DIR="$HOME/wsl-dotfiles"
. "${DOT_DIR}/etc/lib/sh/has.sh"

echo "Remove python-dev ..."

sudo apt update
sudo apt -y remove python-dev
