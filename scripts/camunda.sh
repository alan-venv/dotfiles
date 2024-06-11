#!/bin/bash

# Camunda modeler
curl -fsOL https://github.com/camunda/camunda-modeler/releases/download/v5.24.0/camunda-modeler-5.24.0-linux-x64.tar.gz
tar -xzf camunda-modeler-5.24.0-linux-x64.tar.gz
rm camunda-modeler-5.24.0-linux-x64.tar.gz
sudo mv camunda-modeler-5.24.0-linux-x64 /opt/camunda-modeler

# Entrypoints
echo "[Desktop Entry]
Name=Camunda
Type=Application
Exec=/opt/camunda-modeler/camunda-modeler
Icon=/opt/camunda-modeler/support/icon_128.png" > ~/.local/share/applications/Camunda.desktop
chmod +x ~/.local/share/applications/Camunda.desktop
