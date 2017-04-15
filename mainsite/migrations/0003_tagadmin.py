# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('mainsite', '0002_auto_20170415_1604'),
    ]

    operations = [
        migrations.CreateModel(
            name='Tagadmin',
            fields=[
                ('tag_ptr', models.OneToOneField(parent_link=True, auto_created=True, primary_key=True, serialize=False, to='mainsite.Tag')),
            ],
            bases=('mainsite.tag',),
        ),
    ]
