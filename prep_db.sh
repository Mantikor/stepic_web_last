#!/bin/bash
sudo service mysql start
mysql -u root -e "CREATE USER 'box'@'localhost' IDENTIFIED BY 'box'"
mysql -u root -e "GRANT ALL PRIVILEGES ON * . * TO 'box'@'localhost'"
mysql -u root -e "FLUSH PRIVILEGES;"
mysql -u box -p box -e "create database ask"

python ./ask/manage.py syncdb