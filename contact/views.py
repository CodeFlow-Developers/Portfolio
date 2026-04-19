from django.shortcuts import render, redirect
from .models import ContactMessage

def contact(request):
    errors = {}
    data = {}

    if request.method == 'POST':
        data = request.POST
        name    = data.get('name', '').strip()
        email   = data.get('email', '').strip()
        subject = data.get('subject', '').strip()
        message = data.get('message', '').strip()

        if not name:
            errors['name'] = 'Name is required.'
        if not email or '@' not in email:
            errors['email'] = 'Valid email is required.'
        if not subject:
            errors['subject'] = 'Subject is required.'
        if not message:
            errors['message'] = 'Message is required.'

        if not errors:
            ContactMessage.objects.create(
                name=name,
                email=email,
                subject=subject,
                message=message
            )
            return redirect('contact_success')

    return render(request, 'contact/contact.html', {'errors': errors, 'data': data})

def contact_success(request):
    return render(request, 'contact/success.html')