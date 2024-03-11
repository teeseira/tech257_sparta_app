#!/bin/bash

# Update and upgrade the system
sudo apt update -y
sudo apt upgrade -y
echo "System update and upgrade completed."

# Install nginx
sudo apt install nginx -y
sudo systemctl restart nginx
sudo systemctl enable nginx
echo "Nginx installed and configured."

# Install nodejs
curl -fsSL https://deb.nodesource.com/setup_20.x | sudo -E bash - &&\
sudo apt-get install -y nodejs
echo "Node.js installed."

# Clone the repo
git clone https://github.com/teeseira/tech257_sparta_app.git
cd tech257_sparta_app/app/
echo "Repository cloned."

# Install npm
sudo npm install
echo "npm dependencies installed."

# Install pm2
sudo npm install pm2@latest -g
echo "pm2 installed."

# PM2 starts app
pm2 start app.js
echo "Application started with pm2."