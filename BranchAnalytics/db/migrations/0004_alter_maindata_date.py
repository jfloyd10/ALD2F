# Generated by Django 3.2.3 on 2021-08-21 02:29

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('db', '0003_auto_20210820_2127'),
    ]

    operations = [
        migrations.AlterField(
            model_name='maindata',
            name='date',
            field=models.CharField(blank=True, max_length=100, null=True),
        ),
    ]