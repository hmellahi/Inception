FROM   debian:buster

COPY tools/setup.sh .

RUN apt -y update
RUN apt -y upgrade

CMD sh setup.sh