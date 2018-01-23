#!/bin/bash
apt -y install htop \
               silversearcher-ag \
               curl \
               numlockx \
               net-tools \
               recordmydesktop

# Download configs
wget -O /home/douglas/.login-script https://raw.githubusercontent.com/stevenharradine/config/master/.login-script
wget -O /home/douglas/.ssh/config https://raw.githubusercontent.com/stevenharradine/config/master/.ssh/config

# Keep configs updated on cron
if [[ $(crontab -l | grep "@daily wget -O /home/douglas/.login-script https://raw.githubusercontent.com/stevenharradine/config/master/.login-script" | wc -l) != 1 ]]; then
	cat <(crontab -l) <(echo "@daily wget -O /home/douglas/.login-script https://raw.githubusercontent.com/stevenharradine/config/master/.login-script") | crontab -;
fi

if [[ $(crontab -l | grep "@daily wget -O /home/douglas/.ssh/config https://raw.githubusercontent.com/stevenharradine/config/master/.ssh/config" | wc -l) != 1 ]]; then
	cat <(crontab -l) <(echo "@daily wget -O /home/douglas/.ssh/config https://raw.githubusercontent.com/stevenharradine/config/master/.ssh/config") | crontab -;
fi

if ! grep -q "bash /home/douglas/.login-script" /home/douglas/.bashrc; then
    echo "bash /home/douglas/.login-script" >> /home/douglas/.bashrc
fi
