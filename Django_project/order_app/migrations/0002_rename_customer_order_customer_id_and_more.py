# Generated by Django 4.2.7 on 2024-05-24 17:14

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('order_app', '0001_initial'),
    ]

    operations = [
        migrations.RenameField(
            model_name='order',
            old_name='customer',
            new_name='customer_id',
        ),
        migrations.RenameField(
            model_name='orderdetail',
            old_name='order',
            new_name='order_id',
        ),
        migrations.AlterField(
            model_name='order',
            name='order_id',
            field=models.AutoField(primary_key=True, serialize=False),
        ),
        migrations.AlterField(
            model_name='orderdetail',
            name='order_detail_id',
            field=models.AutoField(primary_key=True, serialize=False),
        ),
    ]
