#!/bin/bash

# Останавливаем сервера
service nginx stop
service apache2 stop

# Удаляем конфиги для nginx
rm /etc/nginx/sites-available/BALinux.conf /etc/nginx/sites-enabled/BALinux.conf

# Удаляем конфиги для apache
rm /etc/apache2/sites-available/sysinfo.conf /etc/apache2/sites-enabled/sysinfo.conf

# Удаляем исполняемые файлы
rm -rf /var/www/cgi-bin

# Удаляем apache2 и nginx
apt-get -y purge apache2 nginx
apt -y autoremove