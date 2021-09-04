#!/usr/bin/env bash

# cd "$(dirname "${BASH_SOURCE}")";

# git pull origin main;

function doIt() {
	rsync --exclude ".git/" \
		--exclude ".DS_Store" \
		--exclude ".osx" \
		--exclude "bootstrap.sh" \
		--exclude "README.md" \
		--exclude "LICENSE.txt" \
		-avh \
    --no-perms \
    . ~;

	source ~/.zshenv;
}

doit;

unset doIt;
