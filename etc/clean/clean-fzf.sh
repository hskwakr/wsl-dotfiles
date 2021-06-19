#!/bin/sh
# Remove fzf
# https://github.com/junegunn/fzf#using-linux-package-managers

DOT_DIR="$HOME/wsl-dotfiles"
. "${DOT_DIR}/etc/lib/sh/has.sh"

if has "fzf"; then
	echo "Remove fzf ..."

	sudo apt update
	sudo apt remove fzf
	# shellcheck disable=SC1091
	. "${DOT_DIR}/.bashrc"
else
	echo "fzf is already removed"
	exit 1
fi
