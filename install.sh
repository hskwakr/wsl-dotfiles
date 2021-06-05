#!/bin/sh

DOT_DIR="$HOME/wsl-dotfiles"

has() {
	type "$1" > /dev/null 2>&1
}

if [ ! -d ${DOT_DIR} ]; then
	if has "git"; then
		git clone "https://github.com/hskwakr/wsl-dotfiles.git" ${DOT_DIR}
	elif has "curl" || has "wget"; then
		TARBALL="https://github.com/hskwakr/wsl-dotfiles/archive/refs/heads/main.tar.gz"
		if has "curl"; then
			curl -L ${TARBALL} -o main.tar.gz
		else
			wget ${TARBALL}
		fi
		tar -zxvf main.tar.gz
		rm -f main.tar.gz
		mv -f dotfiles-main "${DOT_DIR}"
	else
		echo "curl or wget or git required"
		exit 1
	fi

	cd ${DOT_DIR}
	for f in .??*
	do
		[[ "$f" == ".git" ]] && continue
		[[ "$f" == ".gitignore" ]] && continue
		[[ "$f" == ".gitattributes" ]] && continue
		ln -snf $DOT_DIR/"$f" $HOME/"$f"
	done
else
	echo "dotfiles already exists"
	exit 1
fi

