#!/bin/bash

# Load environment variables from .env file in the root directory
export $(grep -v '^#' ../../.env | xargs)

# Run the psql command with environment variables
psql --no-password -d "postgres://${DB_USER}:${DB_PASSWORD}@${DB_HOSTNAME}/postgres" -c "DROP DATABASE IF EXISTS imdb WITH (FORCE);"
psql --no-password -d "postgres://${DB_USER}:${DB_PASSWORD}@${DB_HOSTNAME}/postgres" -c "CREATE DATABASE imdb;"

pg_restore --no-owner -v -d "postgres://${DB_USER}:${DB_PASSWORD}@${DB_HOSTNAME}/imdb" imdb_pg11.backup