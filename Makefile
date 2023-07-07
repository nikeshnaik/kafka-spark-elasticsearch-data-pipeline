kafka-whirl-up:
	docker-compose -f ./kafka_io/docker_compose.yml up -d --remove-orphans

kafka-wind-down:
	docker-compose -f ./kafka_io/docker_compose.yml down 

spark-whirl-up:
	docker-compose -f ./spark/docker-compose.yml up -d --remove-orphans

spark-wind-down:
	docker-compose -f ./spark/docker-compose.yml down

elasticsearch-whirl-up:			
	docker-compose -f ./elasticsearch/docker_compose.yml up -d --remove-orphans

elasticsearch-wind-down:
	docker-compose -f ./elasticsearch/docker_compose.yml down

setup-local-infra: kafka-whirl-up spark-whirl-up elasticsearch-whirl-up

tear-down-local-infra: kafka-wind-down spark-wind-down elasticsearch-wind-down

