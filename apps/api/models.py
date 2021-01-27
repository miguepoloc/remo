from django.db import models
from django.utils import timezone


def corrector_hora():
    return str(timezone.now() + timezone.timedelta(hours=-5)).split(".")[0]

class Categoria_sensor(models.Model):
    id = models.IntegerField(primary_key=True)
    categoria = models.CharField(max_length=100)
    requerimientos = models.CharField(max_length=100)

    def __str__(self):
        return self.categoria

class Categoria_componente(models.Model):
    id = models.IntegerField(primary_key=True)
    categoria = models.CharField(max_length=100)
    requerimientos = models.CharField(max_length=100)

    def __str__(self):
        return self.categoria


class Componentes(models.Model):
    id = models.AutoField(primary_key=True)
    serial = models.CharField(max_length=100, blank=True, null=True)
    nombre = models.CharField(max_length=500)
    funcion = models.CharField(max_length=500)
    referencia = models.CharField(max_length=500)
    descripcion = models.CharField(max_length=4000, blank=True, null=True)
    numero_inventario = models.IntegerField()
    ubicacion = models.CharField(max_length=4000, blank=True, null=True)
    responsable = models.CharField(max_length=100, blank=True, null=True)
    frecuencia_muestreo = models.CharField(max_length=100, blank=True, null=True)
    frecuencia_calibracion = models.CharField(max_length=100, blank=True, null=True)
    frecuencia_mantenimiento = models.CharField(max_length=100, blank=True, null=True)
    protocolo_comunicacion_uso = models.CharField(max_length=100, blank=True, null=True)
    estado = models.IntegerField()
    sensor = models.CharField(max_length=100, blank=True, null=True)
    voltaje = models.CharField(max_length=100, blank=True, null=True)
    corriente = models.CharField(max_length=100, blank=True, null=True)
    rango_medicion = models.CharField(max_length=100, blank=True, null=True)
    rango_operacion = models.CharField(max_length=100, blank=True, null=True)
    exactitud = models.CharField(max_length=100, blank=True, null=True)
    resolucion = models.CharField(max_length=100, blank=True, null=True)
    protocolo_comunicacion = models.CharField(max_length=100, blank=True, null=True)

    def __str__(self):
        return self.referencia


class Estacion(models.Model):
    id = models.AutoField(primary_key=True)
    id_estacion = models.IntegerField()
    nombre = models.CharField(max_length=100)
    latitud = models.FloatField(blank=True, null=True)
    longitud = models.FloatField(blank=True, null=True)
    altura = models.FloatField(blank=True, null=True)
    sitio = models.CharField(max_length=4000, blank=True, null=True)
    descripcion = models.CharField(max_length=4000, blank=True, null=True)
    responsable = models.CharField(max_length=100, blank=True, null=True)
    protocolo_comunicacion = models.CharField(max_length=4000, blank=True, null=True)
    estado = models.IntegerField()
    fecha_inicio_registro = models.CharField(max_length=2000, blank=True, null=True)
    equipos  = models.CharField(max_length=4000, blank=True, null=True)
    sensores  = models.CharField(max_length=4000, blank=True, null=True)

    def __str__(self):
        return self.nombre