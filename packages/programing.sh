#!/bin/bash
curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -

apt-get install \
	git \
	golang \
	ansible \
	python-pip \
	nodejs

# AWS CLI
pip install --upgrade
            --user awscli

# Ansible dependancy
pip install boto
