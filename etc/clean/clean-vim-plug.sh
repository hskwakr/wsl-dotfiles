#!/bin/sh
# https://github.com/junegunn/vim-plug

CLEAN_DIR="$HOME/.vim/autoload"
REMOVE_ITEM="${CLEAN_DIR}/plug.vim"

if [ -d "${CLEAN_DIR}" ]; then
	echo "Remove ${REMOVE_ITEM} ..."
	rm -rf "${REMOVE_ITEM:?}"
else
	echo "${CLEAN_DIR} does not exist"
	exit 1
fi
