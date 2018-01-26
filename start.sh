#!/bin/bash
cd /app
/etc/init.d/cron start 
python3 manage.py crontab add
python3 manage.py runserver 0.0.0.0:80
