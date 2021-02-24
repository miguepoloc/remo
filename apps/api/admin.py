from django.contrib import admin
from .models import (Categoria_componente, Categoria_sensor, Componente,
                     Estacion, Componente_Estacion, Sensor_Estacion, Sensor,
                     Investigador, Tipo_Salida_De_Campo, Salidas_De_Campo, 
                     Sensor_Salidas_De_Campo, Componente_Salidas_De_Campo,
                     Calendario_Salidas_De_Campo)


admin.site.register(Categoria_componente)
admin.site.register(Categoria_sensor)
admin.site.register(Sensor)
admin.site.register(Sensor_Estacion)
admin.site.register(Componente)
admin.site.register(Componente_Estacion)
admin.site.register(Estacion)
admin.site.register(Investigador)
admin.site.register(Tipo_Salida_De_Campo)
admin.site.register(Salidas_De_Campo)
admin.site.register(Sensor_Salidas_De_Campo)
admin.site.register(Componente_Salidas_De_Campo)
admin.site.register(Calendario_Salidas_De_Campo)
