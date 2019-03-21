#!/bin/bash

# Initialisation

service mysql start

mysql -u root -p

# Create the database

mysql < /tmp/db_schema.sql

# start db

set -e

set -x

# RUN

/usr/sbin/mysqld
~                     
