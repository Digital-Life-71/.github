#!/bin/bash

sudo apt update && sudo apt upgrade -y

sudo apt install git -y
git --version

sudo snap install --classic code
sudo snap install postman
sudo snap install figma-linux
sudo apt-get install wget
sudo apt-get install chromium-browser
sudo apt-get install filezilla
sudo apt-get install nodejs
sudo apt-get install npm -y
sudo apt-get install gulp -y
sudo apt-get install \
    ca-certificates \
    curl \
    gnupg \
    lsb-release -y
    
sudo mkdir -p /etc/apt/keyrings    
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
  
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-compose-plugin -y

sudo apt update && sudo apt upgrade -y

echo "Node.js:"
node -v
echo "NPM:"
npm -v
echo "NPX:"
npx -v
echo "Gulp.js:"
gulp -v
docker -v
