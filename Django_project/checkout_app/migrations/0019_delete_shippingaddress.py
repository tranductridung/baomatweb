# Generated by Django 4.2.7 on 2024-06-04 11:25

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('checkout_app', '0018_shippingaddress_order'),
    ]

    operations = [
        migrations.DeleteModel(
            name='shippingAddress',
        ),
    ]