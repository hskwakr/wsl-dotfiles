#!/bin/sh
# Remove starship with a way following below site.
# https://starship.rs/faq/#how-do-i-uninstall-starship

printf "\n\n"
echo "Remove starship ..."
# Locate and delete the starship binary
rm -f "$(which starship)"
