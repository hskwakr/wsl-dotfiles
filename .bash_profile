# Read ~/.profile if it exsits.
if [ -r ~/.profile ]; then . ~/.profile; fi
# Read ~/.bashrc if it exsits.
case "$-" in *i*) if [ -r ~/.bashrc ]; then . ~\.bashrc; fi;; esac

