from django.db import models
from shop_app.models import Product
from profile_app.models import UserProfile

# Create your models here.
class Order(models.Model):
    order_id = models.IntegerField(primary_key=True)
    customer = models.ForeignKey(UserProfile, on_delete=models.CASCADE)
    order_date = models.DateField()
    total_amount = models.DecimalField(max_digits=10, decimal_places=2)
    point = models.DecimalField(max_digits=10, decimal_places=2)
    status = models.CharField(max_length=10)

class OrderDetail(models.Model):
    order_detail_id = models.IntegerField(primary_key=True)
    order = models.ForeignKey(Order, on_delete=models.CASCADE)
    product = models.ForeignKey(Product, on_delete=models.CASCADE)
    quantity = models.IntegerField()
    subtotal = models.DecimalField(max_digits=10, decimal_places=2)