FROM   debian:buster

RUN apt update  -y 
RUN  apt upgrade -y 
RUN apt install wget -y
RUN wget https://www.phpmyadmin.net/downloads/phpMyAdmin-latest-all-languages.tar.gz 
RUN tar -xvf phpMyAdmin-latest-all-languages.tar.gz 
RUN rm -rf phpMyAdmin-latest-all-languages.tar.gz 
RUN mkdir  /usr/share/phpmyadmin
RUN mv phpMyAdmin-5.1.0-all-languages/* /usr/share/phpmyadmin
RUN chown -R www-data:www-data /usr/share/phpmyadmin 
COPY config.inc.php /usr/share/phpmyadmin/config.inc.php
CMD ["tail", "-f"]