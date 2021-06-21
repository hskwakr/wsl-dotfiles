#!/bin/sh
# Install z with a way following below site.
# https://github.com/rupa/z

DOT_DIR="$HOME/wsl-dotfiles"
INSTALL_ITEM="${DOT_DIR}/.cache/z.sh"
. "${DOT_DIR}/etc/lib/sh/has.sh"

if ! has "z"; then
	echo "Start installing z ..."

	if ! has "wget"; then
		echo "wget required"
		exit 1
	fi

	wget -O "${INSTALL_ITEM}" "https://raw.githubusercontent.com/rupa/z/master/z.sh"

	# shellcheck disable=SC1091
	. "${DOT_DIR}/.bashrc"
else
	echo "z is already installed"
	exit 1
fi
