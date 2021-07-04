#!/bin/sh
# Update and upgrade packages then remove redundant packages.

sudo apt update && sudo apt -y upgrade && sudo apt -y autoremove
