# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('mainsite', '0006_auto_20170415_1651'),
    ]

    operations = [
        migrations.RenameField(
            model_name='post',
            old_name='tags',
            new_name='tag',
        ),
    ]
