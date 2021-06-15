#!/bin/sh
# Install dein.vim with a way following below site.
# https://github.com/Shougo/dein.vim

DOT_DIR="$HOME/wsl-dotfiles"
ETC_DIR="$HOME/wsl-dotfiles/etc"

has() {
	type "$1" >/dev/null 2>&1
}

if [ -d "${ETC_DIR}" ]; then
	if has "curl"; then
		cd "${ETC_DIR}" || exit 1
		echo "Start trying to install dein.vim ..."

		curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > "${ETC_DIR}"/dein-installer.sh
		sh "${ETC_DIR}"/dein-installer.sh ${DOT_DIR}/.cache/dein
		rm -rvf "${ETC_DIR}"/dein-installer.sh
	else
		echo "curl required"
		exit 1
	fi
else
	echo "${ETC_DIR} does not exist"
	exit 1
fi
