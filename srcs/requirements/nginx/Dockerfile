FROM   debian:buster

COPY setup.sh .

RUN  sh setup.sh

COPY default etc/nginx/sites-available/default
COPY  nginx-selfsigned.key  /etc/ssl/private/
COPY  nginx-selfsigned.crt  /etc/ssl/certs/
RUN  chmod 700 /etc/ssl/private
CMD ["nginx", "-g", "daemon off;"]