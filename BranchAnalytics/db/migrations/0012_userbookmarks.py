# Generated by Django 3.2.3 on 2021-09-03 11:19

from django.conf import settings
from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
        ('db', '0011_rename_group_maindata_group_name'),
    ]

    operations = [
        migrations.CreateModel(
            name='UserBookmarks',
            fields=[
                ('bookmark_id', models.AutoField(primary_key=True, serialize=False)),
                ('group_select', models.CharField(default='starter', max_length=200)),
                ('branch_select', models.CharField(default='starter', max_length=200)),
                ('salesrep_select', models.CharField(default='starter', max_length=200)),
                ('product_select', models.CharField(default='starter', max_length=200)),
                ('month_select', models.CharField(default='starter', max_length=200)),
                ('industry_select', models.CharField(default='starter', max_length=200)),
                ('created_on', models.DateTimeField(auto_now=True)),
                ('user', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to=settings.AUTH_USER_MODEL)),
            ],
            options={
                'verbose_name': 'USER_BOOKMARKS_MODEL',
                'verbose_name_plural': 'USER_BOOKMARKS_MODEL',
                'db_table': 'USER_BOOKMARKS_MODEL',
            },
        ),
    ]
