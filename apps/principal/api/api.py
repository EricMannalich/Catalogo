import datetime

from django.contrib.postgres.search import SearchQuery, SearchVector
from rest_framework import status
from rest_framework.response import Response

from apps.principal.api.serializers import *
from apps.principal.models import *
from apps.principal.views import *
from apps.base.api import *
from apps.base.serializers import *

class GeneroViewSet(GeneralViewSet):
    serializer_class = GeneroSerializer

class SerieViewSet(GeneralViewSet):
    serializer_class = SerieSerializer

class EpisodioViewSet(GeneralViewSet):
    serializer_class =EpisodioSerializer

class PuntuacionViewSet(GeneralViewSet):
    serializer_class = PuntuacionSerializer

    def data_url(self, request):
        model = self.get_queryset()
        serie = request.GET.get('serie')
        if serie:
            if serie.isdigit():
                id_serie = int(serie)
                model = model.filter(serie_id = id_serie)
        usuario = request.GET.get('usuario')
        if usuario:
            if usuario.isdigit():
                id_usuario = int(usuario)
                model = model.filter(usuario_id = id_usuario)
        return model

    def list(self, request):
        model = self.data_url(request)
        data = self.get_data(model)
        return Response(data, status = status.HTTP_200_OK)

    def create(self, request):
        serializer = self.serializer_class(data = request.data)
        if serializer.is_valid():
            usuario = request.user.id
            if not usuario:
                #usuario = serializer.data.get('usuario')
                return Response({'error': 'Este usuario no puede cambiar la puntuacion'}, status=status.HTTP_401_UNAUTHORIZED)
            serie = serializer.data.get('serie')
            puntuacion = serializer.data.get('puntuacion')
            #print(usuario,serie, puntuacion)
            puntuacion_insert = Puntuacion(usuario_id = usuario, serie_id = serie, puntuacion = puntuacion)
            puntuacion_insert.save()
            model = self.data_url(request)
            data = self.get_data(model)
            return Response(data, status = status.HTTP_200_OK)
        return Response({'error': 'Datos no validos!'}, status = status.HTTP_400_BAD_REQUEST)

class SerieListApiView(GeneraListPageAPIView):
    serializer_class = BuscarSerializer
    serializer_model = SerieSerializer

    def get(self, request):
        entrada = request.GET.get('entrada')
        request_pagina = request.GET.get('pagina')
        request_cant_pagina = request.GET.get('cant_pagina')
        genero = request.GET.get('genero')
        tansmicion = request.GET.get('tansmicion')
        fecha_inicio = request.GET.get('fecha_inicio')
        fecha_fin = request.GET.get('fecha_fin')
        puntuacion = request.GET.get('puntuacion')
        orden = request.GET.get('orden')
        pagina, cant_pagina = chek_paginacion_str(request_pagina,request_cant_pagina)
        model = self.get_queryset()
        if tansmicion:
            if tansmicion == "saliendo":
                model = model.filter(emision = True)
            elif tansmicion == "terminado":
                model = model.filter(emision = False)
        if puntuacion:
            if puntuacion.isdigit():
                int_puntuacion = int(puntuacion)
                model = model.filter(promedio_puntuaciones__gte = int_puntuacion)
        if genero:
            list_genero = genero.split(",")
            del list_genero[0]
            if list_genero:
                model = model.filter(genero__in = list_genero).distinct()
        if fecha_inicio:
            model = model.filter(fecha_salida__gte = fecha_inicio)
        if fecha_fin:
            model = model.filter(fecha_salida__lte = fecha_fin)
        model = self.buscar(model, entrada)
        if model:
            count = model.count()
            if (orden):
                if (orden == "nombre_ascendente"):
                    model = model.order_by('nombre')
                elif (orden == "nombre_descendente"):
                    model = model.order_by('-nombre')
                elif (orden == "fecha_ascendente"):
                    model = model.order_by('fecha_salida')
                elif (orden == "fecha_descendente"):
                    model = model.order_by('-fecha_salida')
            model = paginacion(model, pagina, cant_pagina)
            data = self.get_data(model)
            return Response({'count':count, 'data': data}, status = status.HTTP_200_OK)
        return Response({'error': 'No encontrado!'}, status = status.HTTP_400_BAD_REQUEST)

    def post(self,request):
        serializer = self.serializer_class(data = request.data)
        if serializer.is_valid():
            entrada = serializer.data.get('entrada')
            pagina = serializer.data.get('pagina')
            cant_pagina = serializer.data.get('cant_pagina')
            pagina, cant_pagina = chek_paginacion_int(pagina,cant_pagina)
            model = self.get_queryset()
            model = self.buscar(model, entrada)
            if model:
                count = model.count()
                model = paginacion(model, pagina, cant_pagina)
                data = self.get_data(model)
                return Response({'count':count, 'data': data}, status = status.HTTP_200_OK)
            return Response({'error': 'No encontrado!'}, status = status.HTTP_400_BAD_REQUEST)
        return Response({'error': 'Entrada no valida!'}, status = status.HTTP_400_BAD_REQUEST)