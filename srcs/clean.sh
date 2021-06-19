# docker stop $(docker ps -qa);
# docker rm $(docker ps -qa)
# docker rmi -f $(docker images -qa)
#docker volume rm $(# docker stop $(docker ps -qa);
#docker rm $(docker ps -qa)
#docker rmi -f $(docker images -qa)
docker volume rm $(docker volume ls -q)
docker network rm $(docker network ls -q) 2>/dev/null
docker-machine ssh hmellahi.42.fr