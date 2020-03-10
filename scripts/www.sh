#!/bin/bash

sudo apt-get update && sudo apt-get upgrade
sudo apt-get install -y apache2 libapache2-mod-php php-pgsql
sudo apt-get install -y php-memcache
sudo rm /var/www/html/index.html
git clone  https://github.com/selb97/IMT3003.git
cd IMT3003
cp code/* /var/www/html/
cp config_example.php /var/www/html/config.php
service apache2 restart
