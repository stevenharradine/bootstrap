#!/bin/bash
apt-get install \
	git \
	golang \
	ansible

# AWS CLI
pip install --upgrade --user awscli

# Ansible dependancy
pip install boto
