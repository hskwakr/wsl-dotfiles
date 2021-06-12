#!/bin/sh

# Remove dotfiles and this repository
DOT_DIR="${HOME}/wsl-dotfiles"
if [ -d "${DOT_DIR}" ]; then
	cd "${DOT_DIR}" || exit 1
	echo "Remove linked dot files from dotfiles repository..."
	for f in .??*
	do
		[ "$f" "=" ".git" ] && continue
		[ "$f" "=" ".gitignore" ] && continue
		[ "$f" "=" ".gitattributes" ] && continue

		rm -rvf "${HOME:?}/$f"
	done
	rm -rf "${DOT_DIR:?}"
else
	echo "dotfiles does not exists"
	exit 1
fi


