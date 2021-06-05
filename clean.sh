#!/bin/bash

DOT_DIR="$HOME/wsl-dotfiles"
if [ -d ${DOT_DIR} ]; then
	cd ${DOT_DIR}
	for f in .??*
	do
		[[ "$f" == ".git" ]] && continue
		[[ "$f" == ".gitignore" ]] && continue
		[[ "$f" == ".gitattributes" ]] && continue

		rm -rf "$HOME/$f"
		echo "Removed $f"
	done
else
	echo "dotfiles does not exists"
	exit 1
fi


