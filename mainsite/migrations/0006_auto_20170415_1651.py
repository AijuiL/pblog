# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('mainsite', '0005_auto_20170415_1649'),
    ]

    operations = [
        migrations.RenameField(
            model_name='post',
            old_name='tag',
            new_name='tags',
        ),
    ]
