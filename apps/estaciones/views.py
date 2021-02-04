from django.shortcuts import render
from django.http import HttpResponse
from django.views import generic
from ..api.models import Estacion


class Componente_EstacionListView(generic.ListView):
    model = Estacion
    # Cantidadd de items a mostrar por página
    paginate_by = 9
    # El nombre con el que se trabajará en la plantilla html
    context_object_name = 'estaciones_list'
    queryset = Estacion.objects.order_by('-id')
    # Especifica la localicación del template
    template_name = 'estaciones/estaciones_list.html'


class Componente_EstacionDetailView(generic.DetailView):
    model = Estacion
    context_object_name = 'estacion'
    template_name = 'estaciones/estacion_detail.html'
