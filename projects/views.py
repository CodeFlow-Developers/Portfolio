from django.shortcuts import render
from .models import Project
# Create your views here.
def projects(request):
    all_projects = Project.objects.all()
    return render(request, 'projects/projects.html', {'projects': all_projects})