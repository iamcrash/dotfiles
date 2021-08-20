#!/bin/bash
cd ~ || exit 1
rm -r neovim || true
git clone https://github.com/neovim/neovim
cd neovim || exit 1
make CMAKE_BUILD_TYPE=Release install
cd ~ || exit 1
rm -r neovim
