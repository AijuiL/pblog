# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('mainsite', '0003_tagadmin'),
    ]

    operations = [
        migrations.AlterModelOptions(
            name='tag',
            options={'ordering': ('-title',), 'verbose_name': '\u6a19\u7c64', 'verbose_name_plural': '\u6a19\u7c64'},
        ),
    ]
