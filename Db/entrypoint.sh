#!/bin/bash


# initialisation
#


service mysql start

mysql -p root -u

# Create the database

mysql < /tmp/db_schema.sql

# start db

set -e

set -x

# RUN

/usr/sbin/mysqld
