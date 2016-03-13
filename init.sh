#!/bin/bash
sudo rm -rf /etc/nginx/sites-enabled/default
sudo /bin/ln -s /home/box/web/etc/nginx.conf  /etc/nginx/sites-enabled/default
sudo /etc/init.d/nginx restart
sudo ln -s /home/box/web/etc/gunicorn.conf   /etc/gunicorn.d/gunicorn.conf
sudo ./prep_db.sh
sudo ./run_prj.sh
