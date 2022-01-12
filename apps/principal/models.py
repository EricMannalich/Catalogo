from django.db import models

from apps.base.models import BaseModel
from apps.users.models import User
# Create your models here.
PUNTUACION = (
        ('0', 'Ninguno'),
        ('1', 'Muy Baja'),
        ('2', 'Baja'),
        ('3', 'Media'),
        ('4', 'Alta'),
        ('5', 'Muy Alta')
        )
    

class Genero(BaseModel):
    nombre = models.CharField(max_length=25, unique=True)
    
    class Meta:
        verbose_name = 'Género'
        verbose_name_plural = 'Géneros'
        ordering = ('nombre',)

    def __str__(self):
        return self.nombre

class Categoria(BaseModel):
    nombre = models.CharField(max_length=25, unique=True)
    
    class Meta:
        verbose_name = 'Categoría'
        verbose_name_plural = 'Categorías'
        ordering = ('nombre',)

    def __str__(self):
        return self.nombre

class Serie(BaseModel):
    nombre = models.CharField(max_length=255, unique=True,db_index=True)
    genero = models.ManyToManyField(Genero)
    sinopsis = models.TextField(blank=True, null=True, db_index=True)
    emision = models.BooleanField(verbose_name="Está saliendo?")
    fecha_salida = models.DateField(blank=True, null=True)
    image = models.ImageField('Imagen de portada', upload_to='portada/%Y/%m/%d/', max_length=255, null=True, blank = True)
    promedio_puntuaciones = models.DecimalField(max_digits=2, decimal_places=1, default = 0)
    categoria = models.ForeignKey(Categoria, on_delete=models.CASCADE,db_index=True, blank=True, null=True)

    class Meta:
        verbose_name = 'Serie'
        verbose_name_plural = 'Series'
        ordering = ('nombre',)

    def __str__(self):
        return self.nombre

class Episodio(BaseModel):
    nombre = models.CharField(max_length=255)
    serie = models.ForeignKey(Serie, on_delete=models.CASCADE,db_index=True)
    link = models.URLField(blank=True, null=True)
    
    class Meta:
        verbose_name = 'Episodio'
        verbose_name_plural = 'Episodios'

    def __str__(self):
        return self.nombre

class Puntuacion(BaseModel):
    usuario = models.ForeignKey(User, on_delete=models.CASCADE)
    serie = models.ForeignKey(Serie, on_delete=models.CASCADE)
    puntuacion = models.CharField(max_length=1, choices=PUNTUACION, default = '0')

    class Meta:
        verbose_name = 'Puntuación'
        verbose_name_plural = 'Puntuaciones'

    def __str__(self):
        return '%s %s %s' % (self.usuario, self.serie, self.puntuacion)

    def save(self, *args, **kwargs):
        #Borrar puntuacion anterior
        old_puntuacion = Puntuacion.objects.filter(usuario = self.usuario, serie = self.serie).first()
        if old_puntuacion:
            old_puntuacion.delete()
        salida = super(Puntuacion, self).save(*args, **kwargs)
        #Guardar el prommedio de las puntuaciones de la serie
        puntuaciones = Puntuacion.objects.filter(serie = self.serie)
        #print(puntuaciones)
        suma_puntuaciones = 0
        for puntuacion in puntuaciones:
            suma_puntuaciones = suma_puntuaciones + int(puntuacion.puntuacion)
        puntuaciones_cont = puntuaciones.count()
        if puntuaciones_cont > 0:
            promedio_puntuaciones = suma_puntuaciones/puntuaciones_cont
        else:
            promedio_puntuaciones = 0
        serie = Serie.objects.filter(id = self.serie.id).first()
        #print(promedio_puntuaciones)
        serie.promedio_puntuaciones = promedio_puntuaciones
        #print(serie)
        serie.save()
        return salida
        #return super(Puntuacion, self).save(*args, **kwargs)# llamada al save() original con sus parámetros correspondientes