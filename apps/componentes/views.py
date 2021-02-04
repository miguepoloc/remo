from django.shortcuts import render
from django.http import HttpResponse
from django.views import generic
from ..api.models import Componente_Estacion


class Componente_EstacionListView(generic.ListView):
    model = Componente_Estacion
    # Cantidadd de items a mostrar por página
    paginate_by = 9
    # El nombre con el que se trabajará en la plantilla html
    context_object_name = 'componentes_estacion_list'
    queryset = Componente_Estacion.objects.order_by('-id')
    # Especifica la localicación del template
    template_name = 'componentes/componentes_estacion_list.html'


class Componente_EstacionDetailView(generic.DetailView):
    model = Componente_Estacion
    context_object_name = 'componente_estacion'
    template_name = 'componentes/componente_estacion_detail.html'
