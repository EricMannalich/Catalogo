import datetime

from django.contrib.postgres.search import SearchQuery, SearchVector
from rest_framework import status
from rest_framework.response import Response

from apps.principal.api.serializers import *
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