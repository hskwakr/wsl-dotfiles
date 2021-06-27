#!/bin/sh
# Remove tmux-bash-completion

DOT_DIR="$HOME/wsl-dotfiles"
INSTALL_DIR="${DOT_DIR}/.cache/bash/completion"
INSTALL_ITEM="${INSTALL_DIR}/tmux"

if [ -f "${INSTALL_ITEM}" ]; then
  printf "\n\n"
  echo "Remove tmux bash completion ..."
  rm -vf "${INSTALL_ITEM}"
else
  echo "${INSTALL_ITEM} does not exist"
fi
