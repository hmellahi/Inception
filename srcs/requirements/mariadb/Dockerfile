FROM   debian:buster

COPY tools/setup.sh .
COPY tools/wp.sql .

RUN sh setup.sh

COPY tools/start.sh .
COPY conf etc/mysql/mariadb.conf.d/50-server.cnf

CMD sh start.sh