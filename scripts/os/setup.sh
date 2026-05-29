#!/bin/bash

# PURGES
sudo apt purge -y libreoffice-*
sudo rm -r /etc/libreoffice/
sudo apt purge -y firefox*
sudo apt purge -y java*
sudo apt purge -y thunderbird
sudo apt purge -y speech-dispatcher

# PACKAGES

## BASICS
sudo apt update && sudo apt upgrade
sudo apt install -y git vim curl htop unzip ufw ccrypt
sudo ufw enable
sudo apt install -y keepassxc flameshot fastfetch

## AGENTS PREFERENCES
sudo apt install ripgrep jq xxd ffmpeg fd-find
ln -s $(which fdfind) ~/.local/bin/fd

## RUST
## [RUST](https://www.rust-lang.org/tools/install)
sudo apt install -y build-essential libssl-dev
sudo apt install -y libopencv-dev llvm-dev libclang-dev clang pkg-config

## OTHERS
# - [ZED](https://zed.dev)
# - [RUST](https://www.rust-lang.org/tools/install)
# - [CHROME](https://www.google.com/chrome)
# - [DOCKER](https://docs.docker.com/engine/install/fedora)

## Docker Post Install
# $ sudo usermod -aG docker $USER && reboot

# PYTHON
curl -LsSf https://astral.sh/uv/install.sh | sh
uv tool install ty@latest
uv tool install ruff@latest
