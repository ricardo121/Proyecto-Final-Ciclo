FROM debian:latest

Run apt-get update

Run apt-get -y install varnish

# init
COPY init.sh /init.sh

RUN chmod 777 /init.sh

ENV VARNISH_CONFIG /etc/varnish/default.vcl
ENV VARNISH_STORAGE malloc,100m
ENV VARNISH_LISTEN :80
ENV VARNISH_MANAGEMENT_LISTEN 127.0.0.1:6082

EXPOSE 80
EXPOSE 6082
EXPOSE 6081

CMD ["/init.sh"]
