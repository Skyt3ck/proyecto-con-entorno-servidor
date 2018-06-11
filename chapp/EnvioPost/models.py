from django.db import models
import datetime
from django.utils import timezone


# Create your models here.
class EnvioPost(models.Model):
    id = models.AutoField(primary_key=True)
    MRZ = models.CharField(max_length=100)
    hotel = models.CharField(max_length=60)
    app = models.CharField(blank=True,max_length=20)
    respuesta = models.TextField(blank=True, null=True)
    fechaRespuesta = models.DateTimeField(default=timezone.now(), blank=True)

    def __int__(self):
        return self.id

class GustoCliente(models.Model):
    idCliente = models.ForeignKey(EnvioPost, on_delete=models.CASCADE)
    interes1 = models.BooleanField(blank=True)
    interes2 = models.BooleanField(blank=True)
    interes3 = models.BooleanField(blank=True)
    interes4 = models.BooleanField(blank=True)
    interes5 = models.BooleanField(blank=True)
    interes6 = models.BooleanField(blank=True)
    empresa = models.CharField(max_length=100, blank=True)

    def __int__(self):
        return self.id

class Gustos(models.Model):
    idGusto = models.AutoField(primary_key=True)
    nombreGusto = models.CharField(max_length=100)

    def __int__(self):
        return self.id