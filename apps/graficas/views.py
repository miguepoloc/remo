from django.shortcuts import render
from django.http import HttpResponse
from django.views import generic
from ..api.models import Data


class Graficas(generic.ListView):
    model = Data
    # Cantidad de items a mostrar por página
    # paginate_by = 9
    # El nombre con el que se trabajará en la plantilla html
    context_object_name = 'graficas_list'
    queryset = Data.objects.order_by('-id')
    # Especifica la localicación del template
    template_name = 'graficas/graficas.html'
