Varnish:

Objetivo del Docker-compose:

Con este archivo vamos a desplegar tres dockers :
-  En uno vamos a tener un Proxy Inverso (Varnish) que escucha por el puerto 6082 y 8006 de la máquina real, también va a tener una ip  (172.33.0.4) .
-  En otro vamos a tener un Apache (Servidor Web Principal) que escucha por el puerto  8002 de la máquina real, también va a tener una ip  (172.33.0.2).
 - En otro vamos a tener un Apache (Servidor Web Secundario) que escucha por el puerto  8002 de la máquina real, también va a tener una ip  (172.33.0.3) .
 Al ejecutar el archivo se crea una red(...._default) en la cual vamos a utilizar una subred(172.33.0.0/16) para los tres dockers.

El objetivo es que el Varnish se despliegue y haga de caché de los Servidores Web y también de balanceador de carga por si hubiese un problema con servidor web principal pues que el servidor web secundario lo reemplace y haci tener mayor disponibilidad.

