# Generated by Django 3.2.3 on 2021-09-03 13:13

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('db', '0012_userbookmarks'),
    ]

    operations = [
        migrations.AddField(
            model_name='userbookmarks',
            name='page',
            field=models.CharField(blank=True, max_length=100, null=True),
        ),
    ]
