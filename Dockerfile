FROM python:3.6.4-alpine3.7
COPY start.sh /start.sh
RUN apk add --no-cache gcc g++ make libpq postgresql-dev && \
    pip3 install numpy Django PyMySQL SQLAlchemy psycopg2 Django-crontab patsy statsmodels webencodings wheel && \
WORKDIR /app
CMD ["sh", "/start.sh"]
