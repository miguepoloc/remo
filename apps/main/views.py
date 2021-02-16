from django.shortcuts import render
from django.http import HttpResponse
from django.views import generic
from ..api.models import Estacion, Sensor_Estacion, Componente_Estacion, Salidas_De_Campo


# class index(generic.ListView):
#     model = Estacion
#     # Cantidadd de items a mostrar por página
#     paginate_by = 9
#     # El nombre con el que se trabajará en la plantilla html
#     context_object_name = 'estaciones_list'
#     queryset = Estacion.objects.order_by('-id')
#     # Especifica la localicación del template
#     template_name = 'main/index.html'

def index(request):

    estacion = Estacion.objects.all()
    sensor = Sensor_Estacion.objects.all()
    componente = Componente_Estacion.objects.all()
    salida = Salidas_De_Campo.objects.all()

    return render(request, "main/index.html", {'estaciones_list': estacion, 'componentes_estacion_list': componente, 'sensores_estacion_list': sensor, 'salida_de_campo_list': salida})
