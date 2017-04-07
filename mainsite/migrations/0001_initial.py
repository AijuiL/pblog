# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import migrations, models
import django.utils.timezone


class Migration(migrations.Migration):

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='NewTable',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('bigint_f', models.BigIntegerField(verbose_name='64\u4f4d\u5143\u4e4b\u5927\u6574\u6578')),
                ('bool_f', models.BooleanField(verbose_name='\u5e03\u6797\u503c')),
                ('date_f', models.DateField(auto_now=True, verbose_name='\u65e5\u671f\u683c\u5f0f')),
                ('char_f', models.CharField(unique=True, max_length=20, verbose_name='\u5132\u5b58\u8cc7\u6599\u5b57\u4e32Char')),
                ('datetime_f', models.DateTimeField(auto_now_add=True, verbose_name='\u8cc7\u6599\u6642\u9593\u683c\u5f0f')),
                ('decimal_f', models.DecimalField(verbose_name='\u5b9a\u9ede\u5c0f\u6578\u6578\u503c\u8cc7\u6599', max_digits=10, decimal_places=2)),
                ('float_f', models.FloatField(null=True, verbose_name='\u6d6e\u9ede\u6578')),
                ('int_f', models.IntegerField(default=2010, verbose_name='\u6574\u6578\u6b04\u4f4d')),
                ('text_f', models.TextField(null=True, verbose_name='\u7528\u5728HTML\u8868\u55ae')),
            ],
            options={
                'verbose_name': '\u65b0\u6a19\u984c',
                'verbose_name_plural': 'NewTable',
            },
        ),
        migrations.CreateModel(
            name='Post',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('title', models.CharField(max_length=200, verbose_name='title(\u6a19\u984c)')),
                ('body', models.TextField(verbose_name='body(\u5167\u6587)')),
                ('pub_date', models.DateTimeField(default=django.utils.timezone.now, verbose_name='\u73fe\u5728\u6642\u523b')),
            ],
            options={
                'ordering': ('-pub_date',),
                'verbose_name': '\u8cbc\u6587',
                'verbose_name_plural': 'Post',
            },
        ),
        migrations.CreateModel(
            name='Product',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('sku', models.CharField(max_length=10)),
                ('name', models.CharField(max_length=20)),
                ('price', models.PositiveIntegerField()),
                ('size', models.CharField(max_length=1, choices=[(b'S', b'Small'), (b'M', b'Medium'), (b'L', b'Large')])),
                ('qty', models.BigIntegerField(null=True)),
            ],
        ),
    ]
