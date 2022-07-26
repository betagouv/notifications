API_COMMIT = $(shell git submodule status api | awk '{ print $$1 }')
ADMIN_COMMIT = $(shell git submodule status admin | awk '{ print $$1 }')

run:
	API_COMMIT="${API_COMMIT}" ADMIN_COMMIT="${ADMIN_COMMIT}" docker-compose up
