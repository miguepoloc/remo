# Generated by Django 2.2.10 on 2021-04-10 07:06

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('api', '0040_auto_20210410_0132'),
    ]

    operations = [
        migrations.AlterField(
            model_name='data',
            name='variable',
            field=models.CharField(default='', max_length=100),
            preserve_default=False,
        ),
        migrations.AlterField(
            model_name='estacion',
            name='tipo',
            field=models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.SET_NULL, to='api.Tipo_Estacion'),
        ),
    ]
