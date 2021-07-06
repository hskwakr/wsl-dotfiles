#!/bin/sh
# Install nerd-fonts with a way following below site.
# https://github.com/ryanoasis/nerd-fonts#font-installation

DOT_DIR="$HOME/wsl-dotfiles"
DOWNLOAD_DIR="${DOT_DIR}/.cache/.fonts"
DOWNLOAD_ITEM1="${DOWNLOAD_DIR}/FiraCode.zip"
INSTALL_DIR="$HOME/.fonts"

. "${DOT_DIR}/etc/lib/sh/has.sh"

if ! has "wget"; then
  echo "wget required"
  exit 1
fi

if ! has "unzip"; then
  sh "${DOT_DIR}/etc/init/build-tools/install-unzip.sh"
fi
if ! has "fc-cache"; then
  sh "${DOT_DIR}/etc/init/build-tools/install-fontconfig.sh"
fi

if [ ! -d "${DOWNLOAD_DIR}" ]; then
  mkdir -p "${DOWNLOAD_DIR}"
fi

if fc-list | grep 'Fira' >/dev/null; then
  echo "nerd-fonts is already installed"
  exit 0
fi

printf "\n\n"
echo "Start installing nerd-fonts ..."
wget -O "${DOWNLOAD_ITEM1}" "https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/FiraCode.zip"
unzip "${DOWNLOAD_ITEM1}" -d "${INSTALL_DIR}"
rm -rf "${DOWNLOAD_ITEM1}"

fc-cache -fv
