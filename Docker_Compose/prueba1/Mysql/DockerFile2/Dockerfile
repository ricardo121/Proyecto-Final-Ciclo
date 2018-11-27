#Imagen que vamos a utilizar para crear el servicio
FROM mysql:latest

#Para ejecutar comandos dentro del docker (Run comando)
Run apt-get update
Run apt-get -y install nano
#

#Variables de entorno

#Indicamos que el contenedor va a escuchar por el puerto 80 y 6082
EXPOSE 3606


Entrypoint ["docker-entrypoint.sh"]

#Especifica el comando que se ejecuta cuando se lanza el contenedor(en este cas$
CMD ["mysqld"]

