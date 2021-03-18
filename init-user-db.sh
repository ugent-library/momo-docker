#!/bin/bash
set -e

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "$POSTGRES_DB" <<-EOSQL
    CREATE USER momo_dev;
    ALTER USER momo_dev WITH ENCRYPTED PASSWORD 'momo_dev';
    CREATE DATABASE momo_dev;
    GRANT ALL PRIVILEGES ON DATABASE momo_dev TO momo_dev;
EOSQL
