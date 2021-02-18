from django.shortcuts import render
from django.http import HttpResponse
from django.views import generic
from ..api.models import Sensor_Estacion, Sensor_Salidas_De_Campo


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

    def get_context_data(self, **kwargs):
        # Call the base implementation first to get a context
        context = super().get_context_data(**kwargs)
        # Add in a QuerySet of all the books
        context['salida_de_campo_list'] = Sensor_Salidas_De_Campo.objects.filter(
            sensor=self.kwargs['pk'])
        return context