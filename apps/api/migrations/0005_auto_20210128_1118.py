# Generated by Django 2.2.10 on 2021-01-28 16:18

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('api', '0004_auto_20210128_1116'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='componente_estacion',
            name='sensor',
        ),
        migrations.AddField(
            model_name='componente_estacion',
            name='sensores',
            field=models.ManyToManyField(blank=True, help_text='Seleccione los sensores del componente', null=True, to='api.Sensor_Estacion'),
        ),
    ]
