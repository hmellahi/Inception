
SRC = ./srcs/docker-compose.yml

all: setup

setup :
	sudo docker-compose -f ${SRC} build
	sudo docker-compose -f ${SRC} up -d

start:
	docker-compose -f ${SRC} start

down:
	sudo docker-compose -f ${SRC} down

clean :
	docker rmi $(docker images -a -q)

ps:
	docker-compose -f  ${SRC} ps

run_wp:
	sudo docker-compose -f  ${SRC} run wordpress bash

run_ng:
	sudo docker-compose -f  ${SRC} run nginx bash
