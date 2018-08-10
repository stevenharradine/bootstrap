#!/bin/bash
apt -y install htop \
               silversearcher-ag \
               curl \
               numlockx \
               net-tools \
               recordmydesktop \
               nmap \
               rdesktop \
               pwgen \
               whois \
               chromium-browser \
               xserver-xorg-input-synaptics

# Keep configs updated on cron
if [[ $(crontab -l | grep "@daily wget -O /home/douglas/.login-script https://raw.githubusercontent.com/stevenharradine/config/master/.login-script" | wc -l) != 1 ]]; then
  cat <(crontab -l) <(echo "@daily wget -O /home/douglas/.login-script https://raw.githubusercontent.com/stevenharradine/config/master/.login-script") | crontab -;
fi

if [[ $(crontab -l | grep "@daily wget -O /home/douglas/.ssh/config https://raw.githubusercontent.com/stevenharradine/config/master/.ssh/config" | wc -l) != 1 ]]; then
  cat <(crontab -l) <(echo "@daily wget -O /home/douglas/.ssh/config https://raw.githubusercontent.com/stevenharradine/config/master/.ssh/config") | crontab -;
fi

if ! grep -q "source /home/douglas/.login-script" /home/douglas/.bashrc; then
  echo "source /home/douglas/.login-script" >> /home/douglas/.bashrc
fi

wget --no-check-certificate -O /home/douglas/personalCredential.zip https://192.168.2.2/media/personalCredential.zip
7z x /home/douglas/personalCredential.zip -o/home/douglas
rm /home/douglas/personalCredential.zip
chown douglas:douglas -R /home/douglas/.aws /home/douglas/.ssh /home/douglas/.boto

# Download configs
wget -O /home/douglas/.login-script https://raw.githubusercontent.com/stevenharradine/config/master/.login-script
wget -O /home/douglas/.ssh/config https://raw.githubusercontent.com/stevenharradine/config/master/.ssh/config
