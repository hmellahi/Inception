FROM   debian:buster

COPY setup.sh .
COPY mysql_installation .
COPY wp.sql .

RUN sh setup.sh
COPY 50-server.cnf etc/mysql/mariadb.conf.d/50-server.cnf
# COPY s2.sh .
# RUN expect -c "\
#     set timeout 10 \
#     spawn apt install -y mariadb-server \
#     expect \"*** 50-server.cnf (Y/I/N/O/D/Z) \[default=N\] ? \" \
#     send \"N\r\" \
#     expect eof \
#     "
COPY ss.sh .
# RUN sh ss.sh
# PRESISTANCE
# CMD ["mysqld", "--console"]
# ENTRYPOINT [ "sh", "s.sh"]
CMD sh ss.sh
