#!/bin/sh
# Install fzf with a way following below site.
# https://github.com/junegunn/fzf#using-git

DOT_DIR="${HOME}/wsl-dotfiles"
BIN_DIR="${HOME}/.cache/mybuild/bin"
DOWNLOAD_DIR="${HOME}/.cache/mybuild/.fzf"
. "${DOT_DIR}/etc/lib/sh/has.sh"

if ! has "fzf"; then
  printf "\n\n"
  echo "Start installing fzf ..."

  git clone --depth 1 https://github.com/junegunn/fzf.git "${DOWNLOAD_DIR}"
  bash -c "${DOWNLOAD_DIR}/install --bin --no-bash"

  if [ ! -d "${BIN_DIR}" ]; then
    mkdir -p "${BIN_DIR}"
  fi
  ln -snf "${DOWNLOAD_DIR}/bin/fzf" "${BIN_DIR}/fzf"
  ln -snf "${DOWNLOAD_DIR}/bin/fzf-tmux" "${BIN_DIR}/fzf-tmux"
else
  echo "fzf is already installed"
fi
