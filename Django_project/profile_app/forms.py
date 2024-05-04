from django import forms
from django.contrib.auth.forms import UserChangeForm
from django.contrib.auth.models import User
from .models import UserProfile

class UpdateForm(forms.ModelForm):
	dob = forms.DateField(
		label="Ngày sinh",
        widget=forms.DateInput(attrs={'class': 'form-control', 'placeholder': 'Date of Birth', 'type': 'date'}),
	)
		
	GENDER_CHOICES = (
		('Nam', 'Nam'),
		('Nữ', 'Nữ'),
		('Khác', 'Khác'),
	)
	gender = forms.CharField(
		label="Giới tính",
        widget=forms.Select(choices=GENDER_CHOICES, attrs={'class': 'form-control', 'placeholder': 'Gender'}),
        required=False,
	)
 
	address = forms.CharField(label="Địa chỉ", max_length=100, widget=forms.TextInput(attrs={'class':'form-control', 'placeholder':'Address'}))
	phone = forms.CharField(label="Số điện thoại", widget=forms.TextInput(attrs={'class':'form-control', 'placeholder':'Phone Number'}))

	class Meta:
		model = UserProfile
		fields = ('dob', 'gender', 'address', 'phone')
		exclude = ('user', )
  
class UpdateProfileForm(UserChangeForm):
    password = None
    username = forms.CharField(label="Username", widget=forms.TextInput(attrs={'class':'form-control', 'placeholder':'User Name'}))
    email = forms.EmailField(label="Email", widget=forms.TextInput(attrs={'class':'form-control', 'placeholder':'Email Address'}))
    first_name = forms.CharField(label="Tên", max_length=100, widget=forms.TextInput(attrs={'class':'form-control', 'placeholder':'First Name'}))
    last_name = forms.CharField(label="Họ", max_length=100, widget=forms.TextInput(attrs={'class':'form-control', 'placeholder':'Last Name'}))
	
    class Meta:
        model = User
        fields = ['username', 'first_name', 'last_name', 'email']

