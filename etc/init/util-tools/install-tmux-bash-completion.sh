#!/bin/sh
# Install tmux-bash-completion

DOT_DIR="$HOME/wsl-dotfiles"
INSTALL_DIR="${DOT_DIR}/.cache/bash/completion"
INSTALL_ITEM="${INSTALL_DIR}/tmux"

. "${DOT_DIR}/etc/lib/sh/has.sh"

if [ -f "${INSTALL_ITEM}" ]; then
  echo "${INSTALL_ITEM} is already installed"
  exit 0
fi

if ! has "wget"; then
  echo "wget required"
  exit 1
fi

if [ ! -d "${INSTALL_DIR}" ]; then
  mkdir -p "${INSTALL_DIR}"
fi

printf "\n\n"
echo "Start installing tmux bash completion ..."
wget -O "${INSTALL_ITEM}" "https://raw.githubusercontent.com/imomaliev/tmux-bash-completion/master/completions/tmux"
