#!/bin/sh
# Remove z

DOT_DIR="$HOME/wsl-dotfiles"
REMOVE_ITEM="${DOT_DIR}/.cache/z.sh"
. "${DOT_DIR}/etc/lib/sh/has.sh"

if [ -s ${REMOVE_ITEM} ]; then
	echo "Remove z ..."

	rm -rvf ${REMOVE_ITEM}
	# shellcheck disable=SC1091
	. "${DOT_DIR}/.bashrc"
else
	echo "z is already removed"
	exit 1
fi
