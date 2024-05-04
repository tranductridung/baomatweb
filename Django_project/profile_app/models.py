from django.db import models
from django.contrib.auth.models import User

# Create your models here.
class UserProfile(models.Model):
    GENDER_CHOICES = [
        ('Nam', 'Nam'),
        ('Nữ', 'Nữ'),
        ('Khác', 'Khác'),
    ]

    user = models.ForeignKey(User, on_delete=models.CASCADE)
    dob = models.DateField(null=True)
    gender = models.CharField(max_length=4, choices=GENDER_CHOICES, null=True) 
    address = models.TextField(null=True)
    phone = models.CharField(max_length=20,null=True)