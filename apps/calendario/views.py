from django.shortcuts import render
from django.http import HttpResponse
from django.views import generic
from ..api.models import Calendario_Salidas_De_Campo


class CalendarioListView(generic.ListView):
    model = Calendario_Salidas_De_Campo
    # Cantidadd de items a mostrar por página
    paginate_by = 12
    # El nombre con el que se trabajará en la plantilla html
    context_object_name = 'calendario_list'
    queryset = Calendario_Salidas_De_Campo.objects.order_by('-id')
    # Especifica la localicación del template
    template_name = 'calendario/calendario.html'
