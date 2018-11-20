#Imagen que vamos a utilizar para crear el servicio
FROM ubuntu:latest

#Para ejecutar comandos dentro del docker (Run comando)
Run apt-get update
Run apt-get -y install varnish

#Para copiar archivos de la maquina real a la maquina docker
COPY init.sh /init.sh
#
RUN chmod 777 /init.sh
#
RUN rm -r /etc/varnish/default.vcl
#
COPY default.vcl /etc/varnish/
#
RUN chmod 777 /etc/varnish/default.vcl

#Variables de entorno
ENV VARNISH_CONFIG /etc/varnish/default.vcl
ENV VARNISH_STORAGE malloc,100m
ENV VARNISH_LISTEN :80
ENV VARNISH_MANAGEMENT_LISTEN localhost:6082

#Indicamos que el contenedor va a escuchar por el puerto 80 y 6082
EXPOSE 80
EXPOSE 6082

#Especifica el comando que se ejecuta cuando se lanza el contenedor(en este caso un script)
CMD ["/init.sh"]
