# Generated by Django 2.2.10 on 2021-02-11 16:52

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('api', '0025_auto_20210211_1129'),
    ]

    operations = [
        migrations.AlterField(
            model_name='salidas_de_campo',
            name='fecha',
            field=models.DateField(blank=True, max_length=2000, null=True),
        ),
    ]