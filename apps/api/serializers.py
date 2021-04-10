from rest_framework import serializers
from .models import (Categoria_componente, Categoria_sensor, Componente,
                     Estacion, Componente_Estacion, Sensor, Sensor_Estacion,
                     Tipo_Salida_De_Campo, Investigador, Salidas_De_Campo,
                     Sensor_Salidas_De_Campo, Componente_Salidas_De_Campo,
                     Calendario_Salidas_De_Campo, Tipo_Estacion, Data, Codigo_Sensor)


class Codigo_SensorSerializer(serializers.ModelSerializer):
    class Meta:
        model = Codigo_Sensor
        fields = '__all__'


class DataSerializer(serializers.ModelSerializer):
    class Meta:
        model = Data
        fields = '__all__'


class Tipo_EstacionSerializer(serializers.ModelSerializer):
    class Meta:
        model = Tipo_Estacion
        fields = '__all__'


class Categoria_componenteSerializer(serializers.ModelSerializer):
    class Meta:
        model = Categoria_componente
        fields = '__all__'


class Categoria_sensorSerializer(serializers.ModelSerializer):
    class Meta:
        model = Categoria_sensor
        fields = '__all__'


class SensorSerializer(serializers.ModelSerializer):
    class Meta:
        model = Sensor
        fields = '__all__'


class Sensor_EstacionSerializer(serializers.ModelSerializer):
    class Meta:
        model = Sensor_Estacion
        fields = '__all__'


class ComponenteSerializer(serializers.ModelSerializer):
    class Meta:
        model = Componente
        fields = '__all__'


class Componente_EstacionSerializer(serializers.ModelSerializer):
    class Meta:
        model = Componente_Estacion
        fields = '__all__'


class EstacionSerializer(serializers.ModelSerializer):
    class Meta:
        model = Estacion
        fields = '__all__'


class Tipo_Salida_De_CampoSerializer(serializers.ModelSerializer):
    class Meta:
        model = Tipo_Salida_De_Campo
        fields = '__all__'


class InvestigadorSerializer(serializers.ModelSerializer):
    class Meta:
        model = Investigador
        fields = '__all__'


class Salidas_De_CampoSerializer(serializers.ModelSerializer):
    class Meta:
        model = Salidas_De_Campo
        fields = '__all__'


class Sensor_Salidas_De_CampoSerializer(serializers.ModelSerializer):
    class Meta:
        model = Sensor_Salidas_De_Campo
        fields = '__all__'


class Componente_Salidas_De_CampoSerializer(serializers.ModelSerializer):
    class Meta:
        model = Componente_Salidas_De_Campo
        fields = '__all__'


class Calendario_Salidas_De_CampoSerializer(serializers.ModelSerializer):
    class Meta:
        model = Calendario_Salidas_De_Campo
        fields = '__all__'
