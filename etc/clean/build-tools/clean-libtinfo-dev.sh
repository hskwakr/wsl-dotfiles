#!/bin/sh
# Remove libtinfo-dev

DOT_DIR="$HOME/wsl-dotfiles"
. "${DOT_DIR}/etc/lib/sh/has.sh"

echo "Remove libtinfo-dev ..."

sudo apt update
sudo apt -y remove libtinfo-dev
