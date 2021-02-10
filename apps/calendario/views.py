from django.shortcuts import render
from django.http import HttpResponse
from django.views import generic
from ..api.models import Estacion, Sensor_Estacion, Componente_Estacion


def calendario(request):

    return render(request, "calendario/calendario.html")
