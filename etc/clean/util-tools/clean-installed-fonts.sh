#!/bin/sh
# Remove installed fonts

DOT_DIR="$HOME/wsl-dotfiles"
FONTS_DIR="$HOME/.fonts"
. "${DOT_DIR}/etc/lib/sh/has.sh"

if [ ! -d "${FONTS_DIR}" ]; then
  echo "${FONTS_DIR} does not exist"
  exit 0
fi
rm -rf "${FONTS_DIR:?}"

if ! has "fc-cache"; then
  sh "${DOT_DIR}/etc/init/build-tools/install-fontconfig.sh"
fi
fc-cache -fv
