from django.urls import path
from django.conf.urls import url
from django.urls import path, include
from rest_framework import routers
from . import views

urlpatterns = [
    url(r'^$', views.Componente_EstacionListView.as_view(), name='estaciones'),
    url(r'^(?P<pk>\d+)$', views.Componente_EstacionDetailView.as_view(),
        name='estacion_detail'),
]