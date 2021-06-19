FROM   debian:buster

COPY setup.sh .
COPY config.inc.php .

RUN  apt update  -y
RUN  apt upgrade -y

CMD sh setup.sh