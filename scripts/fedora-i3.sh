#!/bin/bash

# liveinst

sudo dnf update
sudo dnf upgrade
sudo dnf install firefox keepassxc okular ufw git vim rofi neofetch lxappearance arc-theme picom feh

sudo dnf -y install dnf-plugins-core
sudo dnf config-manager --add-repo https://download.docker.com/linux/fedora/docker-ce.repo
sudo dnf install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
sudo systemctl enable docker
sudo systemctl start docker

