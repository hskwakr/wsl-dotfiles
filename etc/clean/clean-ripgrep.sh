#!/bin/sh
# Remove ripgrep
# https://github.com/BurntSushi/ripgrep

DOT_DIR="$HOME/wsl-dotfiles"
. "${DOT_DIR}/etc/lib/sh/has.sh"

if has "rg"; then
	echo "Remove ripgrep ..."

	sudo apt update
	sudo apt remove ripgrep
	# shellcheck disable=SC1091
	. "${DOT_DIR}/.bashrc"
else
	echo "rg is already removed"
	exit 1
fi
