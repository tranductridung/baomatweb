# Generated by Django 4.2.7 on 2024-06-04 11:31

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('profile_app', '0010_remove_userprofile_bank_card_info'),
    ]

    operations = [
        migrations.AddField(
            model_name='userprofile',
            name='point',
            field=models.IntegerField(default=0),
        ),
    ]
