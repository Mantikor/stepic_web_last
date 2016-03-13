#!/bin/bash
sudo service mysql start
mysql -uroot -e "CREATE USER 'box'@'localhost' IDENTIFIED BY 'box'"
mysql -uroot -e "GRANT ALL PRIVILEGES ON * . * TO 'box'@'localhost'"
mysql -uroot -e "FLUSH PRIVILEGES;"
mysql -ubox -pbox -e "create database ask"

python ./ask/manage.py syncdb
