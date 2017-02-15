# -*- coding: utf-8 -*-
# Generated by Django 1.10 on 2017-02-14 21:08
from __future__ import unicode_literals

import datetime
from django.db import migrations, models
from django.utils.timezone import utc


class Migration(migrations.Migration):

    dependencies = [
        ('namubufferiapp', '0008_auto_20170211_2148'),
    ]

    operations = [
        migrations.AlterField(
            model_name='account',
            name='magic_token_ttl',
            field=models.DateTimeField(default=datetime.datetime(2017, 2, 14, 21, 23, 7, 788486, tzinfo=utc)),
        ),
        migrations.AlterField(
            model_name='product',
            name='price',
            field=models.DecimalField(decimal_places=2, default=1, max_digits=5),
        ),
    ]