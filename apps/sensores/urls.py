from django.urls import path
from django.conf.urls import url
from django.urls import path, include
from rest_framework import routers
from . import views

urlpatterns = [
    url(r'^$', views.Sensor_EstacionListView.as_view(), name='sensores'),
    url(r'^(?P<pk>\d+)$', views.Sensor_EstacionDetailView.as_view(),
        name='sensor_estacion_detail'),
]
