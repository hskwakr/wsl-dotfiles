#!/bin/sh
# Remove libgpm-dev

DOT_DIR="$HOME/wsl-dotfiles"
. "${DOT_DIR}/etc/lib/sh/has.sh"

echo "Remove libgpm-dev ..."

sudo apt update
sudo apt -y remove libgpm-dev
