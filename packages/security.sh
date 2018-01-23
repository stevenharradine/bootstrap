#!/bin/bash

# Mullvad
wget -O /tmp/mullvad.deb https://mullvad.net/en/download/latest/linux/
dpkg -i /tmp/mullvad.deb
apt --fix-broken install
dpkg -i /tmp/mullvad.deb
