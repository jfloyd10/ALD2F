# Generated by Django 3.2.3 on 2021-08-21 02:27

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('db', '0002_maindata'),
    ]

    operations = [
        migrations.AddField(
            model_name='maindata',
            name='branch',
            field=models.CharField(blank=True, max_length=100, null=True),
        ),
        migrations.AddField(
            model_name='maindata',
            name='city',
            field=models.CharField(blank=True, max_length=100, null=True),
        ),
    ]
