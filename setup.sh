#!/bin/bash

echo "Updating system..."
sudo apt update && sudo apt upgrade -y

echo "Installing dependencies..."
sudo apt install -y python3-pip git docker.io

echo "Pulling project..."
git clone https://github.com/YOUR_USERNAME/YOUR_REPO.git project

echo "Installing Python requirements..."
pip3 install -r project/requirements.txt

echo "Setup complete!"
