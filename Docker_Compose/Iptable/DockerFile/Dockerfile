#Imagen que vamos a utilizar para crear el servicio
From ubuntu:latest

#Para ejecutar comandos dentro del docker (Run comando)
Run apt-get update

Run apt-get -y install apache2

Run apt-get -y install apache2-utils

Run apt-get -y install iptables

#Indicamos que el contenedor va a escuchar por el puerto 80
EXPOSE 80

# init
COPY inicio /inicio

RUN chmod 777 /inicio

#Copy inicio
#User root
#Run su root
#Run iptables -L
#Run iptables -A FORWARD -j ACCEPT
#RUn iptables -t nat -A POSTROUTING -s 172.18.0.0/8 -o eth0 -j MASQUERADE
#RUN chmod 777 /proc/sys/net/ipv4/ip_forward


#CMD [/usr/sbin/iptables-apply]

#CMD [inicio]

#ENTRYPOINT ["/usr/sbin/iptables-apply"]

#CMD ["-F"]

#Especifica el comando que se ejecuta cuando se lanza el contenedor
CMD ["/inicio"]

