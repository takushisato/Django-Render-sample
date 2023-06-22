#!/usr/bin/env bash
# exit on error
set -o errexit

sudo apt install python3.10.8
pip install poetry
poetry init
poetry install

python manage.py collectstatic --no-input
python manage.py migrate
python manage.py superuser
