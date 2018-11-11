FROM ubuntu:latest

Run apt-get update

Run apt-get -y install squid3

Run apt-get -y install apache2-utils



Copy squid.conf /

Run chmod 777 /squid.conf

Run cp /squid.conf /etc/squid/squid.conf

Copy nowebs /etc/squid/

Run chmod 777 /etc/squid/nowebs

Copy nopermitidas /etc/squid/

Run chmod 777 /etc/squid/nopermitidas

Run htpasswd -b -c /etc/squid/claves ricardo ricardo


EXPOSE 3128

ENTRYPOINT ["/usr/sbin/squid3"]

CMD ["-NYCd1"]

