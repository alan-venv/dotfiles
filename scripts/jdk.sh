#!/bin/bash

# JDK 21 (latest)
curl -fsOL https://download.oracle.com/graalvm/21/latest/graalvm-jdk-21_linux-x64_bin.tar.gz
tar -xzf graalvm-jdk-21_linux-x64_bin.tar.gz
rm graalvm-jdk-21_linux-x64_bin.tar.gz
sudo mv graalvm-jdk-21* /opt/graalvm-21

# JDK 17 (latest)
curl -fsOL https://download.oracle.com/graalvm/17/latest/graalvm-jdk-17_linux-x64_bin.tar.gz
tar -xzf graalvm-jdk-17_linux-x64_bin.tar.gz
rm graalvm-jdk-17_linux-x64_bin.tar.gz
sudo mv graalvm-jdk-17* /opt/graalvm-17

# MAVEN (3.9.6)
curl -fsOL https://dlcdn.apache.org/maven/maven-3/3.9.6/binaries/apache-maven-3.9.6-bin.tar.gz
tar -xzf apache-maven-3.9.6-bin.tar.gz
rm apache-maven-3.9.6-bin.tar.gz
sudo mv apache-maven-3.9.6 /opt/maven

# GRADLE (8.6)
curl -fsOL https://services.gradle.org/distributions/gradle-8.6-bin.zip
unzip gradle-8.6-bin.zip >> /dev/null 2>&1
rm gradle-8.6-bin.zip
sudo mv gradle-8.6 /opt/gradle

# INTELLIJ IDEA COMUNITY (2023.3.4)
curl -fsOL https://download.jetbrains.com/idea/ideaIC-2023.3.4.tar.gz
tar -xzf ideaIC-2023.3.4.tar.gz
rm ideaIC-2023.3.4.tar.gz
sudo mv idea-* /opt/intellij

# PATH
echo "
# Java
JAVA_HOME=\"/opt/graalvm-21\"
MAVEN_HOME=\"/opt/maven\"
GRADLE_HOME=\"/opt/gradle\"
PATH=\"\$PATH:\$JAVA_HOME/bin:\$MAVEN_HOME/bin:\$GRADLE_HOME/bin\"
" >> ~/.bashrc

# INTELLIJ IDEA ENTRYPOINT
echo "[Desktop Entry]
Name=IntelliJ
Type=Application
Exec=/opt/intellij/bin/idea.sh
Icon=/opt/intellij/bin/idea.png" > ~/.local/share/applications/IntelliJ.desktop
chmod +x ~/.local/share/applications/IntelliJ.desktop

