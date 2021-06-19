export PATH=$PATH:/goinfre/hmellahi/.brew/bin/
docker-machine start hmellahi.42.fr
eval $(docker-machine env hmellahi.42.fr)
docker-compose -f "srcs/docker-compose.yml" up -d --remove-orphans