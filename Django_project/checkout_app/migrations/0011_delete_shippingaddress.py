# Generated by Django 4.2.7 on 2024-05-25 15:36

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('checkout_app', '0010_initial'),
    ]

    operations = [
        migrations.DeleteModel(
            name='shippingAddress',
        ),
    ]
