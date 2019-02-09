#! /bin/bash

# php Apatch install
sudo apt install apache2 php php-mysql libapache2-mod-php7.0
sudo a2enmod php7.0
sudo service apache2 start

echo "AcceptFilter http none" >> /etc/apache2/apache2.conf
echo "AcceptFilter https none" >> /etc/apache2/apache2.conf
sudo apt install phpmyadmin
sudo service mysql start

# Mysql setup
#mysql -u root -p
#grant all privileges on wordpress.* to 'foo'@'localhost' identified by 'hogehoge';

# wordpress install
cd /usr/local/src
wget http://ja.wordpress.org/latest-ja.tar.gz
tar xvzf latest-ja.ta.gz
sudo mv wordpress /var/www/html/wp
sudo chown -R www-data.www-data /var/www/html/wp
