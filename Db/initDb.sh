#!/bin/bash

# Initialisation

service mysql start

mysql -u root --password=mdp

# Create the database

mysql --password=mdp < /tmp/db_schema.sql

#mysql SELECT host FROM mysql.user WHERE User = 'root';

# start db

mysqladmin --password=mdp shutdown
