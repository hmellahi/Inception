
SRC = ./srcs/docker-compose.yml 
ARGS = #--env-file ./srcs/.env

all: setup

setup :
	# sudo docker container exec -it srcs_nginx_1 bash -c "kill 1"
	# sudo docker container exec -it srcs_db_1 bash -c "kill 1"
	# sudo docker container exec -it srcs_wordpress_1 bash -c "kill 1"
	sudo docker-compose -f ${SRC} build 
	sudo docker-compose ${ARGS} -f ${SRC} up -d --remove-orphans 
up :
	sudo docker-compose ${ARGS} -f ${SRC} up -d --remove-orphans 
start:
	docker-compose -f ${SRC} start

down:
	sudo docker-compose -f ${SRC} down

clean :
	docker rmi $(docker images -a -q)

ps:
	sudo docker-compose -f  ${SRC} ps

run_wp:
	#sudo docker-compose -f ${SRC} run wordpress bash
	sudo docker container exec -it  srcs_wordpress_1 bash
run_ng:
	#sudo docker-compose -f  ${SRC} run nginx bash
	sudo docker container exec -it  srcs_nginx_1 bash
run_db:
	# sudo docker-compose  --user hamza -f  ${SRC} run db bash
	sudo docker container exec -it  srcs_db_1 bash
# sudo docker container ps
#sudo docker container exec -it  srcs_wordpress_1 bash
#sudo docker container exec -it  srcs_db_1 bash