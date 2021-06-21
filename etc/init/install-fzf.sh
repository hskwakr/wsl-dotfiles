#!/bin/sh
# Install fzf with a way following below site.
# https://github.com/junegunn/fzf#using-linux-package-managers

DOT_DIR="$HOME/wsl-dotfiles"
. "${DOT_DIR}/etc/lib/sh/has.sh"

if ! has "fzf"; then
	echo "\n\nStart installing fzf ..."

	sudo apt update
	sudo apt install fzf
else
	echo "fzf is already installed"
	exit 1
fi
