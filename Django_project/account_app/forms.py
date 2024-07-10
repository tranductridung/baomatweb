from django import forms
from django.contrib.auth.models import User
from django.contrib.auth.forms import UserCreationForm, SetPasswordForm

class SignUpForm(UserCreationForm, forms.ModelForm):
	email = forms.EmailField(label="", widget=forms.TextInput(attrs={'class':'form-control', 'placeholder':'Email Address'}))
	first_name = forms.CharField(label="", max_length=100, widget=forms.TextInput(attrs={'class':'form-control', 'placeholder':'First Name'}))
	last_name = forms.CharField(label="", max_length=100, widget=forms.TextInput(attrs={'class':'form-control', 'placeholder':'Last Name'}))
	username = forms.CharField(label="", widget=forms.TextInput(attrs={'class':'form-control', 'placeholder':'User Name'}))
	
	class Meta:
		model = User
		fields = ('username', 'first_name', 'last_name', 'email', 'password1', 'password2')
  
	def __init__(self, *args, **kwargs):
		super(SignUpForm, self).__init__(*args, **kwargs)

		self.fields['username'].help_text = '<span class="form-text text-muted"><small> Tên tài khoản chứa tối đa 150 kí tự. Chỉ được sử dụng chữ cái, số và @/./+/-/_ only.</small></span>'

		self.fields['password1'].widget.attrs['class'] = 'form-control'
		self.fields['password1'].widget.attrs['placeholder'] = 'Password'
		self.fields['password1'].label = ''
		self.fields['password1'].help_text = '<ul class="form-text text-muted small"><li>Mật khẩu phải bao gồm chữ hoa, chữ thường, số và kí tự đặc biệt.</li><li>Mật khẩu không được chứa tên tài khoản.</li><li>Mật khẩu phải có ít nhất 8 kí tự.</li><li>Không được sử dụng các mật khẩu phổ biến.</li></ul>'
		
		self.fields['password2'].widget.attrs['class'] = 'form-control'
		self.fields['password2'].widget.attrs['placeholder'] = 'Confirm Password'
		self.fields['password2'].label = ''
		self.fields['password2'].help_text = '<span class="form-text text-muted"><small>Nhập lại mật khẩu.</small></span>'

	def clean_password2(self):
		password1 = self.cleaned_data.get('password1')
		password2 = self.cleaned_data.get('password2')
        
		if password1 and password2 and password1 != password2:
			raise forms.ValidationError("Mật khẩu không khớp")
        
        # Thêm các điều kiện kiểm tra mật khẩu của bạn ở đây (ví dụ: độ dài, ký tự đặc biệt, v.v.)
		if len(password1) < 8:
			raise forms.ValidationError("Mật khẩu phải có ít nhất 8 ký tự")
		if not any(char.isdigit() for char in password1):
			raise forms.ValidationError("Mật khẩu phải chứa ít nhất một chữ số")
		if not any(char.isalpha() for char in password1):
			raise forms.ValidationError("Mật khẩu phải chứa ít nhất một chữ cái")
		if not any(char.islower() for char in password1):
			raise forms.ValidationError("Mật khẩu phải chứa ít nhất một chữ thường")
		if not any(char.isupper() for char in password1):
			raise forms.ValidationError("Mật khẩu phải chứa ít nhất một chữ hoa")
				
		return password2

class ChangePasswordForm(SetPasswordForm):
    class Meta:
        model = User
        fields = ['new_password1','new_password2']
    
    def __init__(self, *args, **kwargs):
        super(ChangePasswordForm, self).__init__(*args, **kwargs)
        
        self.fields['new_password1'].widget.attrs['class'] = 'form-control'
        self.fields['new_password1'].widget.attrs['placeholder'] = 'New Password'
        self.fields['new_password1'].label = ''
        self.fields['new_password1'].help_text = '<ul class="form-text text-muted small"><li>Your password must contain uppercase letters, lowercase letters, numbers and characters.</li><li>Your password can\'t be too similar to your other personal information.</li><li>Your password must contain at least 8 characters.</li><li>Your password can\'t be a commonly used password.</li><li>Your password can\'t be entirely numeric.</li></ul>'
        
        self.fields['new_password2'].widget.attrs['class'] = 'form-control'
        self.fields['new_password2'].widget.attrs['placeholder'] = 'Confirm Password'
        self.fields['new_password2'].label = ''
        self.fields['new_password2'].help_text = '<span class="form-text text-muted"><small>Enter the same password as before, for verification.</small></span>'
        
		