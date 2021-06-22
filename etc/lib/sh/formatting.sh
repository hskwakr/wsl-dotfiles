#!/bin/sh
# Formatting all shell scripts files in this repo.

DOT_DIR="$HOME/wsl-dotfiles"
BIN_ITEMS=`find ${DOT_DIR}/bin -name *.sh`
ETC_ITEMS=`find ${DOT_DIR}/etc -name *.sh`
. "${DOT_DIR}/etc/lib/sh/has.sh"

if ! has "shfmt"; then
	echo "shfmt required"
	exit 1
fi

echo "Start formatting sh files..."
for f in ${BIN_ITEMS}; do
  shfmt -i 2 ${f} -w ${f}
done

for f in ${ETC_ITEMS}; do
  shfmt -i 2 ${f} -w ${f}
done
