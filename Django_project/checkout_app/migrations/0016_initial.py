# Generated by Django 4.2.7 on 2024-05-25 16:07

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
        ('checkout_app', '0015_initial'),
        ('order_app', '0017_initial'),
    ]

    operations = [
        migrations.AddField(
            model_name='shippingaddress',
            name='order',
            field=models.OneToOneField(on_delete=django.db.models.deletion.CASCADE, to='order_app.order'),
        ),
    ]
