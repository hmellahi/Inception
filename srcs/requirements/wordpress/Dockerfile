FROM   debian:buster

WORKDIR /var/www/

COPY tools/setup.sh .
RUN  sh setup.sh

COPY tools/start.sh .
COPY tools/wordpress wp

COPY tools/www.conf  /etc/php/7.3/fpm/pool.d/www.conf

CMD [ "sh", "start.sh" ]