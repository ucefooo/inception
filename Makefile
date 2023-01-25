
all: up

clean: down

fclean: downAll

re: fclean all

up:
	docker-compose -f ./srcs/docker-compose.yml up -d --build 

down: 
	docker-compose -f ./srcs/docker-compose.yml down


downAll: down
	docker volume rm -f $$(docker volume ls -q)

wordpress:
	docker exec -it wordpress bash

nginx:
	docker exec -it nginx bash

mariadb:
	docker exec -it mariadb bash

redis:
	docker exec -it redis bash

ctop:
	docker exec -it ctop ctop

adminer:
	docker exec -it adminer bash

cleanAll:
	docker rm -f $$(docker ps -qa)
	docker rmi $$(docker images -qa)
	docker volume rm -f $$(docker volume ls -q)
