#!/bin/sh

INIT_DIR="$HOME/wsl-dotfiles/etc/init"

if [ -d "${INIT_DIR}" ]; then
	echo "Start runing init scripts..."
	cd "${INIT_DIR}" || exit 1
	for f in *.sh; do
		echo "Run ${f}..."
		sh "${f}"
	done
else
	echo "${INIT_DIR} does not exist"
	exit 1
fi
