# Generated by Django 4.2.7 on 2024-05-25 15:36

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('checkout_app', '0011_delete_shippingaddress'),
        ('order_app', '0012_remove_order_id_order_order_id'),
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
