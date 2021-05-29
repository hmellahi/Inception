FROM   debian:buster
WORKDIR /var/www/
RUN apt -y  update
RUN apt install -y php-curl php-gd php-mbstring php-xml php-xmlrpc php-soap php-intl php-zip
RUN apt -y install php-fpm
RUN apt -y install curl
COPY setup.sh .
RUN mkdir wordpress
COPY wordpress/ wordpress
RUN  sh setup.sh
COPY www.conf  /etc/php/7.3/fpm/pool.d/www.conf
COPY php-fpm.conf /etc/php/7.3/fpm/php-fpm.conf
#RUN ls -n /run/php/php7.3-fpm.sock /var/www/wordpress/php7.3-fpm.sock
# ENTRYPOINT ["php7.3"]
CMD ["tail", "-f"]
# ENTRYPOINT [ "service", "php7.3-fpm" ,"start" ]
# chown www-data:www-data /var/www/adminer/adminer
# chmod -R 755  /var/www/adminer/adminer
# chown www-data:www-data /usr/share/adminer/adminer
# chmod -R 755  /usr/share/adminer/adminer  
#service php7.3-fpm start