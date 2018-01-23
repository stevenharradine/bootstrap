#!/bin/bash
apt install software-properties-common
add-apt-repository -y ppa:team-xbmc/ppa
apt update

apt install -y kodi \
               vlc
