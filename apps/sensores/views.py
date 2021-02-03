from django.shortcuts import render
from django.http import HttpResponse
from django.views import generic
from ..api.models import Sensor_Estacion


class Sensor_EstacionListView(generic.ListView):
    model = Sensor_Estacion
    # Cantidadd de items a mostrar por página
    paginate_by = 12
    # El nombre con el que se trabajará en la plantilla html
    context_object_name = 'sensores_estacion_list'
    queryset = Sensor_Estacion.objects.order_by('-id')
    # Especifica la localicación del template
    template_name = 'sensores/sensores_estacion_list.html'


class Sensor_EstacionDetailView(generic.DetailView):
    model = Sensor_Estacion
    template_name = 'sensores/sensor_estacion_detail.html'
