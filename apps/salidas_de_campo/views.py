from django.shortcuts import render
from django.http import HttpResponse
from django.views import generic
from ..api.models import Salidas_De_Campo


class Salidas_De_CampoListView(generic.ListView):
    model = Salidas_De_Campo
    # Cantidadd de items a mostrar por página
    paginate_by = 20
    # El nombre con el que se trabajará en la plantilla html
    context_object_name = 'salidas_de_campo_list'
    queryset = Salidas_De_Campo.objects.order_by('-id')
    # Especifica la localicación del template
    template_name = 'salidas_de_campo/salidas_de_campo_list.html'


class Salidas_De_CampoDetailView(generic.DetailView):
    model = Salidas_De_Campo
    context_object_name = 'salidas_de_campo'
    template_name = 'salidas_de_campo/salidas_de_campo_detail.html'
