#!/bin/sh
set -eu

git clone https://github.com/yunity/foodsaving-backend
cd foodsaving-backend
# TODO checkout given branch
virtualenv env
# TODO restore env from cache
source env/bin/activate
pip install -r requirements-dev.txt
pip-sync
# TODO cache env
cp config/local_settings.py.ci config/local_settings.py
# TODO create database
python manage.py migrate
python manage.py create_sample_data # optional
python manage.py runserver
