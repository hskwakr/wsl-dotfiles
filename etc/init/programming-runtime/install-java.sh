#!/bin/sh
# Install java
# https://ubuntu.com/tutorials/install-jre#2-installing-openjdk-jre

DOT_DIR="$HOME/wsl-dotfiles"
. "${DOT_DIR}/etc/lib/sh/has.sh"

if ! has "java"; then
  printf "\n\n"
  echo "Start installing java ..."

  sudo apt update
  sudo apt -y install default-jre
else
  echo "java is already installed"
fi
