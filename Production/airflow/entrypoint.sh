#!/bin/bash
set -e

# 1. Wait for Postgres to be reachable
echo "Waiting for postgres..."
until airflow db check; do
  sleep 5
done

# 2. THE BYPASS: If we are 'airflow-init', run the command immediately
if [[ "$*" == *"db migrate"* ]]; then
  echo "Init mode: Running migrations..."
  exec "$@"
fi

# 3. Wait for the database to be ready (all others wait here)
echo "Waiting for migrations to finish..."
until airflow db check-migrations; do
  sleep 5
done

echo "Database is ready. Starting service..."
exec "$@"
