FROM   debian:buster

COPY setup.sh .

RUN  sh setup.sh

COPY default etc/nginx/sites-available/default
COPY  nginx-selfsigned.key  /etc/ssl/private/
COPY  nginx-selfsigned.crt  /etc/ssl/certs/

RUN  chmod 700 /etc/ssl/private
RUN echo "127.0.0.1 hmellahi.42.fr" > /etc/hosts

CMD ["nginx", "-g", "daemon off;"]