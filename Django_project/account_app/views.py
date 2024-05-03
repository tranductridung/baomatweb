from django.shortcuts import render, redirect
from django.contrib import messages
from django.contrib.auth import login, logout, authenticate
from .forms import SignUpForm

# Create your views here.
def login_user(request):
    if request.method == "POST":
        username = request.POST['username']
        password = request.POST['password']
        user = authenticate(request, username=username, password=password)
        if user is not None:
            login(request, user)
            messages.success(request, ("LOGGING SUCCESS"))
            return redirect('/')    
        else:
            messages.success(request, ("LOGGING FAIL"))
            return redirect('account/login')
    else:
        return render(request, 'login.html')
    
def logout_user(request):
    logout(request)
    return redirect('/')

def register_user(request):
    form = SignUpForm()
    if request.method == "POST":
        form = SignUpForm(request.POST)
        if form.is_valid():
            form.save()
            username = form.cleaned_data['username']
            password = form.cleaned_data['password1']
            user = authenticate(username=username, password=password)
            login(request, user)
            
            return redirect('/')
        else:    
            return redirect('account/register')
    return render(request, 'register.html', {'form': form})