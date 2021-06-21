FROM   debian:buster

COPY tools/setup.sh .
COPY tools/config.inc.php .

RUN  apt update  -y
RUN  apt upgrade -y

CMD sh setup.sh