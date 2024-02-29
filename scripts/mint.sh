#!/bin/bash

# PURGE SOME SHITS
sudo apt purge libreoffice*
sudo rm -r /etc/libreoffice/
sudo apt purge firefox
sudo apt purge java*
sudo apt purge speech-dispatcher

# Packages
sudo apt install vim git curl ccrypt
sudo apt install build-essential libssl-dev

# Flatpak
flatpak install -y flathub org.mozilla.firefox
flatpak install -y flathub org.keepassxc.KeePassXC
#flatpak install -y flathub com.getpostman.Postman
flatpak install -y flathub com.vivaldi.Vivaldi
flatpak install -y flathub org.onlyoffice.desktopeditors
flatpak install -y flathub org.kde.okular

# Shortcuts
# - Switch to workspace (ALT + NUM)
# - Launch terminal (ALT + RETURN)
# - Lock screen (ALT + L)
# - Poweroff (ALT + P)
