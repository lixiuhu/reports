FROM python:3.6.4-alpine3.7
COPY start.sh /start.sh
RUN apk add --no-cache gcc g++ make libpq postgresql-dev py3-psycopg2 && \
    pip install Django PyMySQL SQLAlchemy Django-crontab numpy pandas patsy statsmodels webencodings wheel && \
    chmod a+x /start.sh
WORKDIR /app
CMD ["sh", "/start.sh"]
