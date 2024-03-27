#!/bin/bash

# Default
sudo pacman -S curl git vim unzip ufw fwupd neofetch imagemagick ffmpeg fuse2
sudo ufw enable

# KDE
sudo pacman -S okular gwenview kcalc vlc kwalletmanager

# Personal
sudo pacman -S keepassxc vivaldi flameshot

# Codex
sudo pacman -S ffmpeg gst-plugins-ugly gst-plugins-good gst-plugins-base gst-plugins-bad gst-libav gstreamer

# Printer
sudo pacman -S cups avahi nss-mdns hplip print-manager system-config-printer
sudo systemctl enable cups
sudo systemctl enable avahi-daemon

# Docker
sudo pacman -S docker docker-compose
sudo systemctl enable docker.service --now
sudo usermod -aG docker $USER

# Development
sudo pacman -S dbus-glib # Lib para rodar o playwright
