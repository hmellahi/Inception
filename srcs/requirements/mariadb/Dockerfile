FROM   debian:buster

COPY setup.sh .
COPY wp.sql .
COPY start.sh .

RUN sh setup.sh

COPY 50-server.cnf etc/mysql/mariadb.conf.d/50-server.cnf

CMD sh start.sh
