From debian:latest

EXPOSE 80

Run apt-get update

Run apt-get -y install apache2

Run apt-get -y install apache2-utils

Run rm -r /var/www/html/index.html

Copy index.html /var/www/html/

RUN chmod 777 /var/www/html/index.html

ENTRYPOINT ["apache2ctl"]

CMD ["-DFOREGROUND"]
