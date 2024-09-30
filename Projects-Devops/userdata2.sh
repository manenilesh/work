#!/bin/bash
sudo -i
apt update
apt-get install apache2 -y
apt install unzip -y
wget  https://www.free-css.com/assets/files/free-css-templates/download/page296/little-fashion.zip
unzip little-fashion.zip
cd 2127_little_fashion
mv * /var/www/html/
