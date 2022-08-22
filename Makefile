.PHONY: run run-build api-prompt admin-prompt db-prompt

API_COMMIT = $(shell git submodule status api | awk '{ print $$1 }')
ADMIN_COMMIT = $(shell git submodule status admin | awk '{ print $$1 }')

build:
	API_COMMIT="${API_COMMIT}" ADMIN_COMMIT="${ADMIN_COMMIT}" docker-compose build

run:
	docker-compose up

api-prompt:
	docker-compose exec api bash

admin-prompt:
	docker-compose exec admin bash

db-prompt:
	docker-compose exec -u postgres db psql notification_api
