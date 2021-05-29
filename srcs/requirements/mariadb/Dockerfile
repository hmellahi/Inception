FROM   debian:buster

COPY setup.sh .

RUN  sh setup.sh
RUN apt install -y ufw iptables
RUN apt install -y 
COPY 50-server.cnf etc/mysql/mariadb.conf.d/50-server.cnf
RUN  ufw allow 3306
COPY s.sh .
COPY wp.sql .
RUN sh s.sh

CMD ["mysqld", "--console"]
# ENTRYPOINT [ "sh", "s.sh"]
