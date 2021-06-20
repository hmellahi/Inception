
SRC = ./srcs/docker-compose.yml 

all :
	sudo docker-compose -f ${SRC} build 
up :
	sudo docker-compose -f ${SRC} up -d --remove-orphans
start:
	docker-compose -f ${SRC} start
down:
	 docker-compose -f ${SRC} down
volumes :
	docker volume ls
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
run_ad:
	 docker container exec -it  adminer bash	
clean : down
	# sh clean.sh
	#docker volume rm $(docker volume ls -q)