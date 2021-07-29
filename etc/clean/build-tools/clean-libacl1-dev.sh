#!/bin/sh
# Remove libacl1-dev

DOT_DIR="$HOME/wsl-dotfiles"
. "${DOT_DIR}/etc/lib/sh/has.sh"

echo "Remove libacl1-dev ..."

sudo apt update
sudo apt -y remove libacl1-dev
