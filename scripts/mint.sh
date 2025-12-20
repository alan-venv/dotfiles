#!/bin/bash

# PURGE SOME SHITS
sudo apt purge -y libreoffice*
sudo rm -r /etc/libreoffice/
sudo apt purge -y firefox
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

# SHORTCUTS
# - switch to workspace (ALT + NUM)
# - launch terminal (ALT + RETURN)
# - lock screen (ALT + L)
# - poweroff (ALT + P)
