#!/bin/bash
gunicorn -c /etc/gunicorn.d/gunicorn.conf /home/box/web/ask/ask.wsgi
