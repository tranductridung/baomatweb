from django.shortcuts import render, redirect
from django.contrib.auth.hashers import make_password
from django.contrib import messages
from django.contrib.auth import login, logout, authenticate
from .forms import SignUpForm, ChangePasswordForm
from profile_app.forms import UpdateForm
from profile_app.models import UserProfile
import json
from django.contrib.auth.decorators import login_required
from cart_app.cart import Cart

# Create your views here.
def login_user(request):
    if request.method == "POST":
        username = request.POST['username']
        password = request.POST['password']
        user = authenticate(request, username=username, password=password)
        if user is not None:
            login(request, user)
            
            current_user = UserProfile.objects.get(user__id=request.user.id)
            # Lấy thông tin cart lưu trong db
            saved_cart = current_user.old_cart
            if saved_cart:
                converted_cart = json.loads(saved_cart)
                cart = Cart(request)
            # Duyệt qua cart và thêm vào session
                for key, value in converted_cart.items():
                    cart.db_add(product=key, quantity=value)

            messages.success(request, ("Đăng nhập thành công"))
            return redirect('/')    
        else:
            messages.success(request, ("Đăng nhập thất bại. Vui lòng thử lại..."))
            return redirect('/account/login')
    else:
        return render(request, 'login.html')
    
def logout_user(request):
    logout(request)
    messages.success(request, ("Đăng xuất thành công."))
    return redirect('/')

def register_user(request):
    if request.method == 'POST':
        user_form = SignUpForm(request.POST)
        profile_form = UpdateForm(request.POST)
        if user_form.is_valid() and profile_form.is_valid():
            user = user_form.save()
            profile = profile_form.save(commit=False)
            profile.user = user
            profile.save()
            
            messages.success(request, ("Đăng kí tài khoản thành công"))
            
            username = user_form.cleaned_data['username']
            password = user_form.cleaned_data['password1']
            user = authenticate(request, username=username, password=password)
            login(request, user)
            return redirect('/')
    else:
        user_form = SignUpForm()
        profile_form = UpdateForm()
        
    context = {
        'user_form': user_form, 
        'profile_form': profile_form
    }
    return render(request, 'register.html', context)

@login_required
def change_password(request):
    if request.user.is_authenticated:
        currentUser = request.user
        if request.method == "POST":
            form = ChangePasswordForm(currentUser, request.POST)
            if form.is_valid():
                form.save()
                messages.success(request, "Đổi mật khẩu thành công. Vui lòng đăng nhập lại...")
                return redirect("account/login")
            else:
                for error in list(form.errors.values()):
                    messages.error(request, error)
                return redirect("/account/change_password")
        else:
            form = ChangePasswordForm(currentUser)
            return render(request, "changePassword.html", {'changepwd_form': form})
            
    else:
        messages.success(request, "Bạn cần đăng nhập trước")
        return redirect('/')
        