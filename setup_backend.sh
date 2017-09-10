#!/bin/bash
set -e

git clone https://github.com/yunity/karrot-backend
cd karrot-backend
if [ ${backend_branch} ]; then
    git checkout ${backend_branch}
    (cd .. && bash push_status.sh karrot-backend pending)
fi
virtualenv env
# TODO restore env from cache
source env/bin/activate
pip install -r requirements-dev.txt
pip-sync requirements*.txt
# TODO cache env
cp config/local_settings.py.ci config/local_settings.py
# TODO create database
# python manage.py reset_db # only necessary if run on your own machine
python manage.py migrate
python manage.py create_sample_data # optional
python manage.py runserver
