# Generated by Django 4.2.7 on 2024-06-04 11:25

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('checkout_app', '0019_delete_shippingaddress'),
        ('order_app', '0023_initial'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='orderdetail',
            name='order',
        ),
        migrations.RemoveField(
            model_name='orderdetail',
            name='product',
        ),
        migrations.DeleteModel(
            name='Order',
        ),
        migrations.DeleteModel(
            name='OrderDetail',
        ),
    ]
