#!/usr/bin/env bash
# exit on error
set -o errexit

rm pyproject.toml

poetry init
poetry install
poetry shell

python manage.py collectstatic --no-input
python manage.py migrate
python manage.py superuser
