from django.shortcuts import render
from django.http import HttpResponse


def componentes(request):
    return render(request, 'componentes/componentes.html')

