from django.urls import path
from . import views

urlpatterns = [
    path('contact/', views.contact, name='contact'),
    path('success/', views.contact_success, name='contact_success'),
]
