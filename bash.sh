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

sudo apt-get purge seahorse -y                # Удаление пакета seahorse с полным согласием
sudo apt-get purge gnome-system-monitor -y    # Удаление пакета gnome-system-monitor с полным согласием
sudo apt-get purge gnome-config-printer -y    # Удаление пакета gnome-config-printer с полным согласием
sudo apt-get purge gnome-logs -y              # Удаление пакета gnome-logs с полным согласием
sudo apt-get purge gnome-power-manager -y     # Удаление пакета gnome-power-manager с полным согласием
sudo apt-get purge gnome-mines -y
sudo apt-get purge gnome-sudoku -y
sudo apt-get purge cheese -y 
sudo apt-get purge cheese-common -y
sudo apt-get purge gnome-calendar -y
sudo apt-get purge gnome-mahjongg -y
sudo apt-get purge aisleriot -y
sudo apt-get purge gnome-text-editor -y
sudo apt-get purge gnome-calculator -y
sudo apt-get purge gnome-clocks -y
sudo apt-get purge gnome-remote-desktop -y
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

# Проверка обновлений пакетов и их установка
sudo apt update && sudo apt upgrade -y        

sudo snap install --classic code              # Установка пакета code (из ветки classic)
sudo snap install postman                     # Установка пакета postman
sudo snap install figma-linux                 # Установка пакета figma-linux
sudo snap install zoom-client                 # Установка пакета zoom-client
sudo apt-get install telegram-desktop -y      # Установка пакета telegram-desktop с полным согласием
sudo apt-get install wget                     # Установка пакета wget
sudo apt-get install git -y                   # Установка пакета git с полным согласием
sudo apt-get install chromium-browser         # Установка пакета chromium-browser 
sudo apt-get install filezilla -y             # Установка пакета filezilla с полным согласием
sudo apt-get install nodejs -y                # Установка пакета nodejs с полным согласием
sudo apt-get install npm -y                   # Установка пакета npm с полным согласием
sudo apt-get install gulp -y                  # Установка пакета gulp с полным согласием
sudo apt-get install ca-certificates -y       # Установка пакета ca-certificates с полным согласием
sudo apt-get install curl -y                  # Установка пакета curl с полным согласием
sudo apt-get install gnupg -y                 # Установка пакета gnupg с полным согласием
sudo apt-get install lsb-release -y           # Установка пакета lsb-release с полным согласием

    
sudo mkdir -p /etc/apt/keyrings               # Создание директории '/etc/apt/keyrings' с созданием всех родительских директории (Если таковые есть, просто переход по ним)
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg        #Скачивание файла (Curl — это инструмент командной строки для передачи данных, заданных синтаксисом URL-адреса. -f:Сбой при проблеме соединения с сервером -s:Тихая установка (без уведомлений) -S:Показывать сообщение об ошибке в случае сбоя -L:Если сервер сообщает, что запрошенная страница переместилась в другое местоположение эта опция заставит curl повторить запрос в новом месте) # Расшифровка файла 'docker.gpg' в формат ASCII OpenPGP (GNU Privacy Guard (GnuPG, GPG) - пакет для шифрования информации и создания электронных цифровых подписей.)
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
  
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-compose-plugin -y      # Установка пакетов docker-ce, docker-ce-cli, containerd.io и docker-compose-plugin с полным согласием

# Установка питания на производительность
powerprofilesctl set performance

# Скачивание и установка обоев
sudo mkdir /dl71 
cd /dl71
sudo wget https://digital-life-71.github.io/.github/wallpaper.png
gsettings set org.gnome.desktop.background picture-uri 'file:///dl71/wallpaper.png'

wget https://dl.bitrix24.com/b24/bitrix24_desktop.deb   # Скачивание файла из 'https://dl.bitrix24.com/b24/bitrix24_desktop.deb'
sudo apt install ./bitrix24_desktop.deb -y              # Установка пакета по ссылке './bitrix24_desktop.deb' с полным согласием

wget https://desktop.docker.com/linux/main/amd64/docker-desktop-4.12.0-amd64.deb   # Скачивание файла из 'https://desktop.docker.com/linux/main/amd64/docker-desktop-4.12.0-amd64.deb'
sudo apt install ./docker-desktop-4.12.0-amd64.deb -y                              # Установка пакета по ссылке './docker-desktop-4.12.0-amd64.deb' с полным согласием

cd /home/$USER/
wget https://digital-life-71.github.io/.github/.bash_profile 

echo "                                                      "
echo "======================================================"
echo "======================================================"
echo "                                                      "

echo "Git:"
git --version   # Запрос версии git

echo "Node.js:"
node -v         # Запрос версии node

echo "NPM:"
npm -v          # Запрос версии npm

echo "NPX:"
npx -v          # Запрос версии npx

echo "Gulp.js:"
gulp -v         # Запрос версии gulp

echo "Docker:"
docker -v       # Запрос версии docker

echo "                                                      "
echo "======================================================"
echo "======================================================"
echo "                                                      "

#Маскирует ссылки службам sleep.target, suspend.target, hibernate.target и hybrid-sleep.target (отключает их запуск)
sudo systemctl mask sleep.target suspend.target hibernate.target hybrid-sleep.target 

# Удаление папок 'Видео', 'Музыка', 'Документы' и 'Изображения'
rm -rf ~/Видео Музыка Документы Изображения

# Отключение домашней папки на рабочем столе
gsettings set org.gnome.shell.extensions.ding show-home false

# Очистка закрепелнных папок и закрепление папки 'Digital_Life'
rm -rf ~/.config/gtk-3.0/bookmarks
echo file:///home/$USER/Digital_Life > ~/.config/gtk-3.0/bookmarks


read -p "Git user name: " name          # Запрос на получение переменной name (с пояснением)
git config --global user.name "$name"   # Запрос на git с переменной name

read -p "Git user email: " email        # Запрос на получение переменной email (с пояснением)
git config --global user.email $email   # Запрос на git с переменной email
