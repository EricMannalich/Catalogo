# Generated by Django 4.0 on 2022-01-26 18:19

import apps.users.models
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('users', '0003_alter_historicaluser_is_active_and_more'),
    ]

    operations = [
        migrations.AlterField(
            model_name='user',
            name='image',
            field=models.ImageField(blank=True, max_length=255, null=True, upload_to=apps.users.models.user_directory_path, verbose_name='Imagen de perfil'),
        ),
    ]
