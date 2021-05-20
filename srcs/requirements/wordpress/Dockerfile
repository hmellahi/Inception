FROM   debian:buster

COPY setup.sh .

RUN  sh setup.sh

WORKDIR /var/www/

ADD wordpress/ wordpress/

RUN chown -R www-data:www-data /var/www/wordpress \
    find /var/www/wordpress/ -type d -exec chmod 750 {} \
    find /var/www/wordpress/ -type f -exec chmod 640 {} \
    cd /var/www/wordpress

