#!/bin/sh
# Remove ruby-dev

DOT_DIR="$HOME/wsl-dotfiles"
. "${DOT_DIR}/etc/lib/sh/has.sh"

echo "Remove ruby-dev ..."

sudo apt update
sudo apt -y remove ruby-dev
