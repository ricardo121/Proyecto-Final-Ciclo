#Imagen que vamos a utilizar para crear el servicio
From ubuntu:latest

#Para ejecutar comandos dentro del docker (Run comando)
Run apt-get update

Run apt-get -y install apache2

Run apt-get -y install apache2-utils

Run apt-get -y install iptables

#Error de permisos(Habilitar router)
#Run echo 1 > /proc/sys/net/ipv4/ip_forward

#Error de permisos(Reglas para iptables)

#Run iptables -L
#Run iptables -A FORWARD -j ACCEPT
#RUn iptables -t nat -A POSTROUTING -s 172.50.0.0/16 -o eth0 -j MASQUERADE


#Indicamos que el contenedor va a escuchar por el puerto 80
EXPOSE 80


#Especifica el comando que se ejecuta cuando se lanza el contenedor

ENTRYPOINT ["/usr/sbin/iptables-apply"]

