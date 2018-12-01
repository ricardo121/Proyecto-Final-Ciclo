#Imagen que vamos a utilizar para crear el servicio
FROM mysql:5.7

#Para ejecutar comandos dentro del docker (Run comando)
Run apt-get update
Run apt-get -y install nano
#
#COPY init.sh /entrypoint.sh
#
#RUN chmod 777 /entrypoint.sh



#Variables de entorno

#Indicamos que el contenedor va a escuchar por el puerto 80 y 6082
EXPOSE 3606


#Especifica el comando que se ejecuta cuando se lanza el contenedor(en este cas$
CMD ["mysqld"]
