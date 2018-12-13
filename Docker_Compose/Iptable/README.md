Iptables:

Objetivo del Docker-compose:

El objetivo es que el docker Iptables haga de router y cree unas reglas para la red. Las máquinas Apache se conectaran al docker iptables por la gateway y estos tendrán las reglas creadas en docker iptables.
Este escenario no está concluido, ya que  al desplegarlo con “docker-compose up -d” no llega a iniciarse, entra en un bucle de reinicio infinito, el problema está en el dockerfile más concretamente en el ENTRYPOINT(El comando que se ejecuta cuando se inicia el contenedor). Hay otro problema que es el de permisos para hacer que el docker sea un router ”cambiar el 0 por un 1 en ip_forward” y tambien da problemas de permisos en la ejecución de las reglas de iptables dentro del dockerfile. Por falta de tiempo no se a podido resolver estos problemas

