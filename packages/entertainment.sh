#!/bin/bash
apt -y install software-properties-common
add-apt-repository -y ppa:team-xbmc/ppa
apt update

apt -y install kodi \
               vlc
