from django.contrib.auth import authenticate
from rest_framework import status
from rest_framework import viewsets
from rest_framework.generics import GenericAPIView
from rest_framework.response import Response
from rest_framework_simplejwt.tokens import RefreshToken
from rest_framework_simplejwt.views import TokenObtainPairView

from apps.users.api.serializers import *
from apps.users.models import User

class UserViewSet(viewsets.GenericViewSet):
    serializer_class = UserSerializer
    list_serializer_class =  UserListSerializer
    queryset = None

    def get_object(self, pk):
        return self.serializer_class().Meta.model.objects.filter(id = pk).first()
        

    def get_queryset(self):
        if self.queryset is None:
            return self.serializer_class().Meta.model.objects.filter(is_active = True).values('id','username','email','name', 'image')
        return self.queryset

    def list(self, request):
        users = self.get_queryset()
        users_serializer = self.list_serializer_class(users, many = True)
        return Response(users_serializer.data,status = status.HTTP_200_OK)

    def create(self, request):
        user_serializer = self.serializer_class(data = request.data)
        if user_serializer.is_valid():
            user_serializer.save()
            return Response({'message':'Usuario creado correctamente!'},status = status.HTTP_201_CREATED)
        return Response({'message':'Usuario creado correctamente!', 'error':user_serializer.errors},status = status.HTTP_400_BAD_REQUEST)

    def retrieve(self, request, pk = None):
        user = self.get_object(pk)
        if user:
            user_serializer = self.serializer_class(user)
            return Response(user_serializer.data, status = status.HTTP_200_OK)
        return Response({'message':'No se ha encontrado un usuario con estos datos'},status = status.HTTP_400_BAD_REQUEST)

    def update(self, request, pk = None):
        user = self.get_object(pk)
        if user:
            user_serializer = UserUpdateSerializer(user, data = request.data)
            if user_serializer.is_valid():
                user_serializer.save()
                return Response(user_serializer.data,status = status.HTTP_200_OK)
            return Response(user_serializer.errors,status = status.HTTP_400_BAD_REQUEST)
        return Response({'message':'No se ha encontrado un usuario con estos datos'},status = status.HTTP_400_BAD_REQUEST)

    def destroy(self, request, pk = None):
        user = self.get_object(pk)
        if user:
            user_destroy = user.update(is_active = False)
            if user_destroy == 1:
                return Response({'message':'Usuario Eliminado correctamente!'},status = status.HTTP_200_OK)
            return Response({'message':'No se ha podido eliminar el usuario'},status = status.HTTP_400_BAD_REQUEST)
        return Response({'message':'No se ha encontrado un usuario con estos datos'},status = status.HTTP_400_BAD_REQUEST)


class Login(TokenObtainPairView):
    serializer_class = CustomTokenObtainPairSerializer

    def post(self, request, *args, **kwargs):
        username = request.data.get('username', '')
        password = request.data.get('password', '')
        user = authenticate(
            username = username,
            password = password
        )

        if user:
            login_serializer = self.serializer_class(data = request.data)
            if login_serializer.is_valid():
                user_serializer = CustomUserSerializer(user)
                return Response({
                    'access': login_serializer.validated_data.get('access'),
                    'refresh': login_serializer.validated_data.get('refresh'),
                    'user': user_serializer.data,
                    'message': 'Inicio de sesion exitoso'
                }, status=status.HTTP_200_OK)
        return Response({'error': 'Usuario o contraseña incorrectos'}, status=status.HTTP_400_BAD_REQUEST)

class Logout(GenericAPIView):
    def post(self, request, *args, **kwargs):
        user = User.objects.filter(id = request.user.id)
        if user.exists():
            RefreshToken.for_user(user.first())
            return Response({'message': 'Sesion cerrada correctamente'}, status=status.HTTP_200_OK)
        return Response({'error': 'Este usuario no existe'}, status=status.HTTP_400_BAD_REQUEST)

