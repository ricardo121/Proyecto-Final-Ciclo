#!/bin/bash
# -- UTF 8 --
iptables="/usr/sbin/iptables-apply"
LAN="eth0"
WIFI="wlan0"

echo ""

## Limpiar tablas ##
$iptables -F
$iptables -X
$iptables -Z
#echo " - FLUSH a iptables, correcto." && echo""

## Definir política DROP por defecto ##
$iptables -P INPUT DROP
$iptables -P FORWARD DROP
#echo " - Política DROP aplicada por defecto, correcto." && echo""

## Permitir todo a localhost ##
$iptables -A INPUT -i lo -j ACCEPT
#echo " - Permitido acceso total para localhost, correcto." && echo""

## Permitir entrar paquetes de conexiones que yo inicie ##
$iptables -A INPUT -m state --state ESTABLISHED,RELATED -j ACCEPT
#echo " - Permitidos paquetes de conexiones realizadas por mi equipo, correcto." && echo""

echo " ------- IPTABLES CORRECTAMENTE CONFIGURADO -------"
