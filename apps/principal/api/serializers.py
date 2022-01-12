from rest_framework import serializers

from apps.principal.models import *
from apps.base.serializers import *

class GeneroSerializer(serializers.ModelSerializer):

    class Meta:
        model = Genero
        exclude = ('state', 'created_date', 'modified_date', 'deleted_date',)

class SerieSerializer(serializers.ModelSerializer):

    class Meta:
        model = Serie
        exclude = ('state', 'created_date', 'modified_date', 'deleted_date',)

    def to_representation(self,instance):
        generos = Genero.objects.filter(serie__id = instance.id).distinct()
        list_generos = []
        for genero in generos:
            list_generos.append(genero.id)
        if instance.emision:
            emision = 'Saliendo'
        else:
            emision = 'Terminada'
        return {
            'id': instance.id,
            'nombre': instance.nombre,
            'genero': list_generos,
            'sinopsis': instance.sinopsis,
            'emision': emision,
            'fecha_salida': instance.fecha_salida,
            'promedio_puntuaciones': instance.promedio_puntuaciones,
            #'image': instance['image'] if instance['image'] != '' else ''
            'image': instance.image.url if instance.image else ''
            }

class EpisodioSerializer(serializers.ModelSerializer):

    class Meta:
        model = Episodio
        exclude = ('state', 'created_date', 'modified_date', 'deleted_date',)

    def to_representation(self,instance):
        return {
            'id': instance.id,
            'serie': instance.serie.nombre,
            'nombre': instance.nombre,
            'link': instance.link
            }

class PuntuacionSerializer(serializers.ModelSerializer):

    class Meta:
        model = Puntuacion
        exclude = ('state', 'created_date', 'modified_date', 'deleted_date', )

    """def to_representation(self,instance):
        return {
            'id': instance.id,
            'serie': instance.serie.id,
            'usuario': instance.usuario.id,
            'puntuacion': instance.puntuacion
            }"""
