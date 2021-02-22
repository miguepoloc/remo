from django.shortcuts import render
from django.http import HttpResponse
from django.views import generic
from ..api.models import (Estacion, Sensor_Estacion, Componente_Estacion,
                          Salidas_De_Campo, Investigador, Tipo_Salida_De_Campo, Componente_Salidas_De_Campo, Sensor_Salidas_De_Campo)


class Salidas_De_CampoListView(generic.ListView):
    model = Salidas_De_Campo
    # Cantidadd de items a mostrar por página
    # paginate_by = 5
    # El nombre con el que se trabajará en la plantilla html
    context_object_name = 'salida_de_campo_list'
    # queryset = Salidas_De_Campo.objects.order_by('-id')
    # Especifica la localicación del template
    template_name = 'salidas_de_campo/salidas_de_campo_list.html'

    def get_context_data(self, **kwargs):
        # Call the base implementation first to get a context
        context = super().get_context_data(**kwargs)
        # Add in a QuerySet of all the books
        context['componentes_salida_de_campo_list'] = Componente_Salidas_De_Campo.objects.all()
        context['sensores_salida_de_campo_list'] = Sensor_Salidas_De_Campo.objects.all()
        return context


class Salidas_De_CampoDetailView(generic.DetailView):
    model = Salidas_De_Campo
    context_object_name = 'salidas_de_campo'
    template_name = 'salidas_de_campo/salidas_de_campo_detail.html'


class Componente_Salidas_De_CampoDetailView(generic.DetailView):
    model = Componente_Salidas_De_Campo
    context_object_name = 'componente_salidas_de_campo'
    template_name = 'salidas_de_campo/componente_salidas_de_campo_detail.html'


class Sensor_Salidas_De_CampoDetailView(generic.DetailView):
    model = Sensor_Salidas_De_Campo
    context_object_name = 'sensor_salidas_de_campo'
    template_name = 'salidas_de_campo/sensor_salidas_de_campo_detail.html'


# class Salidas_De_CampoForm(generic.ListView):
#     model = Salidas_De_Campo
#     context_object_name = 'salidas_de_campo_form'
#     template_name = 'salidas_de_campo/salidas_de_campo_form.html'

def Salidas_De_CampoForm(request):

    estacion = Estacion.objects.all()
    sensor_estacion = Sensor_Estacion.objects.all()
    componente_estacion = Componente_Estacion.objects.all()
    salidas_de_campo = Salidas_De_Campo.objects.all()
    investigador = Investigador.objects.all()
    tipo_de_salida = Tipo_Salida_De_Campo.objects.all()

    return render(request, "salidas_de_campo/salidas_de_campo_form.html",
                  {'estaciones_list': estacion, 'componentes_estacion_list': componente_estacion,
                   'sensores_estacion_list': sensor_estacion, 'salidas_de_campo_form': salidas_de_campo,
                   'investigador': investigador, 'tipo_de_salida': tipo_de_salida})
