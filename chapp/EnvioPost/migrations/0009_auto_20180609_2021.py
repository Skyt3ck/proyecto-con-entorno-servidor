# Generated by Django 2.0.6 on 2018-06-09 19:21

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('EnvioPost', '0008_auto_20180609_2005'),
    ]

    operations = [
        migrations.AlterField(
            model_name='enviopost',
            name='app',
            field=models.CharField(blank=True, max_length=20),
        ),
    ]
