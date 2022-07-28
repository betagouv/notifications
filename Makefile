API_COMMIT = $(shell git submodule status api | awk '{ print $$1 }')
ADMIN_COMMIT = $(shell git submodule status admin | awk '{ print $$1 }')

.PHONY: run api-prompt admin-prompt

run:
	API_COMMIT="${API_COMMIT}" ADMIN_COMMIT="${ADMIN_COMMIT}" docker-compose up

api-prompt:
	docker-compose exec api bash

admin-prompt:
	docker-compose exec admin bash
