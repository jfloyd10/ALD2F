# Generated by Django 3.2.3 on 2021-08-24 01:38

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('db', '0004_alter_maindata_date'),
    ]

    operations = [
        migrations.RenameField(
            model_name='maindata',
            old_name='city',
            new_name='group',
        ),
    ]
