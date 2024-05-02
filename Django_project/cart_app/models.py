from django.db import models
from shop_app.models import Product
from profile_app.models import UserProfile
# Create your models hear

class Cart(models.Model):
    item_id = models.IntegerField(primary_key=True)
    customer = models.ForeignKey(UserProfile, on_delete=models.CASCADE)
    product = models.ForeignKey(Product, on_delete=models.CASCADE)
    quantity = models.IntegerField()