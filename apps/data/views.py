from django.shortcuts import render
from django.http import HttpResponse
from django.views import generic
from ..api.models import Data, Codigo_Sensor


class Data(generic.ListView):
    model = Data
    # Cantidadd de items a mostrar por página
    # paginate_by = 5
    # El nombre con el que se trabajará en la plantilla html
    context_object_name = 'data_list'
    queryset = Data.objects.order_by('id')
    # Especifica la localicación del template
    template_name = 'data/data.html'

    def get_context_data(self, **kwargs):
        # Call the base implementation first to get a context
        context = super().get_context_data(**kwargs)
        # Add in a QuerySet of all the books
        context['codigo_sensor_list'] = Codigo_Sensor.objects.all()
        return context
