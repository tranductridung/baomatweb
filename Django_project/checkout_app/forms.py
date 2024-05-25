from django import forms 
from checkout_app.models import shippingAddress

class ShippingForm(forms.ModelForm):
    shipping_fullname = forms.CharField(label="", widget=forms.TextInput(attrs={'class':'form-control', 'placeholder':'Fullname'}), required=True)
    shipping_email = forms.EmailField(label="", widget=forms.TextInput(attrs={'class':'form-control', 'placeholder':'Email Address'}), required=True)
    shipping_address1 = forms.CharField(label="", widget=forms.TextInput(attrs={'class':'form-control', 'placeholder':'Address1'}), required=True)
    shipping_address2 = forms.CharField(label="", widget=forms.TextInput(attrs={'class':'form-control', 'placeholder':'Address2'}), required=True)
    shipping_ward = forms.CharField(label="", widget=forms.TextInput(attrs={'class':'form-control', 'placeholder':'Email ward'}), required=True)
    shipping_district = forms.CharField(label="", widget=forms.TextInput(attrs={'class':'form-control', 'placeholder':'district'}), required=True)
    shipping_city = forms.CharField(label="", widget=forms.TextInput(attrs={'class':'form-control', 'placeholder':'City'}), required=True)
    
    class Meta:
        model = shippingAddress
        fields = ['shipping_fullname', 'shipping_email', 'shipping_address1', 'shipping_address2', 'shipping_ward', 'shipping_district', 'shipping_city']
        exclude = ['user', ]