down:
	docker-compose down --remove-orphans

build: down
	docker-compose build --pull

start: build
	docker-compose up -dls

show-initial-password:
	docker-compose exec jenkins cat /var/jenkins_home/secrets/initialAdminPassword

start-production: down
	docker-compose -f docker-compose.yml -f docker-compose.prod.yml up -d --build
