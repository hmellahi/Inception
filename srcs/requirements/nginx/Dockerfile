FROM   debian:buster

COPY tools/setup.sh .

RUN  sh setup.sh

COPY  conf etc/nginx/sites-available/default
COPY  tools/nginx-selfsigned.key  /etc/ssl/private/
COPY  tools/nginx-selfsigned.crt  /etc/ssl/certs/

RUN  chmod 700 /etc/ssl/private
RUN echo "127.0.0.1 hmellahi.42.fr" > /etc/hosts

CMD ["nginx", "-g", "daemon off;"]