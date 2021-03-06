# Generated by Django 2.0.6 on 2018-06-10 01:42

import datetime
from django.db import migrations, models
import django.db.models.deletion
from django.utils.timezone import utc


class Migration(migrations.Migration):

    dependencies = [
        ('EnvioPost', '0010_enviopost_fecharespuesta'),
    ]

    operations = [
        migrations.CreateModel(
            name='GustoCliente',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('interes1', models.BooleanField()),
                ('interes2', models.BooleanField()),
                ('interes3', models.BooleanField()),
                ('interes4', models.BooleanField()),
                ('interes5', models.BooleanField()),
                ('interes6', models.BooleanField()),
            ],
        ),
        migrations.AlterField(
            model_name='enviopost',
            name='fechaRespuesta',
            field=models.DateTimeField(blank=True, default=datetime.datetime(2018, 6, 10, 1, 42, 53, 387160, tzinfo=utc)),
        ),
        migrations.AddField(
            model_name='gustocliente',
            name='idCliente',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='EnvioPost.EnvioPost'),
        ),
    ]
