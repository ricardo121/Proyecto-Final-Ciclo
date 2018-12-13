Mysql:

Objetivo del Docker-compose:

Con este archivo vamos a desplegar dos dockers :
-  En uno vamos a tener un Mysql (Maestro) con una base de datos, usuario y contraseñas nuevas, que escucha por el puerto 3319 de la máquina real, también va a tener una ip  (172.40.1.2) .
-  En otro vamos a tener un Mysql (Esclavo)  con una base de datos, usuario y contraseñas nuevas, que escucha por el puerto  3318 de la máquina real, también va a tener una ip  (172.40.1.3).
 Al ejecutar el archivo se crea una red(...._default) en la cual vamos a utilizar una subred(172.40.0.0/16) para los dos dockers.
El objetivo es que Mysql(Maestro) al hacer cualquier cambio sobre la base de datos replicada(maestro) que esos cambios se efectúen en la base de datos del esclavo y maestro.

