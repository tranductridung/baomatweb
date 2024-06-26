# Generated by Django 4.2.7 on 2024-05-24 17:14

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
        ('order_app', '0002_rename_customer_order_customer_id_and_more'),
        ('checkout_app', '0004_delete_shippingaddress'),
    ]

    operations = [
        migrations.CreateModel(
            name='shippingAddress',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('shipping_fullname', models.CharField(max_length=255, null=True)),
                ('shipping_email', models.CharField(max_length=255, null=True)),
                ('shipping_address1', models.CharField(max_length=255, null=True)),
                ('shipping_address2', models.CharField(max_length=255, null=True)),
                ('shipping_ward', models.CharField(max_length=255, null=True)),
                ('shipping_district', models.CharField(max_length=255, null=True)),
                ('shipping_city', models.CharField(max_length=255, null=True)),
                ('order_id', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='order_app.order')),
            ],
            options={
                'verbose_name_plural': 'Shipping Address',
            },
        ),
    ]
