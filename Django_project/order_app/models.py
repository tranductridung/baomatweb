from django.db import models
from shop_app.models import Product
from django.contrib.auth.models import User
import datetime

# Create your models here.
class Order(models.Model):
    user = models.ForeignKey(User, on_delete=models.CASCADE)
    order_date = models.DateField(default=datetime.datetime.today)
    quantity = models.IntegerField(default=1)
    total = models.DecimalField(max_digits=10, decimal_places=0, default=0)
    point = models.DecimalField(max_digits=10, decimal_places=0, default=0)
    status = models.CharField(max_length=10,default='', blank=True)

    def __str__(self):
        return f"Order of User {self.user}"

class OrderDetail(models.Model):
    order = models.ForeignKey(Order, on_delete=models.CASCADE)
    product = models.ForeignKey(Product, on_delete=models.CASCADE)
    quantity = models.IntegerField(default=0)
    subtotal = models.DecimalField(max_digits=10, decimal_places=0,default=0)
    
    def __str__(self):
        return f"Order detail of User {self.order.user}"