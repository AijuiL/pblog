# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('mainsite', '0001_initial'),
    ]

    operations = [
        migrations.CreateModel(
            name='Tag',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('title', models.CharField(unique=True, max_length=50, verbose_name=b'\xe5\x90\x8d\xe7\xa8\xb1', db_index=True)),
            ],
            options={
                'verbose_name': '\u6a19\u7c64',
                'verbose_name_plural': '\u6a19\u7c64',
            },
        ),
        migrations.AlterModelOptions(
            name='category',
            options={'ordering': ('-name',), 'verbose_name': '\u5206\u985e', 'verbose_name_plural': 'Category'},
        ),
        migrations.AlterField(
            model_name='category',
            name='name',
            field=models.CharField(max_length=20, verbose_name='\u5206\u985e\u540d\u7a31'),
        ),
        migrations.AlterField(
            model_name='category',
            name='pub_time',
            field=models.DateTimeField(auto_now_add=True, verbose_name='\u5efa\u7acb\u6642\u9593'),
        ),
        migrations.AlterField(
            model_name='post',
            name='category',
            field=models.ForeignKey(on_delete=django.db.models.deletion.SET_NULL, verbose_name='\u5206\u985e', to='mainsite.Category', null=True),
        ),
        migrations.AlterField(
            model_name='post',
            name='topped',
            field=models.BooleanField(default=False, verbose_name='\u6587\u7ae0\u7f6e\u9802'),
        ),
        migrations.AddField(
            model_name='post',
            name='tags',
            field=models.ManyToManyField(to='mainsite.Tag', null=True, verbose_name='\u6a19\u7c64', blank=True),
        ),
    ]
