#!/bin/sh
# Remove bat

DOT_DIR="$HOME/wsl-dotfiles"
. "${DOT_DIR}/etc/lib/sh/has.sh"

if has "fzf"; then
	echo "Remove bat ..."

	sudo dpkg -r bat
	# shellcheck disable=SC1091
	. "${DOT_DIR}/.bashrc"
else
	echo "bat is already removed"
	exit 1
fi
