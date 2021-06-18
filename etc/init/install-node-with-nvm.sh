#!/bin/sh
# Install node with nvm.
# https://github.com/nvm-sh/nvm#long-term-support

DOT_DIR="$HOME/wsl-dotfiles"

. "${DOT_DIR}/etc/lib/sh/has.sh"

if has "node"; then
	if ! has "nvm"; then
		. "${DOT_DIR}/etc/init/install-nvm.sh"
	fi

	echo "Start installing node ..."
	nvm install "lts/*" --reinstall-packages-from=current
else
	echo "... node is already installed"
	exit 1
fi
