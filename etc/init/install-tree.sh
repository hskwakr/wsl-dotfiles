#!/bin/sh
# Install tree

DOT_DIR="$HOME/wsl-dotfiles"
. "${DOT_DIR}/etc/lib/sh/has.sh"

if ! has "tree"; then
	echo "Start installing tree ..."

	sudo apt update
	sudo apt install tree
else
	echo "tree is already installed"
	exit 1
fi
