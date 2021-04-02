#!/bin/bash
# Ensure apt is set up to work with https sources
apt -y install apt-transport-https

echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list

apt update

apt -y install git \
               python3-pip \
               openjdk-14-jdk \
               openjdk-14-jre \
               sublime-text

# AWS CLI
pip3 install --upgrade \
             --user awscli

# initalize git
obfuscation="stevenharradine"
obfuscation=$obfuscation"@"
obfuscation=$obfuscation"gmail"
obfuscation=$obfuscation".com"
git config --global user.email "$obfuscation"
git config --global user.name "Steven Harradine"
