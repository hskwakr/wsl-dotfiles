#!/bin/sh
# Install fd with a way following below site.
# https://github.com/sharkdp/fd#on-ubuntu

DOT_DIR="$HOME/wsl-dotfiles"
INSTALL_ITEM="${DOT_DIR}/.cache/fd.deb"
. "${DOT_DIR}/etc/lib/sh/has.sh"

if ! has "fd"; then
	echo "Start installing fd ..."

	if ! has "wget"; then
		echo "wget required"
		exit 1
	fi

	wget -O "${INSTALL_ITEM}" "https://github.com/sharkdp/fd/releases/download/v8.2.1/fd_8.2.1_amd64.deb"
	# adapt version number and architecture
	sudo dpkg -i "${INSTALL_ITEM}"

	rm -rf "${INSTALL_ITEM}"
	# shellcheck disable=SC1091
	. "${DOT_DIR}/.bashrc"
else
	echo "fd is already installed"
	exit 1
fi
