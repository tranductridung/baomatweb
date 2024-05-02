from django.shortcuts import render, redirect
from django.contrib import messages
from django.contrib.auth import login, logout, authenticate

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
    