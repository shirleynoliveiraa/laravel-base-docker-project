# Laravel Base Docker Project
## Description
This repository contains a basic setup for a Laravel project using Docker. It includes configurations for PHP, Apache, MySQL, and Composer to get you started with a Laravel application in a Dockerized environment.

## Project Structure
- **Dockerfile:** Defines the Docker image for the Laravel application.
- **docker-compose.yml:** Configures the Docker services for the Laravel application and MySQL.
- **Makefile:** Provides convenient commands to manage the Docker containers and application setup.

## Requirements
Before you begin, make sure you have the following requirements installed:

- Docker Desktop

## Environment Setup
**1. Clone the Repository**
```
https://github.com/shirleynoliveiraa/laravel-base-docker-project.git
cd laravel-base-docker-project
```

**2. Install Make (if not already installed)**

For Debian-based systems (like Ubuntu), use:

```
sudo apt update
sudo apt install make
make --version
```

**3. Adjust Permissions:**
Ensure that the user has the necessary permissions:
```
whoami
sudo chown -R $(whoami):$(whoami) .
chmod -R u+rwx .
```

## Docker Commands
Use the Makefile to manage Docker containers and setup tasks.

- **Build Docker Containers:**
This command will build and start the containers and also update composer

```
make setup
```

- **Set up .env file**
This command will copy .env from .env.example file
```
make setup-env
```

Edit the .env file to configure the environment variables. The default setup uses MySQL for the project database:
```
APP_NAME=Laravel
APP_ENV=local
APP_KEY=base64:ty1r2zhA6PHmmwYap381uXumRq0+ByYOuPrtnmGwC9Y=
APP_DEBUG=true
APP_URL=http://localhost

DB_CONNECTION=mysql
DB_HOST=mysql_db
DB_PORT=3306
DB_DATABASE=laravel-docker
DB_USERNAME=root
DB_PASSWORD=root
```
