DOCKER_COMPOSE = docker-compose

down:
	$(DOCKER_COMPOSE) down --remove-orphans

build: down
	$(DOCKER_COMPOSE) build --pull

start: build
	$(DOCKER_COMPOSE) up -d

show-initial-password:
	$(DOCKER_COMPOSE) exec jenkins cat /var/jenkins_home/secrets/initialAdminPassword

start-production: down
	$(DOCKER_COMPOSE) -f docker-compose.yml -f docker-compose.prod.yml up -d --build
