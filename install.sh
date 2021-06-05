#!/bin/sh

DOT_DIR="$HOME/wsl-dotfiles"

has() {
	type "$1" > /dev/null 2>&1
}

if [ ! -d ${DOT_DIR} ]; then
	if has "git"; then
		git clone "https://github.com/hskwakr/wsl-dotfiles.git" ${DOT_DIR}
	elif has "curl" || has "wget"; then
		TARBALL=""
		if has "curl"; then
			curl -L ${TARBALL} -o master.tar.gz
		else
			wget ${TARBALL}
		fi
		tar -zxvf master.tar.gz
		rm -f master.tar.gz
		mv -f dotfiles-master "${DOT_DIR}"
	else
		echo "curl or wget or git required"
		exit 1
	fi

	cd ${DOT_DIR}
	for f in .??*
	do
		echo "$f"
	done
else
	echo "dotfiles already exists"
	exit 1
fi

