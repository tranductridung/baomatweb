from django.db import models
from shop_app.models import Product
from django.contrib.auth.models import User

# Create your models here.
class Order(models.Model):
    order_id = models.AutoField(primary_key=True)
    user = models.ForeignKey(User, on_delete=models.CASCADE)
    order_date = models.DateField()
    quantity = models.IntegerField()
    total = models.DecimalField(max_digits=10, decimal_places=0)
    point = models.DecimalField(max_digits=10, decimal_places=0)
    status = models.CharField(max_length=10)

    def __str__(self):
        return f"Order {self.order_id} of {self.user}"

class OrderDetail(models.Model):
    order_detail_id = models.AutoField(primary_key=True)
    order = models.ForeignKey(Order, on_delete=models.CASCADE)
    product = models.ForeignKey(Product, on_delete=models.CASCADE)
    quantity = models.IntegerField()
    subtotal = models.DecimalField(max_digits=10, decimal_places=0)
    
    def __str__(self):
        return f"Order detail of Order {self.order.order_id}"