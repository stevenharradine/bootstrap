#!/bin/bash
curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -

# Ensure apt is set up to work with https sources
apt install apt-transport-https

echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list

apt update

apt -y install \
       git \
       golang \
       ansible \
       python-pip \
       nodejs \
       sublime-text

# AWS CLI
pip install --upgrade
            --user awscli

# Ansible dependancy
pip install boto
