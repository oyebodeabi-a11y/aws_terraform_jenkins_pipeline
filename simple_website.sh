#!/bin/bash
sudo apt update -y
sudo apt install apache2 git -y

sudo systemctl enable apache2
sudo systemctl start apache2

sudo rm -rf /var/www/html/*

sudo git https://github.com/cloudacademy/static-website-example.git /var/www/html

sudo chown -R www-data:www-data /var/www/html
sudo chmod -R 755 /var/www/html
