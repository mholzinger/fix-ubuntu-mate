#!/bin/bash

sudo sed -i 's/archive.ubuntu/old-releases.ubuntu/' /etc/apt/sources.list
sudo apt-get clean
sudo mv /var/lib/apt/lists /tmp
sudo mkdir -p /var/lib/apt/lists/partial
sudo apt-get clean 
sudo apt-get update
