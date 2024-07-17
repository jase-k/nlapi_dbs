#!/bin/bash

# Load environment variables from .env file in the root directory
export $(grep -v '^#' ../../.env | xargs)

# Run the psql command with environment variables
psql -d "postgres://${DB_USER}:${DB_PASSWORD}@${DB_HOSTNAME}/postgres" -f chinook.sql