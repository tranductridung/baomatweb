from django.shortcuts import render, redirect
from django.contrib import messages
from .forms import UpdateForm, UpdateProfileForm
from .models import UserProfile

# Create your views here.
def profile(request, username):
    userInfo = UserProfile.objects.select_related('user').get(user=request.user)    
    return render(request, 'profile.html',{'userInfo': userInfo})
    
def updateInfo(request, username):
    try:
        user_profile = UserProfile.objects.get(user_id=request.user.id)
    except UserProfile.DoesNotExist:
        user_profile = UserProfile(user_id=request.user.id)
        user_profile.save()
    
    if request.method == "POST":
        profile_form = UpdateForm(request.POST, instance=user_profile)
        user_form = UpdateProfileForm(request.POST, instance=request.user)
        if profile_form.is_valid() and user_form.is_valid():
            profile_form.save()
            user_form.save()
            messages.success(request,("Chỉnh sửa thông tin người dùng thành công!"))
            return redirect('/')
    else:
        profile_form = UpdateForm(instance=user_profile)
        user_form = UpdateProfileForm(instance=request.user)
    
    context = {
        'profile_form': profile_form,
        'user_form': user_form
    }
    return render(request, 'updateInfo.html', context)