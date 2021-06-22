#!/bin/sh
# Install go with a way following below site.
# https://golang.org/doc/install

DOT_DIR="$HOME/wsl-dotfiles"
DOWNLOAD_DIR="${DOT_DIR}/.cache"
. "${DOT_DIR}/etc/lib/sh/has.sh"

if [ ! -d "${DOWNLOAD_DIR}" ]; then
  mkdir -p "${DOWNLOAD_DIR}"
fi

if ! has "tar" && has "wget"; then
  echo "wget and tar required"
  exit 1
fi

printf "\n\nStart installing go ..."

wget -O "${DOWNLOAD_DIR}/go1.16.5.linux-amd64.tar.gz" "https://golang.org/dl/go1.16.5.linux-amd64.tar.gz"

sudo rm -rf /usr/local/go
sudo tar -C /usr/local -xzf "${DOWNLOAD_DIR}/go1.16.5.linux-amd64.tar.gz"

rm -rf "${DOWNLOAD_DIR}/go1.16.5.linux-amd64.tar.gz"
