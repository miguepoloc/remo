# Generated by Django 2.2.10 on 2021-02-11 16:10

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('api', '0022_auto_20210211_1107'),
    ]

    operations = [
        migrations.AlterField(
            model_name='investigador',
            name='id',
            field=models.AutoField(primary_key=True, serialize=False),
        ),
    ]
