Wordpress:

Objetivo del Docker-compose:

Con este archivo vamos a desplegar dos dockers :
-  En uno vamos a tener la base de datos(Mysql) con una base de datos, usuario y contraseñas nuevas, que escucha por el puerto 3316 de la máquina real.
-  En otro vamos a tener Wordpress con Apache(Servidor Web), el cual tendremos vinculado a la base de datos a través del puerto,usuario y contraseña.Este docker escuchara por el puerto 8000 de la máquina real.
El objetivo es que a través del WordPress tengamos acceso a la base de datos.

