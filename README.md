# LAMP+OpenLDAP Dev Docker

This is simple PHP and OpenLDAP application environment with Docker and Docker Compose.

- PHP: 7.3
- Apache: 2.4
- MariaDB: 10.4
- OpenLDAP: latest
- Tools
  - MailCatcher
  - Adminer
  - phpLDAPadmin

## Getting Started

1. `git clone https://github.com/ko31/lamp-dev-docker.git <my-project-name>`
1. `cd <my-project-name>`
1. `docker-compose up -d`
1. Visit website in your browser `http://localhost:8000`

## Usage

Create containers.

`docker-compose up -d`

Start containers.

`docker-compose start`

Stop containers.

`docker-compose stop`

Shutdown containers.

`docker-compose down`

Shutdown and cleanup containers.

`docker-compose down -v`

## Tools

### MailCatcher

`http://localhost:1080`

### Adminer

`http://localhost:8080`

### phpLDAPadmin

`http://localhost:8888`

By default, the Login DN is `cn=admin,dc=example,dc=com` and the Password is `password`.

## Shell commands

SSH into PHP container.

`./bin/shell.sh`

Backup database dump to `backup.sql`.

`./bin/backup_db.sh`

Restore database dump from `backup.sql`.

`./bin/restore_db.sh`
