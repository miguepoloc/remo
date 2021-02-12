from django.urls import include, path
from rest_framework import routers
from . import views

router = routers.DefaultRouter()
router.register(r'Categoria_componente',
                views.Categoria_componenteViewSet, "Categoria_componente")
router.register(r'Categoria_sensor',
                views.Categoria_sensorViewSet, "Categoria_sensor")
router.register(r'Componente', views.ComponenteViewSet, "Componente")
router.register(r'Sensor', views.SensorViewSet, "Sensor")
router.register(r'Sensor_Estacion',
                views.Sensor_EstacionViewSet, "Sensor_Estacion")
router.register(r'Componente_Estacion',
                views.Componente_EstacionViewSet, "Componente_Estacion")
router.register(r'Estacion', views.EstacionViewSet, "Estacion")
router.register(r'Tipo_Salida_De_Campo',
                views.Tipo_Salida_De_CampoViewSet, "Tipo_Salida_De_Campo")
router.register(r'Investigador', views.InvestigadorViewSet, "Investigador")
router.register(r'Salida_De_Campo',
                views.Salidas_De_CampoViewSet, "Salida_De_Campo")


urlpatterns = [
    path('', include(router.urls)),
]
