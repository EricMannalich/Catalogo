from django.contrib import admin

from apps.principal.models import *

# Register your models here.
class SerieAdmin(admin.ModelAdmin):
    fieldsets = (
        ('Control', {
            'fields' : ('state','emision','fecha_salida',)
        }),
        ('Identidad', {
            'fields' : ('nombre','sinopsis','image',),
        }),('Grupos', {
            'fields' : ('categoria','genero',),
            'description' : 'Grupos en común',
        }),('Recomendación', {
            'fields' : ('promedio_puntuaciones',),
            'description' : 'Datos calculados de la interacción con los usuarios',
            'classes' : ('collapse',),
        }),
    )
    list_display = ("nombre","emision", "fecha_salida", "promedio_puntuaciones", "categoria")
    list_display_links = list_display
    search_fields = ("nombre", "sinopsis",)
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
admin.site.register(Categoria)
admin.site.register(Serie, SerieAdmin)
admin.site.register(Episodio, EpisodioAdmin)
admin.site.register(Puntuacion, PuntuacionAdmin)