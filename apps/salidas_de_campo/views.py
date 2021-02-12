from django.shortcuts import render
from django.http import HttpResponse
from django.views import generic
from ..api.models import Estacion, Sensor_Estacion, Componente_Estacion, Salidas_De_Campo, Investigador, Tipo_Salida_De_Campo


# class Salidas_De_CampoListView(generic.ListView):
#     model = Salidas_De_Campo
#     # Cantidadd de items a mostrar por página
#     paginate_by = 20
#     # El nombre con el que se trabajará en la plantilla html
#     context_object_name = 'salidas_de_campo_list'
#     queryset = Salidas_De_Campo.objects.order_by('-id')
#     # Especifica la localicación del template
#     template_name = 'salidas_de_campo/salidas_de_campo_list.html'


# class Salidas_De_CampoDetailView(generic.DetailView):
#     model = Salidas_De_Campo
#     context_object_name = 'salidas_de_campo'
#     template_name = 'salidas_de_campo/salidas_de_campo_detail.html'


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
