#!/bin/bash

## Packages

# Qtile
sudo pacman -S rofi feh picom terminator

## Default
sudo pacman -S curl git vim unzip ufw fwupd neofetch imagemagick ffmpeg archlinux-wallpaper fuse2
sudo pacman -S keepassxc vivaldi yt-dlp flameshot
sudo ufw enable

# Others shits
sudo pacman -S cmatrix neofetch figlet

# Theme
sudo pacman -S lxappearance arc-gtk-theme

## Codex
sudo pacman -S ffmpeg gst-plugins-ugly gst-plugins-good gst-plugins-base gst-plugins-bad gst-libav gstreamer

## Printer
sudo pacman -S cups avahi nss-mdns hplip print-manager system-config-printer
sudo systemctl enable cups
sudo systemctl enable avahi-daemon

## Development
sudo pacman -S dbus-glib # Lib para rodar o playwright

## VPN
sudo pacman -S globalprotect-openconnect

## Paru
#paru -S ccrypt postman-bin

## /opt
# intellij rustrover camunda-modeler coretto-21 coretto-17 gradle maven


