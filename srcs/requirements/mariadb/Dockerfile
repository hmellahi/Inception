FROM   debian:buster

COPY setup.sh .
COPY wp.sql .

RUN sh setup.sh
COPY 50-server.cnf etc/mysql/mariadb.conf.d/50-server.cnf
# COPY s2.sh .
COPY ss.sh .
# RUN sh ss.sh
# PRESISTANCE
# CMD ["mysqld", "--console"]
# ENTRYPOINT [ "sh", "s.sh"]
CMD sh ss.sh
