from django.db import models
from django.utils import timezone


def corrector_hora():
    return str(timezone.now() + timezone.timedelta(hours=-5)).split(".")[0]


class Categoria_sensor(models.Model):
    id = models.IntegerField(primary_key=True)
    categoria = models.CharField(
        max_length=200, help_text="Ingrese la categoria de estado")
    requerimientos = models.CharField(max_length=100)
    color = models.CharField(max_length=100)

    def __str__(self):
        return self.categoria


class Sensor(models.Model):
    id = models.IntegerField(primary_key=True)
    nombre = models.CharField(max_length=500)
    abreviatura = models.CharField(max_length=300, blank=True, null=True)
    descripcion = models.TextField(max_length=4000, blank=True, null=True)

    def __str__(self):
        return self.nombre


class Sensor_Estacion(models.Model):
    id = models.AutoField(primary_key=True)
    sensor = models.ForeignKey(
        'Sensor', on_delete=models.SET_NULL, null=True, blank=True)
    ubicacion = models.ForeignKey(
        'Estacion', on_delete=models.SET_NULL, null=True, blank=True)
    componente = models.ForeignKey(
        'Componente_Estacion', on_delete=models.SET_NULL, null=True, blank=True)
    estado = models.ForeignKey(
        'Categoria_sensor', on_delete=models.SET_NULL, null=True, blank=True)

    def __str__(self):
        return '%s (%s)' % (self.sensor.nombre, self.ubicacion)


class Categoria_componente(models.Model):
    id = models.IntegerField(primary_key=True)
    categoria = models.CharField(max_length=100)
    requerimientos = models.CharField(max_length=100)
    color = models.CharField(max_length=100)

    def __str__(self):
        return self.categoria


class Componente(models.Model):
    id = models.AutoField(primary_key=True)
    nombre = models.CharField(max_length=500)
    funcion = models.CharField(max_length=500)
    referencia = models.CharField(max_length=500)
    descripcion = models.TextField(max_length=4000, blank=True, null=True)
    responsable = models.CharField(max_length=100, blank=True, null=True)
    frecuencia_calibracion = models.CharField(
        max_length=100, blank=True, null=True)
    frecuencia_mantenimiento = models.CharField(
        max_length=100, blank=True, null=True)
    voltaje = models.CharField(max_length=100, blank=True, null=True)
    corriente = models.CharField(max_length=100, blank=True, null=True)
    rango_medicion = models.CharField(max_length=100, blank=True, null=True)
    rango_operacion = models.CharField(max_length=100, blank=True, null=True)
    exactitud = models.CharField(max_length=100, blank=True, null=True)
    resolucion = models.CharField(max_length=100, blank=True, null=True)
    protocolo_comunicacion = models.CharField(
        max_length=500, blank=True, null=True)

    def __str__(self):
        return '%s (%s)' % (self.nombre, self.referencia)


class Componente_Estacion(models.Model):
    id = models.AutoField(primary_key=True)
    componente = models.ForeignKey(
        'Componente', on_delete=models.SET_NULL, null=True, blank=True)
    serial = models.CharField(max_length=100, blank=True, null=True)
    numero_inventario = models.IntegerField(blank=True, null=True)
    sensores = models.ManyToManyField(
        Sensor_Estacion, help_text="Seleccione los sensores del componente", blank=True, null=True)
    ubicacion = models.ForeignKey(
        'Estacion', on_delete=models.SET_NULL, null=True, blank=True)
    frecuencia_muestreo = models.CharField(
        max_length=100, blank=True, null=True)
    protocolo_comunicacion_uso = models.CharField(
        max_length=100, blank=True, null=True)
    estado = models.ForeignKey(
        'Categoria_componente', on_delete=models.SET_NULL, null=True, blank=True)

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
        'Categoria_componente', on_delete=models.SET_NULL, null=True, blank=True)
    fecha_inicio_registro = models.DateTimeField(
        max_length=2000, blank=True, null=True)
    componentes = models.ManyToManyField(
        Componente_Estacion, help_text="Seleccione los componentes de la estación", null=True, blank=True)
    sensores = models.ManyToManyField(
        Sensor_Estacion, help_text="Seleccione los sensores de la estación", null=True, blank=True)

    def __str__(self):
        return self.nombre
