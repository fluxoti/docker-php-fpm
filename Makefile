BUILD_NAME := 'local/php'

# bins
DOCKER := $(shell which docker)

all: build

build:
	${DOCKER} build -t ${BUILD_NAME}:latest   .

build-no-cache:
	${DOCKER} build --rm --no-cache -t ${BUILD_NAME}:latest   .	