#!/bin/sh

sleep 5

# flask db init
# flask db migrate
# flask db upgrade
#
#flask run --host=0.0.0.0 --port=5000
#python manage.py migrate
python manage.py migrate
python manage.py collectstatic --noinput
python manage.py createsuperuser \
        --noinput \
        --username admin \
        --email admin@gmail.com
python manage.py runserver 0.0.0.0:5000