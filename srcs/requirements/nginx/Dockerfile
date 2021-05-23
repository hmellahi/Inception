FROM   debian:buster

EXPOSE 80 443 3306

COPY setup.sh .

RUN  sh setup.sh

RUN  apt install -y nmap

COPY default etc/nginx/sites-available/default

CMD ["nginx", "-g", "daemon off;"]