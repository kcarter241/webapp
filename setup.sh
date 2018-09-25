#!/bin/sh

echo "Waiting on PostgresQL to start on 5432..."

while ! nc -z postgres 5432; do
  sleep 0.1
done

echo "PostgreSQL started"

bin/rails db:migrate
