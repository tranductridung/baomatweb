# Generated by Django 4.2.7 on 2024-06-04 10:05

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('checkout_app', '0016_initial'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='shippingaddress',
            name='order',
        ),
    ]
