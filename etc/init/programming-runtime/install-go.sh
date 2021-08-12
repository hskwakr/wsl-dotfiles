#!/bin/sh
# Install go with a way following below site.
# https://golang.org/doc/install

DOT_DIR="$HOME/wsl-dotfiles"
DOWNLOAD_DIR="${HOME}/.cache/mybuild"
GO_VERSION="go1.16.7.linux-amd64.tar.gz"
. "${DOT_DIR}/etc/lib/sh/has.sh"

if has "go"; then
  echo "go is already installed"
  exit 0
fi
if [ ! -d "${DOWNLOAD_DIR}" ]; then
  mkdir -p "${DOWNLOAD_DIR}"
fi

if ! has "tar" && has "wget"; then
  echo "wget and tar required"
  exit 1
fi

printf "\n\n"
echo "Start installing go ..."

wget -O "${DOWNLOAD_DIR}/${GO_VERSION}" "https://golang.org/dl/${GO_VERSION}"

sudo rm -rf /usr/local/go
sudo tar -C /usr/local -xzf "${DOWNLOAD_DIR}/${GO_VERSION}"

rm -rf "${DOWNLOAD_DIR}/${GO_VERSION:?}"
