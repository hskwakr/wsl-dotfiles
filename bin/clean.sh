#!/bin/sh
# Remove dotfiles and this repository

DOT_DIR="${HOME}/wsl-dotfiles"
CACHE_DIR="${HOME}/.cache/dotfiles/default"

if [ -d "${DOT_DIR}" ]; then
  sh "${DOT_DIR}/bin/run-clean-scripts.sh"

  cd "${DOT_DIR}" || exit 1
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
  sudo rm -rf "${DOT_DIR:?}"
else
  echo "dotfiles does not exists"
  exit 1
fi
