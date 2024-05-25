# Generated by Django 4.2.7 on 2024-05-25 13:12

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
        ('order_app', '0011_initial'),
        ('checkout_app', '0009_delete_shippingaddress'),
    ]

    operations = [
        migrations.CreateModel(
            name='shippingAddress',
            fields=[
                ('order', models.OneToOneField(on_delete=django.db.models.deletion.CASCADE, primary_key=True, serialize=False, to='order_app.order')),
                ('shipping_fullname', models.CharField(max_length=255, null=True)),
                ('shipping_email', models.CharField(max_length=255, null=True)),
                ('shipping_address1', models.CharField(max_length=255, null=True)),
                ('shipping_address2', models.CharField(max_length=255, null=True)),
                ('shipping_ward', models.CharField(max_length=255, null=True)),
                ('shipping_district', models.CharField(max_length=255, null=True)),
                ('shipping_city', models.CharField(max_length=255, null=True)),
            ],
            options={
                'verbose_name_plural': 'Shipping Address',
            },
        ),
    ]
