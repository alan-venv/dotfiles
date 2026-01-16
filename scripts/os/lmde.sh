#!/bin/bash

# PURGE SOME SHITS
sudo apt purge -y libreoffice*
sudo rm -r /etc/libreoffice/
sudo apt purge -y firefox*
sudo apt purge -y java*
sudo apt purge -y speech-dispatcher

# PACKAGES
sudo apt update && sudo apt upgrade
sudo apt install -y vim git curl unzip ccrypt ufw flatpak
sudo apt install -y build-essential libssl-dev
sudo apt install -y flameshot

# FLATPAKS
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
flatpak install -y flathub org.mozilla.firefox
flatpak install -y flathub org.keepassxc.KeePassXC
flatpak install -y flathub com.obsproject.Studio

# CONFIGS
sudo ufw enable
git config --global credential.helper store

# RUST
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

# ZED
curl -f https://zed.dev/install.sh | sh

# DOCKER
sudo apt-get update
sudo apt-get install ca-certificates curl
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/debian/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc
sudo tee /etc/apt/sources.list.d/docker.sources <<EOF
Types: deb
URIs: https://download.docker.com/linux/debian
Suites: trixie
Components: stable
Signed-By: /etc/apt/keyrings/docker.asc
EOF
sudo apt update
sudo apt install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
sudo systemctl enable --now docker
sudo usermod -aG docker $USER

# SHORTCUTS
# - switch to workspace (ALT + NUM)
# - launch terminal (ALT + RETURN)
# - lock screen (ALT + L)
# - poweroff (ALT + P)
