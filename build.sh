#!/usr/bin/env bash
# build.sh — Render runs this on every deploy
set -o errexit
pip install -r requirements.txt
python manage.py collectstatic --no-input
python manage.py migrate

python manage.py shell -c "
import os
from django.contrib.auth import get_user_model
U = get_user_model()
if not U.objects.filter(username=os.environ.get('DJANGO_SUPERUSER_USERNAME')).exists():
    U.objects.create_superuser(
        os.environ.get('DJANGO_SUPERUSER_USERNAME'),
        os.environ.get('DJANGO_SUPERUSER_EMAIL'),
        os.environ.get('DJANGO_SUPERUSER_PASSWORD')
    )
""