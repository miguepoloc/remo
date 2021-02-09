from django.shortcuts import render
from django.http import HttpResponse
from django.views import generic
from ..api.models import Estacion, Sensor_Estacion, Componente_Estacion


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

    objeto1 = Estacion.objects.all()
    objeto2 = Sensor_Estacion.objects.all()
    objeto3 = Componente_Estacion.objects.all()

    return render(request, "main/index.html", {'estaciones_list': objeto1, 'componentes_estacion_list': objeto2, 'sensores_estacion_list': objeto3})
