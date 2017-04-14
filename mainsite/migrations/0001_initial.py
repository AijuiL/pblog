# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Category',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('name', models.CharField(max_length=20, verbose_name=b'\xe5\x88\x86\xe9\xa1\x9e\xe5\x90\x8d\xe7\xa8\xb1')),
                ('pub_time', models.DateTimeField(auto_now_add=True, verbose_name=b'\xe5\xbb\xba\xe7\xab\x8b\xe6\x99\x82\xe9\x96\x93')),
            ],
            options={
                'verbose_name': '\u5206\u985e',
                'verbose_name_plural': 'Category',
            },
        ),
        migrations.CreateModel(
            name='Post',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('title', models.CharField(max_length=200, verbose_name='title(\u6a19\u984c)')),
                ('body', models.TextField(verbose_name='body(\u5167\u6587)')),
                ('status', models.CharField(max_length=1, verbose_name='status(\u6587\u7ae0\u72c0\u614b)', choices=[(b'd', b'Draft'), (b'p', b'Published')])),
                ('pub_date', models.DateTimeField(verbose_name='\u73fe\u5728\u6642\u523b')),
                ('topped', models.BooleanField(default=False, verbose_name=b'\xe6\x96\x87\xe7\xab\xa0\xe7\xbd\xae\xe9\xa0\x82')),
            ],
            options={
                'ordering': ('-pub_date',),
                'verbose_name': '\u8cbc\u6587',
                'verbose_name_plural': 'Post',
            },
        ),
        migrations.CreateModel(
            name='Categoryadmin',
            fields=[
                ('category_ptr', models.OneToOneField(parent_link=True, auto_created=True, primary_key=True, serialize=False, to='mainsite.Category')),
            ],
            bases=('mainsite.category',),
        ),
        migrations.AddField(
            model_name='post',
            name='category',
            field=models.ForeignKey(on_delete=django.db.models.deletion.SET_NULL, verbose_name=b'\xe5\x88\x86\xe9\xa1\x9e', to='mainsite.Category', null=True),
        ),
    ]
