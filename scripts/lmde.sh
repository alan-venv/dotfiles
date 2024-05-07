#!/bin/bash

# PURGE SOME SHITS
sudo apt purge -y libreoffice*
sudo rm -r /etc/libreoffice/
sudo apt purge -y firefox
sudo apt purge -y java*

# PACKAGES
sudo apt update && sudo apt upgrade
sudo apt install -y vim git curl unzip ccrypt ufw flatpak podman
sudo apt install -y build-essential libssl-dev
sudo apt install -y flameshot

# FLATPAKS
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
flatpak install -y flathub org.mozilla.firefox
flatpak install -y flathub org.keepassxc.KeePassXC
flatpak install -y flathub io.github.ungoogled_software.ungoogled_chromium

# CONFIGS
sudo ufw enable
git config --global credential.helper store

# SHORTCUTS
# - Switch to workspace (ALT + NUM)
# - Launch terminal (ALT + RETURN)
# - Lock screen (ALT + L)
