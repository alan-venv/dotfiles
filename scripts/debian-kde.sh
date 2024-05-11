#!/bin/bash

# Updates
sudo apt update && sudo apt upgrade

# Purge some shits
sudo apt purge -y libreoffice*
sudo rm -r /etc/libreoffice/
sudo apt purge -y firefox*
sudo apt purge -y speech-dispatcher
sudo apt purge -y akregator
sudo apt purge -y kmail*
sudo apt purge -y konqueror
sudo apt purge -y kontrast
sudo apt purge -y gimp*
sudo apt purge -y zutty
sudo apt purge -y kmouth
sudo apt purge -y kfind
sudo apt purge -y sweeper
sudo apt purge -y kmag
sudo apt purge -y kmousetool
sudo apt purge -y kate

sudo apt autoremove -y

# Packages
sudo apt install -y vim git curl ccrypt unzip ufw htop
sudo apt install -y build-essential libssl-dev
sudo apt install -y flatpak flameshot podman

# Flatpaks
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
flatpak install -y flathub org.mozilla.firefox
flatpak install -y flathub io.github.ungoogled_software.ungoogled_chromium
flatpak install -y flathub org.keepassxc.KeePassXC

flatpak permission-set background background org.mozilla.firefox yes
flatpak permission-set background background flathub io.github.ungoogled_software.ungoogled_chromium yes

# UFW
sudo ufw enable

# Git
git config --global credential.helper store
