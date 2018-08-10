#!/bin/bash

# install skype
wget https://repo.skype.com/latest/skypeforlinux-64.deb -O /tmp/skype.deb
dpkg -i /tmp/skype.deb
apt install -f
dpkg -i /tmp/skype.deb
