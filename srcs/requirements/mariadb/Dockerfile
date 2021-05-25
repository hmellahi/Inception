FROM   debian:buster

COPY setup.sh .

RUN  sh setup.sh
EXPOSE 3306
COPY 50-server.cnf etc/mysql/mariadb.conf.d/50-server.cnf
RUN apt install -y ufw iptables
RUN apt install -y sudo
RUN sudo ufw allow 3306
RUN service mysql start
# CMD bash
CMD ["mysqld", "--console"]
# ENTRYPOINT [ "sh", "s.sh"]