From debian:latest

EXPOSE 80

Run apt-get update

Run apt-get -y install apache2

Run apt-get -y install apache2-utils

ENTRYPOINT ["apache2ctl"]

CMD ["-DFOREGROUND"]
