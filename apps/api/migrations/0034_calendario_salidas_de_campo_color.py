# Generated by Django 2.2.10 on 2021-02-26 16:27

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('api', '0033_remove_calendario_salidas_de_campo_operarios'),
    ]

    operations = [
        migrations.AddField(
            model_name='calendario_salidas_de_campo',
            name='color',
            field=models.CharField(blank=True, help_text='Ingrese el color en formato Hexa', max_length=200, null=True),
        ),
    ]
