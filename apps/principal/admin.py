from django.contrib import admin

from apps.principal.models import *

# Register your models here.
class SerieAdmin(admin.ModelAdmin):
    list_display = ("nombre","emision", "fecha_salida")
    list_display_links = list_display
    search_fields = ("nombre",)
    list_filter = ("emision", "genero",)
    date_hierarchy = ("fecha_salida")

class EpisodioAdmin(admin.ModelAdmin):
    list_display = ("nombre","serie")
    list_display_links = list_display
    search_fields = list_display

class PuntuacionAdmin(admin.ModelAdmin):
    list_display = ("usuario","serie", "puntuacion")
    list_display_links = list_display
    search_fields = ("usuario","serie")
    list_filter = ("puntuacion",)

admin.site.register(Genero)
admin.site.register(Serie, SerieAdmin)
admin.site.register(Episodio, EpisodioAdmin)
admin.site.register(Puntuacion, PuntuacionAdmin)