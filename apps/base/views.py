from datetime import datetime

import psycopg2
from django.shortcuts import render

#Frontend
def index(request, *args, **kwargs):
    return render(request, 'frontend/index.html')

#Funciones

