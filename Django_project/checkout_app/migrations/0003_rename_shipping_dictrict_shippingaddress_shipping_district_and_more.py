# Generated by Django 4.2.7 on 2024-05-24 15:53

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('checkout_app', '0002_rename_address1_shippingaddress_shipping_address1_and_more'),
    ]

    operations = [
        migrations.RenameField(
            model_name='shippingaddress',
            old_name='shipping_dictrict',
            new_name='shipping_district',
        ),
        migrations.RenameField(
            model_name='shippingaddress',
            old_name='shipping_fullName',
            new_name='shipping_fullmame',
        ),
    ]