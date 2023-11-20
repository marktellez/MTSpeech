#!/bin/bash

# Update the system
sudo apt update
sudo apt upgrade -y

# Install Python 3
sudo apt install python3.9 -y

# Install pip
sudo apt install python3-pip -y

# Install nenv
git clone https://github.com/riyad/nenv ~/.nenv
echo 'source ~/.nenv/nenv.sh' >> ~/.bashrc
source ~/.bashrc

# Install sox
sudo apt install sox -y

echo "Setup complete!"