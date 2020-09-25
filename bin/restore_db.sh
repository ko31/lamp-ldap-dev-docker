#!/bin/bash

cat backup.sql | docker exec -i mariadb /usr/bin/mysql -u root --password=password dev
