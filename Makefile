COMPOSE_PATH = srcs/docker-compose.yml

all: build

build:
	@ sudo docker compose -f $(COMPOSE_PATH) build
run:
	@ sudo docker compose -f $(COMPOSE_PATH) up

clean:
	@ sudo docker compose -f $(COMPOSE_PATH) down -v 
	@ sudo docker rmi -f `sudo docker images -aq`

fclean:
	@ sudo docker system prune -f