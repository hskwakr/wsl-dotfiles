#!/bin/sh
# Remove gettext

DOT_DIR="$HOME/wsl-dotfiles"
. "${DOT_DIR}/etc/lib/sh/has.sh"

echo "Remove gettext ..."

sudo apt update
sudo apt -y remove gettext
