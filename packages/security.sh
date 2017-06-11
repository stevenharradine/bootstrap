#!/bin/bash

# Mullvad
wget --directory-prefix=/tmp -O mullvad.deb https://www.mullvad.net/download/latest/linux/
dpkg -i /tmp/mullvad.deb
apt --fix-broken install
