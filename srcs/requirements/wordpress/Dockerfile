FROM   debian:buster

WORKDIR /var/www/

COPY setup.sh .
COPY start.sh .
COPY wordpress wp

RUN  apt -y  update
RUN  sh setup.sh
RUN apt -y install php-fpm

COPY php-fpm.conf /etc/php/7.3/fpm/php-fpm.conf
COPY www.conf  /etc/php/7.3/fpm/pool.d/www.conf

CMD [ "sh", "start.sh" ]