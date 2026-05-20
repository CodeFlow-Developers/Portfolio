#!/usr/bin/env bash
# build.sh — Render runs this on every deploy
set -o errexit
pip install -r requirements.txt
python manage.py collectstatic --no-input
python manage.py migrate

python manage.py shell -c "import os; from django.contrib.auth import get_user_model; U = get_user_model(); U.objects.filter(username=os.environ['DJANGO_SUPERUSER_USERNAME']).exists() or U.objects.create_superuser(os.environ['DJANGO_SUPERUSER_USERNAME'], os.environ['DJANGO_SUPERUSER_EMAIL'], os.environ['DJANGO_SUPERUSER_PASSWORD'])"