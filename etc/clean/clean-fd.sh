#!/bin/sh
# Remove fd

DOT_DIR="$HOME/wsl-dotfiles"
. "${DOT_DIR}/etc/lib/sh/has.sh"

if has "fd"; then
	echo "Remove fd ..."

	sudo dpkg -r fd
	# shellcheck disable=SC1091
	. "${DOT_DIR}/.bashrc"
else
	echo "fd is already removed"
	exit 1
fi
