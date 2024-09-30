#!/bin/bash
sudo -i
apt update
apt-get install apache2 -y
apt install unzip -y
wget https://www.free-css.com/assets/files/free-css-templates/download/page296/finexo.zip
unzip finexo.zip
cd finexo-html
mv * /var/www/html/