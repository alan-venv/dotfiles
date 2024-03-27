#!/bin/bash

# v1

# Install desktop environment
sudo apt install i3 xorg

# Install display manager
sudo apt install lightdm lightdm-settings slick-greeter

# Install audio programs
sudo apt install pulseaudio alsa-utils pavucontrol

# Install theme and related
sudo apt install lxappearance feh arc-theme

# Install basic dependencies
sudo apt install curl vim git ufw htop

# Install appimages dependences
sudo apt install fuse libfuse2

# Install others shits
sudo apt install cmatrix neofetch cava figlet

# Install personal programs
sudo apt install terminator firefox-esr keepassxc ffmpeg yt-dlp

# Systemctl configs
sudo systemctl enable lightdm

# Enable firewall
sudo ufw enable




