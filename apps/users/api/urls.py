from django.urls import path

from apps.users.api.api import *

urlpatterns = [
    path('login/',Login.as_view(), name = 'login'),
    path('logout/',Logout.as_view(), name = 'logout'),
]