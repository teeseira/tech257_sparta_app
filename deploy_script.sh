#!/bin/bash

# Update and upgrade the system
sudo apt update -y
sudo apt upgrade -y

# Install nginx
sudo apt install nginx -y
sudo systemctl restart nginx
sudo systemctl enable nginx

# Install nodejs
curl -fsSL https://deb.nodesource.com/setup_20.x | sudo -E bash - &&\
sudo apt-get install -y nodejs

# Clone the repo
git clone https://github.com/teeseira/tech257_sparta_app.git
cd tech257_sparta_app/app/

# Install npm
sudo npm install

# Install pm2
sudo npm install pm2@latest -g

# Start the app
pm2 start app.js

