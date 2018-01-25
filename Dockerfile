FROM python:3.6.4-alpine3.7
COPY start.sh /start.sh
RUN apk add --no-cache gcc g++ make libpq postgresql-dev py3-psycopg2 py3-numpy && \
    pip install numpy Django PyMySQL SQLAlchemy Django-crontab patsy statsmodels webencodings wheel && \
WORKDIR /app
CMD ["sh", "/start.sh"]
