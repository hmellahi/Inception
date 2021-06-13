
SRC = ./srcs/docker-compose.yml 

all :
	# docker-machine start
	eval $(docker-machine env)
	docker-compose -f ${SRC} build 
	docker-compose -f ${SRC} up -d --remove-orphans
up :
	 docker-compose -f ${SRC} up -d --remove-orphans 
start:
	docker-compose -f ${SRC} start
down:
	 docker-compose -f ${SRC} down
clean :
	docker rmi $(docker images -a -q)
ps:
	 docker-compose -f  ${SRC} ps
run_wp:
	 docker container exec -it  wordpress bash
run_ng:
	 docker container exec -it  nginx bash
run_db:
	 docker container exec -it  db bash
run_pm:
	 docker container exec -it  phpmyadmin bash