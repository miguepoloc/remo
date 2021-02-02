from django.shortcuts import render
from django.http import HttpResponse
from django.views import generic
from ..api.models import Categoria_componente, Categoria_sensor, Componente, Estacion, Componente_Estacion, Sensor, Sensor_Estacion


class Componente_EstacionListView(generic.ListView):
    model = Componente_Estacion
    # your own name for the list as a template variable
    context_object_name = 'componentes_estacion_list'
    queryset = Componente_Estacion.objects.order_by('-id')
    # Specify your own template name/location
    template_name = 'componentes/componentes_estacion_list.html'


def componentes(request):
    return render(request, 'componentes/componentes.html')


class Componente_EstacionDetailView(generic.DetailView):
    model = Componente_Estacion
    template_name = 'componentes/componente_estacion_detail.html'
