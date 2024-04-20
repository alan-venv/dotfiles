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

# Programs
sudo apt install -y vim git curl ccrypt unzip
sudo apt install -y keepassxc flameshot podman
# sudo apt install build-essential libssl-dev


# Git
git config --global credential.helper store


# vc code and vivaldi by .deb package from website
