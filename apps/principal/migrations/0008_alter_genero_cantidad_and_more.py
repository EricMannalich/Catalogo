# Generated by Django 4.0 on 2022-01-26 19:58

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('principal', '0007_genero_cantidad_genero_descripcion_and_more'),
    ]

    operations = [
        migrations.AlterField(
            model_name='genero',
            name='cantidad',
            field=models.IntegerField(default=0),
        ),
        migrations.AlterField(
            model_name='historicalgenero',
            name='cantidad',
            field=models.IntegerField(default=0),
        ),
    ]
