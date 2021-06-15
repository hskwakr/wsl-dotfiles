#!/bin/sh
# Clean dein.vim with a way following below site.
# https://github.com/Shougo/dein.vim

DOT_DIR="$HOME/wsl-dotfiles"

if [ -d "${DOT_DIR}" ]; then
	echo "Removing ${DOT_DIR}/.chache/dein ..."
	rm -rf "${DOT_DIR:?}/.cache/dein"
	echo "done."
else
	echo "${DOT_DIR} does not exist"
	exit 1
fi
