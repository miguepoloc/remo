# Generated by Django 2.2.10 on 2021-02-02 16:27

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('api', '0015_auto_20210202_1106'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='componente',
            name='responsable',
        ),
        migrations.AddField(
            model_name='componente_estacion',
            name='responsable',
            field=models.CharField(blank=True, max_length=100, null=True),
        ),
    ]
