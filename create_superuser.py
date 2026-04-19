import os
import django

os.environ.setdefault('DJANGO_SETTINGS_MODULE', 'portfolio.settings')
django.setup()

from django.contrib.auth.models import User

username = 'admin'
password = 'admin0204'
email = 'admin.codeflow@gmail.com'

if not User.objects.filter(username=username).exists():
    User.objects.create_superuser(username=username, password=password, email=email)
    print("Superuser created!")
else:
    print("Superuser already exists!")