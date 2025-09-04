COMPOSE_PATH = srcs/docker-compose.yml

all: build

build:
	@ docker compose -f $(COMPOSE_PATH) build
run:
	@ docker compose -f $(COMPOSE_PATH) up

clean:
	@ docker compose -f $(COMPOSE_PATH) down -v 
	@ docker rmi -f `docker images -aq`

fclean:
	@ docker system prune -f