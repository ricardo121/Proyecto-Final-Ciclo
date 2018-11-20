#Imagen que vamos a utilizar para crear el servicio
FROM ubuntu:latest

#Para ejecutar comandos dentro del docker
Run apt-get update
Run apt-get -y install squid3
Run apt-get -y install apache2-utils

#Para copiar archivos de la maquina real a la maquina docker
Copy squid.conf /
#
Run chmod 777 /squid.conf
Run cp /squid.conf /etc/squid/squid.conf
#Para copiar archivos de la maquina real a la maquina docker
Copy nowebs /etc/squid/
#
Run chmod 777 /etc/squid/nowebs
#Para copiar archivos de la maquina real a la maquina docker
Copy nopermitidas /etc/squid/
#
Run chmod 777 /etc/squid/nopermitidas
#
Run htpasswd -b -c /etc/squid/claves ricardo ricardo

#Indicamos que el contenedor va a escuchar por el puerto 3128
EXPOSE 3128

#Especifica el comando que se ejecuta cuando se lanza el contenedor
ENTRYPOINT ["/usr/sbin/squid3"]
#Especifica el comando que se ejecuta cuando se lanza el contenedor(en este caso que acompaña a ENTRYPOINT sirve para especificar los valores  predeterminados que se pueden invalidar con la opcion -d de docker run)

CMD ["-NYCd1"]

