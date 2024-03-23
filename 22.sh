#!/bin/bash

# JDK 21 (latest)
curl -fsOL https://download.oracle.com/graalvm/22/latest/graalvm-jdk-22_linux-x64_bin.tar.gz
tar -xzf graalvm-jdk-22_linux-x64_bin.tar.gz
rm graalvm-jdk-22_linux-x64_bin.tar.gz
sudo mv graalvm-jdk-22* /opt/graalvm-22
