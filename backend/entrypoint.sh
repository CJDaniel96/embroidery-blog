#!/bin/sh

echo "Waiting for database..."
while ! nc -z $POSTGRES_HOST $POSTGRES_PORT; do
  sleep 0.1
done
echo "Database started"

python manage.py collectstatic

python manage.py migrate

uwsgi --ini uwsgi.ini