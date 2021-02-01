from django.shortcuts import render
from django.http import HttpResponse
from django.views import generic
from ..api.models import Categoria_componente, Categoria_sensor, Componente, Estacion, Componente_Estacion, Sensor, Sensor_Estacion


class Componente_EstacionListView(generic.ListView):
    model = Componente_Estacion
    context_object_name = 'componentes_estacion_list'   # your own name for the list as a template variable
    queryset = Componente_Estacion.objects.all
    template_name = 'componentes/componentes_estacion_list.html'  # Specify your own template name/location

def componentes(request):
    return render(request, 'componentes/componentes.html')

