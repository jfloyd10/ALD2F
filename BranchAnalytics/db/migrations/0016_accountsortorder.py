# Generated by Django 3.2.3 on 2021-09-12 21:21

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('db', '0015_ledgerdata'),
    ]

    operations = [
        migrations.CreateModel(
            name='AccountSortOrder',
            fields=[
                ('sort_id', models.AutoField(primary_key=True, serialize=False)),
                ('account', models.CharField(blank=True, max_length=100, null=True)),
                ('order', models.CharField(blank=True, max_length=100, null=True)),
                ('subtotal_follow', models.CharField(blank=True, max_length=100, null=True)),
            ],
            options={
                'verbose_name': 'ACCOUNT_SORT',
                'verbose_name_plural': 'ACCOUNT_SORT',
                'db_table': 'ACCOUNT_SORT',
            },
        ),
    ]
