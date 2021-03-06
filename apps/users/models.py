from django.contrib.auth.models import (AbstractBaseUser, BaseUserManager,
                                        PermissionsMixin)
from django.db import models
from simple_history.models import HistoricalRecords

def user_directory_path(instance, filename):
    # file will be uploaded to MEDIA_ROOT/user_<id>/<filename>
    return 'perfil/user_{0}/{1}'.format(instance.id, filename)

class UserManager(BaseUserManager):
    def _create_user(self, username, email, first_name,last_name, password, is_staff, is_superuser, **extra_fields):
        user = self.model(
            username = username,
            email = email,
            first_name = first_name,
            last_name = last_name,
            is_staff = is_staff,
            is_superuser = is_superuser,
            **extra_fields
        )
        user.set_password(password)
        user.save(using=self.db)
        return user

    def create_user(self, username, email, first_name,last_name, password=None, **extra_fields):
        return self._create_user(username, email, first_name,last_name, password, False, False, **extra_fields)

    def create_superuser(self, username, email, first_name,last_name, password=None, **extra_fields):
        return self._create_user(username, email, first_name,last_name, password, True, True, **extra_fields)

class User(AbstractBaseUser, PermissionsMixin):
    username = models.CharField('Nomre de usuario', max_length = 255, unique = True)
    email = models.EmailField('Correo Electrónico',max_length = 255, unique = True,)
    first_name = models.CharField('Nombres', max_length = 255, blank = True, null = True)
    last_name = models.CharField('Apellidos', max_length = 255, blank = True, null = True)
    image = models.ImageField('Imagen de perfil', upload_to=user_directory_path, max_length=255, null=True, blank = True)
    is_active = models.BooleanField('Está activo', default = True)
    is_staff = models.BooleanField('Es administrativo', default = False)
    historical = HistoricalRecords()
    objects = UserManager()

    class Meta:
        verbose_name = 'Usuario'
        verbose_name_plural = 'Usuarios'

    USERNAME_FIELD = 'username'
    REQUIRED_FIELDS = ['email','first_name','last_name']

    def natural_key(self):
        return (self.username)

    def __str__(self):
        return f'{self.first_name} {self.last_name}'
    

