#!/bin/sh
# Install fd with a way following below site.
# https://github.com/sharkdp/fd#on-ubuntu

DOT_DIR="$HOME/wsl-dotfiles"
INSTALL_DIR="${DOT_DIR}/.cache"
INSTALL_ITEM="${INSTALL_DIR}/fd.deb"
. "${DOT_DIR}/etc/lib/sh/has.sh"

if ! has "fd"; then
	if [ ! -d "${INSTALL_DIR}" ]; then
		mkdir -p "${INSTALL_DIR}"
	fi

	if ! has "wget"; then
		echo "wget required"
		exit 1
	fi

	echo "\n\nStart installing fd ..."

	wget -O "${INSTALL_ITEM}" "https://github.com/sharkdp/fd/releases/download/v8.2.1/fd_8.2.1_amd64.deb"
	# adapt version number and architecture
	sudo dpkg -i "${INSTALL_ITEM}"

	rm -rf "${INSTALL_ITEM}"
else
	echo "fd is already installed"
	exit 1
fi
