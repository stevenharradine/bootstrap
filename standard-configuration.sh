#!/bin/bash
if [ $(id -u) -ne 0 ]; then
	echo "Please run as root"
else
	apt update

	packages=(base security programing entertainment gaming communication)

	for current_package in "${packages[@]}"
	do
		echo Installing $current_package
		./packages/$current_package.sh
	done
fi
