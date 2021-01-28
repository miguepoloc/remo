from django.contrib import admin
from .models import Categoria_componente, Categoria_sensor, Componente, Estacion, Componente_Estacion, Sensor_Estacion, Sensor

admin.site.register(Categoria_componente)
admin.site.register(Categoria_sensor)
admin.site.register(Sensor)
admin.site.register(Sensor_Estacion)
admin.site.register(Componente)
admin.site.register(Componente_Estacion)
admin.site.register(Estacion)
