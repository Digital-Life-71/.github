#!/bin/bash

echo "                                                                        "
echo "  _____    _           _   _             _     _        _    __         "
echo " |  __ \  (_)         (_) | |           | |   | |      (_)  / _|        "
echo " | |  | |  _    ____   _  | |_    ____  | |   | |       _  | |_    ___  "
echo " | |  | | | |  / _  | | | | __|  / _  | | |   | |      | | |  _|  / _ \ "
echo " | |__| | | | | (_| | | | | |_  | (_| | | |   | |____  | | | |   |  __/ "
echo " |_____/  |_|  \__, | |_|  \__|  \__,_| |_|   |______| |_| |_|    \___| "
echo "                __/ |                                                   "
echo "               |___/                                                    "
echo "                                                                        "


sudo apt-get remove seahorse -y
sudo apt-get remove gnome-system-monitor -y
sudo apt-get remove gnome-config-printer -y
sudo apt-get remove gnome-logs -y
sudo apt-get remove gnome-power-manager -y

sudo apt update && sudo apt upgrade -y

sudo snap install --classic code
sudo snap install postman
sudo snap install figma-linux
sudo snap install zoom-client
sudo apt-get install git -y
sudo apt-get install wget
sudo apt-get install chromium-browser
sudo apt-get install filezilla -y
sudo apt-get install nodejs -y
sudo apt-get install npm -y
sudo apt-get install gulp -y
sudo apt-get install ca-certificates -y
sudo apt-get install curl -y
sudo apt-get install gnupg -y
sudo apt-get install lsb-release -y
    
sudo mkdir -p /etc/apt/keyrings    
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
  
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-compose-plugin -y

sudo docker run hello-world

sudo apt update && sudo apt upgrade -y

mkdir /home/dev/digital_life
cd /home/dev/digital_life

wget https://digital-life-71.github.io/.github/wallpaper.png
gsettings set org.gnome.desktop.background picture-uri 'file:///home/dev/digital_life/wallpaper.png'

wget https://desktop.docker.com/linux/main/amd64/docker-desktop-4.12.0-amd64.deb
sudo apt install ./docker-desktop-4.12.0-amd64.deb -y

git clone https://github.com/Digital-Life-71/docker-wordpress.git
git clone https://github.com/Digital-Life-71/docker-php.git
git clone https://github.com/Digital-Life-71/gulp-starter.git

echo "Node.js:" 
node -v
echo "NPM:"
npm -v
echo "NPX:"
npx -v
echo "Gulp.js:"
gulp -v
docker -v
