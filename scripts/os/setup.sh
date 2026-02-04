#!/bin/bash

# PACKAGES
sudo apt update && sudo apt upgrade
sudo apt install -y vim git curl unzip ufw ripgrep ccrypt
sudo apt install -y build-essential libssl-dev
sudo apt install -y flameshot
sudo apt install -y flatpak

# RUST
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

# ZED
curl -f https://zed.dev/install.sh | sh

# PYTHON
curl -LsSf https://astral.sh/uv/install.sh | sh
uv tool install ty@latest
uv tool install ruff@latest
