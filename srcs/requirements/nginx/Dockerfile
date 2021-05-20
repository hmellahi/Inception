FROM   debian:buster

EXPOSE 80 443 3306

COPY setup.sh .

RUN  sh setup.sh

CMD ["nginx", "-g", "daemon off;"]