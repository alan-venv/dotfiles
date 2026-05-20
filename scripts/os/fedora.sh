#!/bin/bash

sudo dnf install git vim htop alacritty keepassxc ccrypt fastfetch
sudo dnf install gcc openssl-devel
sudo dnf install ripgrep jq xxd
sudo dnf remove kontact akregator kmail neochat korganizer kaddressbook kwalletmanager5
sudo dnf remove java-*-openjdk-*

## OTHERS
# - [ZED](https://zed.dev)
# - [RUST](https://www.rust-lang.org/tools/install)
# - [CHROME](https://www.google.com/chrome)
# - [DOCKER](https://docs.docker.com/engine/install/fedora)

## Docker Post Install
# $ sudo usermod -aG docker $USER && reboot
