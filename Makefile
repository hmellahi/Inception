
SRC = ./srcs/docker-compose.yml 

all :
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
	 docker container exec -it  srcs_wordpress_1 bash
run_ng:
	 docker container exec -it  srcs_nginx_1 bash
run_db:
	 docker container exec -it  srcs_db_1 bash
run_pm:
	 docker container exec -it  phpmyadmin bash