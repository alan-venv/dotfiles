#!/bin/bash

# Inicializando
sudo echo "Initializing..."

# JDK
curl -fsOL https://corretto.aws/downloads/latest/amazon-corretto-21-x64-linux-jdk.tar.gz
tar -xzf amazon-corretto-21-x64-linux-jdk.tar.gz
rm amazon-corretto-21-x64-linux-jdk.tar.gz
sudo mv amazon-* /opt/corretto-21

curl -fsOL https://corretto.aws/downloads/latest/amazon-corretto-17-x64-linux-jdk.tar.gz
tar -xzf amazon-corretto-17-x64-linux-jdk.tar.gz
rm amazon-corretto-17-x64-linux-jdk.tar.gz
sudo mv amazon-* /opt/corretto-17

# Maven
curl -fsOL https://dlcdn.apache.org/maven/maven-3/3.9.6/binaries/apache-maven-3.9.6-bin.tar.gz
tar -xzf apache-maven-3.9.6-bin.tar.gz
rm apache-maven-3.9.6-bin.tar.gz
sudo mv apache-maven-3.9.6 /opt/maven

# Gradle
curl -fsOL https://services.gradle.org/distributions/gradle-8.5-bin.zip
unzip gradle-8.5-bin.zip >> /dev/null 2>&1
rm gradle-8.5-bin.zip
sudo mv gradle-8.5 /opt/gradle

# Camunda modeler
curl -fsOL https://github.com/camunda/camunda-modeler/releases/download/v5.19.0/camunda-modeler-5.19.0-linux-x64.tar.gz
tar -xzf camunda-modeler-5.19.0-linux-x64.tar.gz
rm camunda-modeler-5.19.0-linux-x64.tar.gz
sudo mv camunda-modeler-5.19.0-linux-x64 /opt/camunda-modeler

# IntelliJ
curl -fsOL https://download-cdn.jetbrains.com/idea/ideaIC-2023.3.2.tar.gz
tar -xzf ideaIC-2023.3.2.tar.gz
rm ideaIC-2023.3.2.tar.gz
sudo mv idea-* /opt/intellij

# PATH
echo "
# Java
JAVA_HOME=\"/opt/corretto-21\"
MAVEN_HOME=\"/opt/maven\"
GRADLE_HOME=\"/opt/gradle\"
PATH=\"\$PATH:\$JAVA_HOME/bin:\$MAVEN_HOME/bin:\$GRADLE_HOME/bin\"
" >> ~/.bashrc

# Entrypoints
echo "[Desktop Entry]
Name=Camunda
Type=Application
Exec=/opt/camunda-modeler/camunda-modeler
Icon=/opt/camunda-modeler/support/icon_128.png" > ~/.local/share/applications/Camunda.desktop
chmod +x ~/.local/share/applications/Camunda.desktop

echo "[Desktop Entry]
Name=IntelliJ
Type=Application
Exec=/opt/intellij/bin/idea.sh
Icon=/opt/intellij/bin/idea.png" > ~/.local/share/applications/IntelliJ.desktop
chmod +x ~/.local/share/applications/IntelliJ.desktop

