#!/bin/bash
set -e

cd /home/ubuntu

if [ ! -d jetson-auto-setup ]; then
    git clone https://github.com/lxljxl/jetson-auto-setup.git
else
    cd jetson-auto-setup
    git pull
    cd ..
fi

cd /home/ubuntu/jetson-auto-setup

sudo apt update
sudo apt install -y python3-pip git

if [ -f requirement.txt ]; then
    pip3 install -r requirement.txt
fi

echo "Setup complete"
