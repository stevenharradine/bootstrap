#!/bin/bash

# Steam
wget --directory-prefix=/tmp https://steamcdn-a.akamaihd.net/client/installer/steam.deb
dpkg -i /tmp/steam.deb
apt --fix-broken install
