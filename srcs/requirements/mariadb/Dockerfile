FROM   debian:buster

COPY setup.sh .
COPY 50-server.cnf etc/mysql/mariadb.conf.d/50-server.cnf
COPY wp.sql .

RUN sh setup.sh

# PRESISTANCE
CMD ["mysqld", "--console"]
# ENTRYPOINT [ "sh", "s.sh"]
