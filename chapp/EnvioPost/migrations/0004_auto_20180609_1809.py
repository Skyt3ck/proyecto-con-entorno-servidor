# Generated by Django 2.0.6 on 2018-06-09 17:09

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('EnvioPost', '0003_remove_enviopost_fecharespueta'),
    ]

    operations = [
        migrations.AlterField(
            model_name='enviopost',
            name='MRZ',
            field=models.CharField(max_length=100),
        ),
    ]
