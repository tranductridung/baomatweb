# Generated by Django 4.2.7 on 2024-05-24 17:14

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('checkout_app', '0003_rename_shipping_dictrict_shippingaddress_shipping_district_and_more'),
    ]

    operations = [
        migrations.DeleteModel(
            name='shippingAddress',
        ),
    ]