setup:
	@make build
	@make up
	@make composer-update

build:
	echo "Building Docker containers..."
	docker-compose build --no-cache --force-rm

stop:
	echo "Stopping Docker containers..."
	docker-compose stop

up:
	echo "Starting Docker containers..."
	docker-compose up -d

composer-update:
	docker exec laravel-docker bash -c "composer update"

data:
	docker exec laravel-docker bash -c "php artisan migrate"
	docker exec laravel-docker bash -c "php artisan db:seed"

setup-env:
	echo "Setting up environment file..."
	cp ./laravel-app/.env.example ./laravel-app/.env