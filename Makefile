down:
	docker-compose down --remove-orphans

build: down
	docker-compose build --pull

start: build
	docker-compose up -d

show-initial-password:
	docker-compose exec jenkins cat /var/jenkins_home/secrets/initialAdminPassword
