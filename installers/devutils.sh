#!/bin/bash

# Ubuntu

# Check if the script is being executed as root
if [ "$(id -u)" -ne 0 ]; then
	echo " > This script must be executed as root. Run the script again with 'sudo $0'."
	exit 1
fi

# Update the package list
echo " > Updating package list..."
apt update

# Install git and github
echo " > Installing git and gh..."
apt install -y git gh

# Install node and npm
echo " > Installing nodejs and npm..."
apt install -y nodejs npm
# Install node version manager
npm install -g n
