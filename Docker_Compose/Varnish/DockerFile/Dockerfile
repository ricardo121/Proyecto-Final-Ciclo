FROM ubuntu:latest

Run apt-get update

Run apt-get -y install varnish

# init
COPY init.sh /init.sh

RUN chmod 777 /init.sh

RUN rm -r /etc/varnish/default.vcl

COPY default.vcl /etc/varnish/

RUN chmod 777 /etc/varnish/default.vcl


ENV VARNISH_CONFIG /etc/varnish/default.vcl
ENV VARNISH_STORAGE malloc,100m
ENV VARNISH_LISTEN :80
ENV VARNISH_MANAGEMENT_LISTEN localhost:6082

EXPOSE 80
EXPOSE 6082
EXPOSE 6081

CMD ["/init.sh"]
