FROM debian:latest

Run apt-get update

Run apt-get -y install squid3



EXPOSE 80
EXPOSE 3128

ENTRYPOINT ["/usr/sbin/squid", "-NYCd1"]
