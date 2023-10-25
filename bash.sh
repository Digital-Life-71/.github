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

echo "                                                      "
echo "======================================================"
echo "              Удаление лишних пакетов                 "
echo "======================================================"
echo "                                                      "

sudo apt-get purge seahorse -y
sudo apt-get purge gnome-system-monitor -y
sudo apt-get purge gnome-config-printer -y
sudo apt-get purge gnome-logs -y
sudo apt-get purge gnome-power-manager -y
sudo apt-get purge gnome-mines -y
sudo apt-get purge gnome-sudoku -y
sudo apt-get purge gnome-calendar -y
sudo apt-get purge gnome-mahjongg -y
sudo apt-get purge aisleriot -y
sudo apt-get purge gnome-text-editor -y
sudo apt-get purge gnome-calculator -y
sudo apt-get purge gnome-clocks -y
sudo apt-get purge gnome-disk-utility -y
sudo apt-get purge gnome-font-viewer -y
sudo apt-get purge simple-scan -y
sudo apt-get purge gnome-disk-utility -y
sudo apt-get purge deja-dup -y
sudo apt-get purge file-roller -y
sudo apt-get purge yelp -y
sudo apt-get purge gnome-characters -y
sudo apt-get purge baobab -y
sudo apt-get purge evince -y
sudo apt-get purge evince-common -y
sudo apt-get purge info -y
sudo apt-get purge remmina -y
sudo apt-get purge remmina-common -y
sudo apt-get purge rhythmbox -y
sudo apt-get purge rhythmbox-data -y
sudo apt-get purge shotwell -y
sudo apt-get purge shotwell-common -y
sudo apt-get purge transmission-common -y
sudo apt-get purge transmission-gtk -y
sudo apt-get purge libreoffice-common -y
sudo apt-get purge totem -y
sudo apt-get purge usb-creator-common -y
sudo apt-get purge eog -y

echo "                                                      "
echo "======================================================"
echo "                 Обновление пакетов                   "
echo "======================================================"
echo "                                                      "

sudo apt update && sudo apt upgrade -y   

echo "                                                      "
echo "======================================================"
echo "               Установка новых пакетов                "
echo "======================================================"
echo "                                                      "

sudo snap install --classic code
sudo snap install postman
sudo snap install figma-linux
sudo snap install zoom-client
sudo snap install telegram-desktop
sudo apt-get install wget
sudo apt-get install git -y
sudo apt-get install chromium-browser
sudo apt-get install filezilla -y
sudo apt-get install nodejs -y
sudo apt-get install npm -y
sudo apt-get install gulp -y
sudo apt-get install ca-certificates -y
sudo apt-get install curl -y
sudo apt-get install software-properties-common -y
sudo apt-get install apt-transport-https -y
sudo apt-get install gnupg -y
sudo apt-get install lsb-release -y

sudo snap install docker

sudo mkdir -p /etc/apt/keyrings
#curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
#sudo add-apt-repository "deb [arch=$(dpkg --print-architecture)] https://download.docker.com/linux/ubuntu bionic stable"
#sudo apt update
#sudo apt-get install docker-ce docker-ce-cli containerd.io docker-compose-plugin -y

sudo mkdir /dl71 
cd /dl71
if test -f wallpaper.png; then echo 'Файл найден'; else sudo wget https://digital-life-71.github.io/.github/wallpaper.png; fi
gsettings set org.gnome.desktop.background picture-uri 'file:////dl71/wallpaper.png'
gsettings set org.gnome.desktop.background picture-uri 'file:///dl71/wallpaper.png'

if test -f bitrix24_desktop.deb; then echo 'Файл найден'; else sudo wget https://dl.bitrix24.com/b24/bitrix24_desktop.deb; fi
sudo apt install ./bitrix24_desktop.deb -y

if test -f docker-desktop-4.12.0-amd64.deb; then echo 'Файл найден'; else sudo wget https://desktop.docker.com/linux/main/amd64/docker-desktop-4.12.0-amd64.deb; fi
sudo apt install ./docker-desktop-4.12.0-amd64.deb -y

cd $HOME
wget https://digital-life-71.github.io/.github/bash_profile.txt
mv $HOME/bash_profile.txt $HOME/.bash_profile

echo "                                                      "
echo "======================================================"
echo "======================================================"
echo "                                                      "

echo "Git:"
git --version

echo "Node.js:"
node -v

echo "NPM:"
npm -v

echo "NPX:"
npx -v

echo "Gulp.js:"
gulp -v

echo "Docker:"
docker -v

echo "                                                      "
echo "======================================================"
echo "======================================================"
echo "                                                      "

sudo systemctl mask sleep.target suspend.target hibernate.target hybrid-sleep.target
gsettings set org.gnome.desktop.session idle-delay 0
gsettings set org.gnome.shell.extensions.ding show-home false
gsettings set org.gnome.desktop.input-sources sources "[('xkb', 'us'), ('xkb', 'ru')]"
gsettings set org.gnome.shell favorite-apps "['org.gnome.Nautilus.desktop', 'telegram-desktop_telegram-desktop.desktop', 'chromium_chromium.desktop', 'code_code.desktop', 'org.gnome.Terminal.desktop', 'filezilla.desktop']"
xdg-settings set default-web-browser chromium-browser.desktop
powerprofilesctl set performance

rm -rf ~/Видео Музыка Документы Изображения
mkdir -p ~/Digital_Life
rm -rf ~/.config/gtk-3.0/bookmarks
echo file://$HOME/Digital_Life > ~/.config/gtk-3.0/bookmarks

echo "                                                      "
echo "======================================================"
echo "                                                      "
echo "                Не забудьте выполнить                 "
echo "                                                      "
echo "         git config --global user.name "ИМЯ"          "
echo "        git config --global user.email ПОЧТА          "
echo "                                                      "
echo "======================================================"
echo "                                                      "

sudo apt autoremove -y