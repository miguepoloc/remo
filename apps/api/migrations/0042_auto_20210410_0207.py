# Generated by Django 2.2.10 on 2021-04-10 07:07

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('api', '0041_auto_20210410_0206'),
    ]

    operations = [
        migrations.AlterField(
            model_name='data',
            name='variable',
            field=models.IntegerField(max_length=100),
        ),
        migrations.AlterField(
            model_name='estacion',
            name='tipo',
            field=models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.SET_NULL, to='api.Tipo_Estacion'),
        ),
    ]
