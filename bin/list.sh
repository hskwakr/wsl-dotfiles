#!/bin/sh
# Show list of dotfiles

if [ -d "${DOTFILES}" ]; then
  cd "${DOTFILES}" || exit 1
  echo "Show list of available dotfiles in dotfiles repository..."
  for f in .??*; do
    [ "$f" "=" ".git" ] && continue
    [ "$f" "=" ".github" ] && continue
    [ "$f" "=" ".gitignore" ] && continue
    [ "$f" "=" ".gitattributes" ] && continue
    [ "$f" "=" ".cache" ] && continue

    echo "${HOME}/$f"
  done
else
  echo "dotfiles does not exists"
  exit 1
fi
