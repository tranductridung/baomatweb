from django.db import models
from order_app.models import Order

# Create your models here.

class shippingAddress(models.Model):
    shipping_id = models.AutoField(primary_key=True)
    order = models.OneToOneField(Order, on_delete=models.CASCADE, null=True, blank=True)
    shipping_fullname = models.CharField(max_length=255, null=True)
    shipping_email = models.CharField(max_length=255, null=True)
    shipping_address1 = models.CharField(max_length=255, null=True)
    shipping_address2 = models.CharField(max_length=255, null=True)
    shipping_ward = models.CharField(max_length=255, null=True)
    shipping_district = models.CharField(max_length=255, null=True)
    shipping_city = models.CharField(max_length=255, null=True)
    
    class Meta:
        verbose_name_plural = "Shipping Address"
        
    def __str__(self):
        return f"Shipping Address of Order"