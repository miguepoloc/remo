from django.shortcuts import render
from django.http import HttpResponse
from django.views import generic
from ..api.models import Estacion, Salidas_De_Campo, Componente_Estacion, Sensor_Estacion


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

    def get_context_data(self, **kwargs):
        # Call the base implementation first to get a context
        context = super().get_context_data(**kwargs)
        # Add in a QuerySet of all the books
        context['salida_de_campo_list'] = Salidas_De_Campo.objects.filter(estacion=self.kwargs['pk'])
        context['componentes_estacion_list'] = Componente_Estacion.objects.all()
        context['sensores_estacion_list'] = Sensor_Estacion.objects.all()
        return context
