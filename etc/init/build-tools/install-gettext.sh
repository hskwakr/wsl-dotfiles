#!/bin/sh
# Install gettext

DOT_DIR="$HOME/wsl-dotfiles"
. "${DOT_DIR}/etc/lib/sh/has.sh"

printf "\n\n"
echo "Start installing gettext ..."
sudo apt update
sudo apt -y install gettext
