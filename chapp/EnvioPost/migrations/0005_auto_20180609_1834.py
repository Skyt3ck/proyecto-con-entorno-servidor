# Generated by Django 2.0.6 on 2018-06-09 17:34

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('EnvioPost', '0004_auto_20180609_1809'),
    ]

    operations = [
        migrations.AlterField(
            model_name='enviopost',
            name='id',
            field=models.AutoField(primary_key=True, serialize=False),
        ),
    ]
