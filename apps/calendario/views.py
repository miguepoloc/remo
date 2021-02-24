from django.shortcuts import render
from django.http import HttpResponse
from django.views import generic
from ..api.models import Estacion, Sensor_Estacion, Componente_Estacion, Salidas_De_Campo, Calendario_Salidas_De_Campo, Tipo_Salida_De_Campo


# class CalendarioListView(generic.ListView):
#     model = Calendario_Salidas_De_Campo
#     # Cantidadd de items a mostrar por página
#     paginate_by = 12
#     # El nombre con el que se trabajará en la plantilla html
#     context_object_name = 'calendario_list'
#     queryset = Calendario_Salidas_De_Campo.objects.order_by('-id')
#     # Especifica la localicación del template
#     template_name = 'calendario/calendario.html'


def calendario(request):

    estacion = Estacion.objects.all()
    sensor = Sensor_Estacion.objects.all()
    componente = Componente_Estacion.objects.all()
    salida = Salidas_De_Campo.objects.all()
    calendario = Calendario_Salidas_De_Campo.objects.all()
    tipo_de_salida = Tipo_Salida_De_Campo.objects.all()

    return render(request, "calendario/calendario.html",
                  {'estaciones_list': estacion, 'componentes_estacion_list': componente,
                   'sensores_estacion_list': sensor, 'salida_de_campo_list': salida, 'calendario_list': calendario,
                   'tipo_de_salida': tipo_de_salida})
