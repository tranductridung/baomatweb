# Generated by Django 4.2.7 on 2024-06-04 10:05

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('checkout_app', '0017_remove_shippingaddress_order'),
        ('order_app', '0021_rename_order_id_orderdetail_order_and_more'),
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