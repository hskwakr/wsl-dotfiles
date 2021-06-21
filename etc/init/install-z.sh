#!/bin/sh
# Install z with a way following below site.
# https://github.com/rupa/z

DOT_DIR="$HOME/wsl-dotfiles"
INSTALL_DIR="${DOT_DIR}/.cache"
INSTALL_ITEM="${INSTALL_DIR}/z.sh"
. "${DOT_DIR}/etc/lib/sh/has.sh"

if ! has "z"; then
	if [ ! -d "${INSTALL_DIR}" ]; then
		mkdir -p "${INSTALL_DIR}"
	fi

	if ! has "wget"; then
		echo "wget required"
		exit 1
	fi

	echo "\n\nStart installing z ..."

	wget -O "${INSTALL_ITEM}" "https://raw.githubusercontent.com/rupa/z/master/z.sh"
else
	echo "z is already installed"
	exit 1
fi
