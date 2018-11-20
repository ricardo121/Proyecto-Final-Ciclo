#Imagen que vamos a utilizar para crear el servicio
From debian:latest

#Para ejecutar comandos dentro del docker (Run comando)
Run apt-get update
Run apt-get -y install apache2
Run apt-get -y install apache2-utils

#Para copiar archivos de la maquina real a la maquina docker
Copy index.html /var/www/html/
#
RUN chmod 777 /var/www/html/index.html

#Indicamos que el contenedor va a escuchar por el puerto 80
EXPOSE 80

#Especifica el comando que se ejecuta cuando se lanza el contenedor
ENTRYPOINT ["apache2ctl"]

#Especifica el comando que se ejecuta cuando se lanza el contenedor(en este caso que acompaña a ENTRYPOINT sirve para especificar los valores  predeterminados que se pueden invalidar con la opcion -d de docker run )
CMD ["-DFOREGROUND"]

