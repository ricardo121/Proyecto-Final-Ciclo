
From ubuntu:latest

EXPOSE 80

Run apt-get update

Run apt-get -y install apache2

Run apt-get -y install apache2-utils

Run apt-get -y install iptables

User root
Run su root
#Run iptables -L
Run iptables -A FORWARD -j ACCEPT
RUn iptables -t nat -A POSTROUTING -s 172.18.0.0/8 -o eth0 -j MASQUERADE
RUN chmod 777 /proc/sys/net/ipv4/ip_forward


#CMD [/usr/sbin/iptables-apply]

#CMD [inicio]

ENTRYPOINT ["apache2ctl"]

CMD ["-DFOREGROUND"]

