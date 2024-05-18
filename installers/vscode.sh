#!/bin/bash

# VScode on Ubuntu

# Check if the script is being executed as root
if [ "$(id -u)" -ne 0 ]; then
	echo " > This script must be executed as root. Run the script again with 'sudo $0'."
	exit 1
fi

# Update the package list
echo " > Updating package list..."
apt update

# Install necessary prerequisites
echo " > Installing prerequisites..."
apt install -y software-properties-common apt-transport-https wget

# Import the Microsoft GPG key
echo " > Importing the Microsoft GPG key..."
wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | apt-key add -

# Enable the VSCode repository
add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"

# Update the package list again after adding the repository
echo " > Updating package list..."
apt update

# Install Visual Studio Code
echo " > Installing Visual Studio Code..."
apt install -y code

# Verify the installation
echo " > Verifying the installation..."
if command -v code >/dev/null 2>&1; then
	echo " > Visual Studio Code installed successfully!"
else
	echo " > Installation failed."
fi
