FROM   debian:buster

COPY setup.sh .
# RUN sh setup.sh
RUN apt -y update
RUN apt -y upgrade 
RUN apt-get install -y wget adminer 
# RUN mkdir /usr/share/adminer
RUN wget "http://www.adminer.org/latest.php" -O /usr/share/adminer/latest.php
RUN chown www-data:www-data /usr/share/adminer
RUN chmod -R 755 /usr/share/adminer/
# RUN ln -s /usr/share/adminer/latest.php /usr/share/adminer/adminer.php
CMD ["tail", "-f"]
