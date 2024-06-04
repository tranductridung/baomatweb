# Generated by Django 4.2.7 on 2024-06-04 10:08

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('order_app', '0023_initial'),
        ('checkout_app', '0017_remove_shippingaddress_order'),
    ]

    operations = [
        migrations.AddField(
            model_name='shippingaddress',
            name='order',
            field=models.OneToOneField(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, to='order_app.order'),
        ),
    ]
