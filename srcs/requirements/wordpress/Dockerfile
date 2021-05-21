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

# ENTRYPOINT [ "service", "php7.3-fpm" ,"start" ]

