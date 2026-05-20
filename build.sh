#!/usr/bin/env bash
# build.sh — Render runs this on every deploy
set -o errexit
pip install -r requirements.txt
python manage.py collectstatic --no-input
python manage.py migrate

python manage.py shell -c "from django.contrib.auth import get_user_model; U = get_user_model(); U.objects.filter(username='admin').exists() or U.objects.create_superuser('admin', 'codeflowsolutions.dev@gmail.com', 'admin0204')"