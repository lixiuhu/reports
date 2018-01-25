FROM phusion/baseimage:latest 
COPY start.sh /start.sh
RUN apt-get update && \
    apt-get install python3-pip  -y && \
    pip3 install --upgrade pip && \
    pip3  install psycopg2 Django PyMySQL SQLAlchemy Django-crontab numpy pandas patsy webencodings wheel statsmodels
WORKDIR /app
CMD ["sh", "/start.sh"]
