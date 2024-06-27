#!/bin/bash

# Check if the script is being executed as root
if [ "$(id -u)" -ne 0 ]; then echo " > Run the script again with 'sudo $0'."; exit 1; fi

curl -fsSL https://get.docker.com -o get-docker.sh
chmod +x get-docker.sh
sh ./get-docker.sh
rm -f get-docker.sh
usermod -aG docker $USER