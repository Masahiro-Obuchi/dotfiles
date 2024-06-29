#!/bin/bash

set -u

BASEDIR=$(dirname $0)
cd $BASEDIR

# Create symbolic link of dotfiles
for f in .??*; do
	[ "$f" = ".git" ] && continue
	[ "$f" = ".gitconfig.local.template" ] && continue
	[ "$f" = ".gitmodules" ] && continue
	[ "$f" = ".config" ] && continue

	ln -snfv ${PWD}/"$f" ~/
done
