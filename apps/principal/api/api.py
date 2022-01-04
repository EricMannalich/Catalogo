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
        pagina, cant_pagina = chek_paginacion_str(request_pagina,request_cant_pagina)
        model = self.get_queryset()
        if tansmicion:
            if tansmicion == "saliendo":
                model = model.filter(emision = True)
            elif tansmicion == "terminado":
                model = model.filter(emision = False)
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