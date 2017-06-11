#!/bin/bash
if [ $(id -u) -ne 0 ]; then
	echo "Please run as root"
else
	apt-get update
	
	packages=(base security programing gaming)

	for current_package in "${packages[@]}"
	do
		echo Installing $current_package
		./packages/$current_package.sh
	done
fi
