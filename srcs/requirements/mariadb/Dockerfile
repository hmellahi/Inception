FROM   debian:buster

COPY setup.sh .

RUN  sh setup.sh
RUN apt install -y ufw iptables
RUN apt install -y sudo
COPY 50-server.cnf etc/mysql/mariadb.conf.d/50-server.cnf
RUN sudo ufw allow 3306
RUN service mysql stop
# RUN sh s.sh

# CMD ["mysqld", "--console"]
# ENTRYPOINT [ "sh", "s.sh"]
CMD ["tail", "-f"]
