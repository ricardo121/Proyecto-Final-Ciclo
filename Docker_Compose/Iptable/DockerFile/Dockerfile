
From ubuntu:latest

EXPOSE 80

Run apt-get update

Run apt-get -y install apache2

Run apt-get -y install iptables

Run apt-get -y install apache2-utils

#Copy router.sh /

#RUN chmod 777 /router.sh
#RUN chmod 777 /proc/sys/net/ipv4/ip_forward
#Run echo "1" > /proc/sys/net/ipv4/ip_forward

#Run sudo iptables -A FORWARD -j ACCEPT
#RUn sudo iptables -t nat -A POSTROUTING -s 172.18.0.0/8 -o eth0 -j MASQUERADE 

#Run ./router.sh

ENTRYPOINT ["apache2ctl"]

CMD ["-DFOREGROUND"]

