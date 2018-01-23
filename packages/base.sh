#!/bin/bash
apt -y install htop \
               silversearcher-ag \
               curl \
               numlockx \
               net-tools \
               recordmydesktop

wget -O ~/.login-script https://raw.githubusercontent.com/stevenharradine/config/master/.login-script
wget -O ~/.ssh/config https://raw.githubusercontent.com/stevenharradine/config/master/.ssh/config

if ! grep -q "bash ~/.login-script" ~/.bashrc; then
    echo "bash ~/.login-script" >> ~/.bashrc
fi
