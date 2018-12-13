Squid:

Objetivo del Docker-compose:

Con este archivo vamos a desplegar un docker :
-  Vamos a tener un Proxy Transparente (Squid) que escucha por el puerto 3128 de la máquina real, también va a tener una ip  (172.10.0.2) ya que al ejecutar el archivo se crea una red(...._default) en la cual vamos a utilizar una subred(172.10.0.0/16).
El objetivo es que el squid se despliegue con unas políticas sobre la red, las cuales en este caso son que el cliente al acceder a internet le pida un usuario y contraseña, que no tenga  acceso a páginas como youtube y facebook.


