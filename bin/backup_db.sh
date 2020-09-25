#!/bin/bash

docker-compose exec mariadb /usr/bin/mysqldump -u root --password=password dev > backup.sql
