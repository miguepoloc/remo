from django.db import models
from django.utils import timezone
import uuid  # Requerida para las instancias de sensores únicos


def corrector_hora():
    return str(timezone.now() + timezone.timedelta(hours=-5)).split(".")[0]


class Categoria_sensor(models.Model):
    id = models.IntegerField(primary_key=True)
    categoria = models.CharField(
        max_length=200, help_text="Ingrese la categoria de estado")
    requerimientos = models.CharField(max_length=100)

    def __str__(self):
        return self.categoria


class Categoria_componente(models.Model):
    id = models.IntegerField(primary_key=True)
    categoria = models.CharField(max_length=100)
    requerimientos = models.CharField(max_length=100)

    def __str__(self):
        return self.categoria


class Componente(models.Model):
    id = models.AutoField(primary_key=True)
    nombre = models.CharField(max_length=500)
    funcion = models.CharField(max_length=500)
    referencia = models.CharField(max_length=500)
    descripcion = models.TextField(max_length=4000, blank=True, null=True)
    responsable = models.CharField(max_length=100, blank=True, null=True)
    frecuencia_muestreo = models.CharField(
        max_length=100, blank=True, null=True)
    frecuencia_calibracion = models.CharField(
        max_length=100, blank=True, null=True)
    frecuencia_mantenimiento = models.CharField(
        max_length=100, blank=True, null=True)
    sensor = models.CharField(max_length=100, blank=True, null=True)
    voltaje = models.CharField(max_length=100, blank=True, null=True)
    corriente = models.CharField(max_length=100, blank=True, null=True)
    rango_medicion = models.CharField(max_length=100, blank=True, null=True)
    rango_operacion = models.CharField(max_length=100, blank=True, null=True)
    exactitud = models.CharField(max_length=100, blank=True, null=True)
    resolucion = models.CharField(max_length=100, blank=True, null=True)
    protocolo_comunicacion = models.CharField(
        max_length=100, blank=True, null=True)

    def __str__(self):
        return self.nombre


class Componente_Estacion(models.Model):
    id = models.UUIDField(primary_key=True, default=uuid.uuid4,
                          help_text="ID único para este sensor particular de cada estacion")
    componente = models.ForeignKey(
        'Componente', on_delete=models.SET_NULL, null=True)
    serial = models.CharField(max_length=100, blank=True, null=True)
    numero_inventario = models.IntegerField(blank=True, null=True)
    ubicacion = models.ForeignKey(
        'Estacion', on_delete=models.SET_NULL, null=True)
    protocolo_comunicacion_uso = models.CharField(
        max_length=100, blank=True, null=True)
    estado = models.ForeignKey(
        'Categoria_componente', on_delete=models.SET_NULL, null=True)

    def __str__(self):
        return '%s (%s)' % (self.componente.nombre, self.ubicacion)


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
    protocolo_comunicacion = models.CharField(
        max_length=4000, blank=True, null=True)
    estado = models.ForeignKey(
        'Categoria_sensor', on_delete=models.SET_NULL, null=True)
    fecha_inicio_registro = models.CharField(
        max_length=2000, blank=True, null=True)
    componentes = models.ManyToManyField(
        Componente_Estacion, help_text="Seleccione los componentes de la estación")
    sensores = models.CharField(max_length=4000, blank=True, null=True)

    def __str__(self):
        return self.nombre
