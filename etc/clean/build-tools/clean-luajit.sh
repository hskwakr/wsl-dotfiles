#!/bin/sh
# Remove lua

echo "Remove lua ..."

sudo apt update
sudo apt -y remove luajit
sudo apt -y remove libluajit-5.1-dev
