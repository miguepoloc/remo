from rest_framework import serializers
from .models import Categoria_componente, Categoria_sensor, Componente, Estacion, Componente_Estacion, Sensor, Sensor_Estacion


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
