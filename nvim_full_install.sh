#!/bin/bash

# Nvim 0.8
# sudo apt install ./dependencies/nvim-linux64.deb
cp -r ./config/nvim ~/.config

# packer.nvim
sudo apt-get update
sudo apt-get install git-all
git clone --depth 1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim

# curl -sL install-node.vercel.app/lts | bash
sudo tar -C /usr/local --strip-components 1 -xf ./dependencies/node-v19.0.0-linux-x64.tar.xz

# 


