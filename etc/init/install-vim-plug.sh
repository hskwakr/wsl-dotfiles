#!/bin/sh
# Install vim-plug with a way following below site.
# https://github.com/junegunn/vim-plug

DOT_DIR="$HOME/wsl-dotfiles"
INSTALL_DIR="$HOME/.vim/autoload"

. "${DOT_DIR}/etc/lib/sh/has.sh"

if [ ! -d "${INSTALL_DIR}" ]; then
	mkdir -p "${INSTALL_DIR}"
fi

if has "curl"; then
	echo "Start installing vim-plug ..."

	curl -fLo "${INSTALL_DIR}/plug.vim" --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
else
	echo "curl required"
	exit 1
fi
