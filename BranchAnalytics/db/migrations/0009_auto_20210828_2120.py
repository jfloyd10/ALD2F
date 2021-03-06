# Generated by Django 3.2.3 on 2021-08-29 02:20

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('db', '0008_alter_maindata_date'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='maindata',
            name='amount',
        ),
        migrations.RemoveField(
            model_name='maindata',
            name='city',
        ),
        migrations.AddField(
            model_name='maindata',
            name='cost',
            field=models.IntegerField(blank=True, null=True),
        ),
        migrations.AddField(
            model_name='maindata',
            name='customer',
            field=models.CharField(blank=True, max_length=100, null=True),
        ),
        migrations.AddField(
            model_name='maindata',
            name='gp',
            field=models.IntegerField(blank=True, null=True),
        ),
        migrations.AddField(
            model_name='maindata',
            name='group',
            field=models.CharField(blank=True, max_length=100, null=True),
        ),
        migrations.AddField(
            model_name='maindata',
            name='price',
            field=models.IntegerField(blank=True, null=True),
        ),
        migrations.AddField(
            model_name='maindata',
            name='salesrep',
            field=models.CharField(blank=True, max_length=100, null=True),
        ),
        migrations.AddField(
            model_name='maindata',
            name='source',
            field=models.CharField(blank=True, max_length=100, null=True),
        ),
        migrations.AddField(
            model_name='maindata',
            name='state',
            field=models.CharField(blank=True, max_length=100, null=True),
        ),
    ]
