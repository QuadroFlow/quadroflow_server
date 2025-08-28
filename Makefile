ifneq (,$(wildcard ./.env))
    include .env
    export
endif

.PHONY: run runner runner_watch docker_compose upgrade

default: run

run:
	@echo "Running the application..."
	@fvm dart run ./bin/server.dart

runner:
	@echo "Running the build_runner..."
	@fvm dart run build_runner build -d

runner_watch:
	@echo "Running the build_runner in watch mode..."
	@fvm dart run build_runner watch -d

docker_compose:
	@echo "Running the docker-compose file..."
	@docker compose down
	@docker compose up -d

upgrade:
	@echo "Upgrading project dependencies..."
	@fvm dart pub upgrade
	@fvm dart pub upgrade --major-versions
