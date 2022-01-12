# Catalogo

#PAsos para ejjecutar en modo desarrollo:
1-Necesitan Postres 13 y Python 3.9-3.10
2-Instalar las dependencias de Python  del archivo requirements.txt
3-Crear una BD en postgres con los parámetros:
  POSTGRES_BD = "Media"
  POSTGRES_USER = "postgres"
  POSTGRES_PASSWORD = "1qazxsw2"
  POSTGRES_HOST ="127.0.0.1"
4-Restauran la BD con la salva que está en bd_backup
5-Abren CMD en donde está el archivo manage.py y ponen el comando:
  python manage.py runserver
6-Ya pueden entrar a la página, utilicen las credenciales:
	Usuario: Admin
	Contraseña: admin
7-Pueden entrar al panel de administración y crearse su propio usuario o utilizar el comando:
  python manage.py createsuperuser

#PAsos para ejjecutar en modo despliegue:
1-Instalar DOCKER
2-Ejecutar DOCKER
3-Instalar las imagenes de DOCKER:
  docker pull python:3.9.5
  docker pull postgres:13.3
  docker pull nginx:1.20.0
3.1-Abren CMD en donde está el archivo Dockerfile y ponen el comando: docker build --force-rm -t media:0.2 .
#En caso de que ya tengan las imagenes guardadas localmente sustituyan el paso 3-3.1, por el 3.5
3.5-Cargar las imagenes de docker con los siguientes comandos:
  docker load -i core-0.2.tar
  docker load -i postgres-13.3.tar
  docker load -i nginx-1.20.0.tar
5-Instalar el pgadmin4
6-Abrir el archivo local.conf en la ruta .\core\config\nginx\conf.d y comentar desde la linea 10 hasta la 33
6.1-Abrir el archivo conf.py en la ruta .\core\config\gunicorn\conf.d y comentar desde la linea 11 hasta la 12
7-Mandar a crear el contenedor (parado donde está el archivo docker-compose.yml) con el comando:
  docker-compose up
9-Ejecutar los siguientes comandos:
	docker exec -it nginx-media bash
	openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/ssl/private/nginx-selfsigned.key -out /etc/ssl/certs/nginx-selfsigned.crt
	(Seguir las indicaciones del comando anterior)
	openssl dhparam -out /etc/ssl/certs/dhparam.pem 2048
9.1-Ejecutar los siguientes comandos:
	docker exec -it django-media bash
	openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/ssl/private/nginx-selfsigned.key -out /etc/ssl/certs/nginx-selfsigned.crt
	(Seguir las indicaciones del comando anterior)
	openssl dhparam -out /etc/ssl/certs/dhparam.pem 2048
10-Habrir el pgadmin4 y crea un nuevo server con los siguientes parametros:
	Name: (cualquiera)
	Host name: 127.0.0.1
	Port: 5433
	Manintenace database postgres
	Username postgres
	Password postgres
10-Accede al servidor anterior y crea una nueva BD llamada Media y carga la salva que está en bd_backup
11-Deten el contenedor core con los botones de la imterfaz. Descomentarea las lineas del paso 6-6.1
12-Ejecuta el contenedor core con los botones de la imterfaz. Espera a que el icono se ponga de color verde.
13-Accede por un navegador a 127.0.0.1, utiliza las credenciales:
	Usuario: Admin
	Contraseña: admin
