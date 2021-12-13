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

class SerieListApiView(APIView):
    serializer_class = BuscarSerializer
    serializer_model = SerieSerializer

    def get_queryset(self):
        return self.serializer_model().Meta.model.objects.filter(state = True)

    def get_data(self, model):
        return self.serializer_model(model, many = True).data

    def buscar(self, model, entrada):
        return model.annotate(search=SearchVector('nombre', 'sinopsis')).filter(search=SearchQuery(entrada, search_type='websearch'))

    def get(self, request):
        entrada = request.GET.get('entrada')
        model = self.get_queryset()
        if entrada:
            if entrada != "null":
                model = self.buscar(model, entrada)
        if model:
            data = self.get_data(model)
            return Response(data, status = status.HTTP_200_OK)
        return Response({'error': 'No encontrado!'}, status = status.HTTP_400_BAD_REQUEST)

    def post(self,request):
        serializer = self.serializer_class(data = request.data)

        if serializer.is_valid():
            entrada = serializer.data.get('entrada')
            model = self.get_queryset()
            if entrada:
                if entrada != "null":
                    model = self.buscar(model, entrada)
            if model:
                data = self.get_data(model)
                return Response(data, status = status.HTTP_200_OK)
            return Response({'error': 'No encontrado!'}, status = status.HTTP_400_BAD_REQUEST)
        return Response({'error': 'Entrada no valida!'}, status = status.HTTP_400_BAD_REQUEST)