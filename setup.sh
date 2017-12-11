#!/bin/bash

sudo apt-get install python-software-properties
sudo add-apt-repository ppa:ondrej/php

sudo apt-get update

sudo apt install -y curl
sudo apt install -y php7.2
sudo apt install -y -f nginx dnsmasq mysql-server phpmyadmin

sudo apt install -y php-common php-mbstring php-xml
sudo apt install -y php7.2-mysql php7.2-curl php7.2-json php7.2-cgi php7.2-cli php7.2-xsl php7.2-zip

curl -sS https://getcomposer.org/installer | sudo php -- --install-dir=/usr/local/bin --filename=composer

sudo composer global require laravel/laravel

sudo apt install -y php-codesniffer

echo "listen-address=127.0.0.1" | sudo tee /etc/dnsmasq.conf

sudo touch /etc/dnsmasq.d/dev

echo "address=/dev/127.0.0.1" | sudo tee /etc/dnsmasq.d/dev

sudo systemctl restart dnsmasq
sudo systemctl enable dnsmasq

echo "prepend domain-name-servers=127.0.0.1;" | sudo tee /etc/dhcp/dhclient.conf

sudo dhclient

sudo cp dynamic.dev.conf /etc/nginx/sites-available/dynamic.dev.conf

sudo ln -s /etc/nginx/sites-available/dynamic.dev.conf /etc/nginx/sites-enabled/
