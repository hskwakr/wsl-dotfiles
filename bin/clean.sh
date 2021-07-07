#!/bin/sh
# Remove dotfiles and this repository

CACHE_DIR="${DOTFILES}/.cache/default"

if [ -d "${DOTFILES}" ]; then
  sh "${DOTFILES}/bin/run-clean-scripts.sh"

  cd "${DOTFILES}" || exit 1
  echo "Remove linked dot files from dotfiles repository..."
  for f in .??*; do
    [ "$f" "=" ".git" ] && continue
    [ "$f" "=" ".github" ] && continue
    [ "$f" "=" ".gitignore" ] && continue
    [ "$f" "=" ".gitattributes" ] && continue

    sudo rm -rf "${HOME:?}/${f}"
    echo "Removed ${f}"

    if [ -d "${CACHE_DIR}" ]; then
      if [ -f "${CACHE_DIR}/${f}" ]; then
        mv "${CACHE_DIR}/${f}" "${HOME}/${f}"
      fi
    fi
  done
  sudo rm -rf "${DOTFILES:?}"
else
  echo "dotfiles does not exists"
  exit 1
fi
