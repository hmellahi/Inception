FROM   debian:buster
COPY setup.sh .
COPY wp.sql .
COPY 50-server.cnf etc/mysql/mariadb.conf.d/50-server.cnf
COPY start.sh .
RUN sh setup.sh
CMD sh start.sh
