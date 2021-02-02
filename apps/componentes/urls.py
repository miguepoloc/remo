from django.urls import path
from django.conf.urls import url
from django.urls import path, include
from rest_framework import routers
from . import views

urlpatterns = [
    url(r'^$', views.Componente_EstacionListView.as_view(), name='componentes'),
    url(r'^(?P<pk>\d+)$', views.Componente_EstacionDetailView.as_view(),
        name='componente_estacion_detail'),
]
