#!/bin/bash
apt-get install \
	git \
	golang \
	ansible \
	python-pip

# AWS CLI
pip install --upgrade --user awscli

# Ansible dependancy
pip install boto
